import cv2
import numpy as np
import sys
import os

def image_to_data(image_path, output_path, font=False):
    try:
        # Read image using cv2 (this loads in BGR format)
        img = cv2.imread(image_path)
        if img is None:
            raise Exception("Failed to load image")

        # Convert font to boolean properly
        font = str(font).lower() == 'true'
        
        if font:
            height, width = img.shape[:2]
            #img_resized = cv2.resize(img, (height, width), interpolation=cv2.INTER_AREA)
            img_gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
            print(img_gray.flatten()[:50])
            print(height)
            print(width)
            cv2.imshow('Resized Image', img_gray)
            cv2.waitKey(10000)  # Display for 1 second
            cv2.destroyAllWindows()
            img_out = img_gray
        else:
            #resize image to 1280x1024
            print("Resizing image to 1280x1024")
            img_resized = cv2.resize(img, (1280, 1024), interpolation=cv2.INTER_AREA)
            img_bgra = cv2.cvtColor(img_resized, cv2.COLOR_BGR2BGRA)
            img_rgba = cv2.cvtColor(img_bgra, cv2.COLOR_BGRA2RGBA)
            img_out = img_rgba

            # Show resized image
            print("Showing resized image")
            height2, width2, channels = img_out.shape
            img_edited = cv2.resize(img_out, (width2, height2), interpolation=cv2.INTER_AREA)
            cv2.imshow('Resized Image', img_edited)
            cv2.waitKey(3000)  # Display for 1 second
            cv2.destroyAllWindows()

        img_out.tofile(output_path)

        
        print(f"Successfully converted {image_path} to {output_path}")

        return True
    except Exception as e:
        print(f"Error converting image: {e}")
        return False

if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: python script.py input_image output.data font(true/false)")
        sys.exit(1)
    
    input_path = sys.argv[1]
    output_path = sys.argv[2]
    font = sys.argv[3]
    
    # Convert image to .data
    image_to_data(input_path, output_path, font)
