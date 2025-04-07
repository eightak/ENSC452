import requests
import json
import os

from gtts import gTTS
from io import BytesIO
import pygame
import tempfile
import time

import struct

WEATHER_FORMAT = "2sfi15s"

def http_weather(url):
    try:
        response = requests.get(url, headers={"User-Agent": "custom-agent"})
        response.raise_for_status()  # Raise an error for bad responses (4xx and 5xx)
        data = response.json()  # Return JSON response

        country = data['sys']['country'].encode().ljust(2, b'\x00')
        temp = data['main']['temp'] - 273.15
        hum = data['main']['humidity']
        cond = data['weather'][0]['main'].encode().ljust(15, b'\x00')

        #print(temp)
        #print(hum)
        #print(cond)

        weatherStruct = struct.pack(WEATHER_FORMAT, country, temp, hum, cond)

        return weatherStruct, data
    except requests.RequestException as e:
        print(f"HTTP request failed: {e}")
        return None

def weather_tts(data):
    if data and 'weather' in data and 'main' in data:
        weather_condition = data['weather'][0]['main']
        temperature = round(data['main']['temp'] - 273.15, 2)
        text = f"The weather condition is {weather_condition} with a temperature of {temperature} degrees celcius."
        #print(text)

        # Generate TTS audio
        tts = gTTS(text=text, lang='en')
        mp3_fp = BytesIO()
        tts.write_to_fp(mp3_fp)
        mp3_fp.seek(0)  # Reset pointer to start

        # Save audio to a temporary file
        with tempfile.NamedTemporaryFile(delete=False, suffix=".mp3") as tmpfile:
            tmpfile.write(mp3_fp.read())
            temp_audio_path = tmpfile.name

        # Initialize pygame and play audio
        pygame.init()
        pygame.mixer.init()
        pygame.mixer.music.load(temp_audio_path)
        pygame.mixer.music.play()

        # Wait until audio finishes playing
        while pygame.mixer.music.get_busy():
            time.sleep(1)  # Prevent script from exiting immediately

        pygame.mixer.music.unload()  # Make sure it's unloaded
        os.remove(temp_audio_path)



# Example usage
if __name__ == "__main__":
    # Location set to Simon Fraser University
    # To change the location for the weather, change the latitude (lat )and longitude (lon) values in the url only
    url = "https://api.openweathermap.org/data/2.5/weather?lat=49.27&lon=-122.92&appid=4c73c4004d334afe85c89242df34bb17"  # Replace with actual weather API URL
    data = http_weather(url)
    if data:
        # Print the entire API response
        print("Entire API response => ", json.dumps(data, indent=4))  # Pretty print JSON

        # Print the current weather response
        print("Weather response => ", json.dumps(data['weather'], indent=4))  # Pretty print JSON

        # Print the current weather condition
        print(f"weather condition=> {data['weather'][0]['main']}")
