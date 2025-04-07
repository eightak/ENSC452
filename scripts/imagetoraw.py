import cv2
import numpy as np
import sys
import os

def image_to_raw(image_path, output_path):
    try:
        # Read image using cv2 (this loads in BGR format)
        img = cv2.imread(image_path)
        if img is None:
            raise Exception("Failed to load image")
            
        # Resize image
        img_resized = cv2.resize(img, (1280, 1024), interpolation=cv2.INTER_AREA)
        
        # Convert color format
        img_colour = cv2.cvtColor(img_resized, cv2.COLOR_BGR2BGRA)
        
        img_gray = cv2.cvtColor(img_resized, cv2.COLOR_BGR2GRAY)
        # Save raw pixel data

        img_colour_flat = img_colour.flatten()

        print(img_colour_flat.shape)

        img_colour_flat.tofile(output_path)
        img_gray.tofile('gray.raw')
        
        print(f"File size: {os.path.getsize(output_path)} bytes")
        print(f"File size: {os.path.getsize('gray.raw')} bytes")
        
        # Print information
        print(f"Successfully converted {image_path} to RAW format")
        
        return True
            
    except Exception as e:
        print(f"Error converting image: {e}")
        return False

def read_raw_file(raw_path, width=1280, height=1024):
    try:
        # Calculate number of channels
        channels = 4
        
        # Read raw data
        data = np.fromfile(raw_path, dtype=np.uint8)
        
        # Reshape based on dimensions and channels
        if channels == 1:
            img = data.reshape((height, width))
        else:
            img = data.reshape((height, width, channels))
            
        # Convert color format if needed
        img = cv2.cvtColor(img, cv2.COLOR_BGRA2BGR)
            
        return img
            
    except Exception as e:
        print(f"Error reading RAW file: {e}")
        return None

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Usage: python script.py input_image output.raw [width height] [color_format]")
        print("Color formats: bgr, rgb, gray")
        sys.exit(1)
    
    input_path = sys.argv[1]
    output_path = sys.argv[2]
    
    # Parse optional arguments
    target_size = (1280, 1024)  # default size
    color_format = 'bgr'  # default format
    
    if len(sys.argv) >= 5:
        target_size = (int(sys.argv[3]), int(sys.argv[4]))
    if len(sys.argv) >= 6:
        color_format = sys.argv[5].lower()
    
    # Convert image to RAW
    if image_to_raw(input_path, output_path):
        # Test reading it back
        img = read_raw_file(output_path, target_size[0], target_size[1])
        if img is not None:
            # Display the image to verify
            cv2.imshow('Image from RAW', img)
            cv2.waitKey(0)
            cv2.destroyAllWindows()