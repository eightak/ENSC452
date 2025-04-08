#client.py

import socket
import sys
import os

import struct
import time
from datetime import datetime
import pytz
from weather import http_weather, weather_tts

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
ip_address = "192.168.1.10"
port_number = 7
s.connect((ip_address, port_number))

received = 0
weatherS = 'weather'
imageS = 'image'
timeS = 'time'

WEATHER_FORMAT = "2sfi15s"
TIME_FORMAT = "HBBBBB"

sfu = "https://api.openweathermap.org/data/2.5/weather?lat=49.27&lon=-122.92&appid=4c73c4004d334afe85c89242df34bb17"
sfuWeather, sfuData = http_weather(sfu)

tokyo = "https://api.openweathermap.org/data/2.5/weather?lat=35.65&lon=139.84&appid=4c73c4004d334afe85c89242df34bb17"
tokyoWeather, tokyoData = http_weather(tokyo)

london = "https://api.openweathermap.org/data/2.5/weather?lat=51.51&lon=0.13&appid=4c73c4004d334afe85c89242df34bb17"
londonWeather, londonData = http_weather(london)

sfuT = time.localtime()
sfuTime = struct.pack(TIME_FORMAT, sfuT.tm_year, sfuT.tm_mon, sfuT.tm_mday, sfuT.tm_hour, sfuT.tm_min, sfuT.tm_sec)

tokyoT = datetime.now(pytz.timezone("Asia/Tokyo"))
tokyoTime = struct.pack(TIME_FORMAT, tokyoT.year, tokyoT.month, tokyoT.day, tokyoT.hour, tokyoT.minute, tokyoT.second)

londonT = datetime.now(pytz.timezone("Europe/London"))
londonTime = struct.pack(TIME_FORMAT, londonT.year, londonT.month, londonT.day, londonT.hour, londonT.minute, londonT.second)

currLocation = 'sfu'

while 1:
    try:
        message = input("Send a message: ")

        messageData = message.encode("utf-8")
        s.sendall(messageData)
        
        if message == 'quit':
            break
        elif message == 'image':
            image_path = input("Enter image path (im5 ~ im9): ")
            raw_file_path = "output/" + image_path + ".raw"
            if not os.path.exists(raw_file_path):
                print(f"Error: File '{raw_file_path}' does not exist")
                continue
            
            with open(raw_file_path, 'rb') as f:
                imgData = bytearray(f.read())

            sentSize = 0
            s.sendall(imgData)
            print("Image data sent")
        elif message == 'weather':
            #wait for a message received signal returned here?
            #temp = 28.5
            #hum = 37
            #cond = "Sunny".encode().ljust(15, b'\x00') #pad to 15
            #weatherStruct = struct.pack(WEATHER_FORMAT, temp, hum, cond)
            s.sendall(sfuWeather)
        elif message == 'time':
            s.sendall(sfuTime)
        elif message == 'listen':
            while True:
                recvDataSize = 0
                recvData = s.recv(8192)
                recvDataSize += len(recvData)
                if b'\r' in recvData:
                    received = 1
                    ack = "ack"
                    s.sendall(ack.encode("utf-8"))
                    time.sleep(0.5)

                if received == 1:
                    recvMessage = recvData.decode("utf-8")
                    if 'tts' in recvMessage:
                        tts = 'acktts'
                        s.sendall(tts.encode("utf-8"))
                        time.sleep(0.5)
                        
                        if currLocation == 'sfu':
                            weather_tts(sfuData)
                        elif currLocation == 'tokyo':
                            weather_tts(tokyoData)
                        elif currLocation == 'london':
                            weather_tts(londonData)

                        s.sendall(tts.encode("utf-8"))
                    if 'sfu' in recvMessage:
                        sfuWeather, sfuData = http_weather(sfu)
                        s.sendall(weatherS.encode("utf-8"))
                        time.sleep(0.5)
                        s.sendall(sfuWeather)

                        time.sleep(1)
                        sfuT = time.localtime()
                        sfuTime = struct.pack(TIME_FORMAT, sfuT.tm_year, sfuT.tm_mon, sfuT.tm_mday, sfuT.tm_hour, sfuT.tm_min, sfuT.tm_sec)


                        s.sendall(timeS.encode("utf-8"))
                        time.sleep(0.5)
                        s.sendall(sfuTime)

                        currLocation = 'sfu'
                    elif 'tokyo' in recvMessage:
                        tokyoWeather, tokyoData = http_weather(tokyo)
                        s.sendall(weatherS.encode("utf-8"))
                        time.sleep(0.5)
                        s.sendall(tokyoWeather)

                        time.sleep(1)
                        tokyoT = datetime.now(pytz.timezone("Asia/Tokyo"))
                        tokyoTime = struct.pack(TIME_FORMAT, tokyoT.year, tokyoT.month, tokyoT.day, tokyoT.hour, tokyoT.minute, tokyoT.second)


                        s.sendall(timeS.encode("utf-8"))
                        time.sleep(0.5)
                        s.sendall(tokyoTime)

                        currLocation = 'tokyo'
                    elif 'london' in recvMessage:
                        londonWeather, londonData = http_weather(london)

                        s.sendall(weatherS.encode("utf-8"))
                        time.sleep(0.5)
                        s.sendall(londonWeather)

                        time.sleep(1)
                        londonT = datetime.now(pytz.timezone("Europe/London"))
                        londonTime = struct.pack(TIME_FORMAT, londonT.year, londonT.month, londonT.day, londonT.hour, londonT.minute, londonT.second)


                        s.sendall(timeS.encode("utf-8"))
                        time.sleep(0.5)
                        s.sendall(londonTime)

                        currLocation = 'london'
                    elif 'image' in recvMessage:
                        s.sendall(imageS.encode("utf-8"))
                        time.sleep(0.5)

                        image_path = input("Enter image path (im5 ~ im9): ")
                        raw_file_path = "output/" + image_path + ".raw"
                        if not os.path.exists(raw_file_path):
                            print(f"Error: File '{raw_file_path}' does not exist")
                            continue
                        
                        with open(raw_file_path, 'rb') as f:
                            imgData = bytearray(f.read())

                        sentSize = 0
                        s.sendall(imgData)
                        print("Image data sent")

                    print(recvMessage)
                    received = 0
                    recvDataSize = 0
                    recvMessage = ""
                    print("Ready to send more messages")

                user_input = input("Type 'end' to stop listening or press Enter to continue: ")
                if user_input.lower() == 'end':
                    break

        message = ""
        
    except Exception as e: #If any exception happens during send the data
        print(e)
        s.close() #the programme
        print("Error Connection lost")
        break