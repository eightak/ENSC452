import wave
import numpy as np
import sys

def wav_to_arr(input_file, output_file):
    with wave.open(input_file, "rb") as wav_file:
        num_channels = wav_file.getnchannels()  # 1 for mono, 2 for stereo
        sample_width = wav_file.getsampwidth()  # Number of bytes per sample
        frame_rate = wav_file.getframerate()  # Samples per second
        num_frames = wav_file.getnframes()  # Total number of samples
        
        
        #audio_data = wav_file.readframes(39534)  # Raw PCM data
        audio_data = wav_file.readframes(num_frames) # sample 1 second

        if sample_width == 2:  # 16-bit signed
            audio_samples = np.frombuffer(audio_data, dtype=np.int16)
            #print(audio_samples)
        elif sample_width == 3 or sample_width == 4:  # 24-bit/32-bit signed
            #audio_samples = np.frombuffer(audio_data, dtype=np.int16)
            audio_samples_32bit = np.frombuffer(audio_data, dtype=np.int32)
            audio_samples = (audio_samples_32bit >> 16).astype(np.int16)
            #print(audio_samples)
        else:
            raise ValueError("Unsupported sample width!")

        if num_channels == 2:
            audio_samples = audio_samples[::2]

        audio_samples = audio_samples.astype(np.uint32)

        #threshold = 4294960000
        #filtered_samples = audio_samples[audio_samples > threshold]

        # Print extracted data
        print(f"Same width: {sample_width}")
        print(f"Sample Rate: {frame_rate} Hz")
        print(f"Extracted Data Shape: {audio_samples.shape}")
        #print(f"Extracted Data Shape: {filtered_samples.shape}")
        print(f"Channels: {num_channels}")
        print(f"Num frames: {num_frames}")
        print(f"First 10 Samples:\n{audio_samples[:100]}")
        #print(f"First 10 Samples:\n{filtered_samples[:100]}")

        #with open(output_file, "w") as f:
        #    for i, sample in enumerate(audio_samples):
        #        f.write(f"   0x{sample:08X},")
        #        if (i + 1) % 8 == 0:
        #            f.write("\n")
        audio_samples.tofile(output_file)
        #filtered_samples.tofile(output_file)


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python script.py input.wav output.data")
        sys.exit(1)
    
    input_path = sys.argv[1]
    output_path = sys.argv[2]
    
    # Convert image to .data
    wav_to_arr(input_path, output_path)
