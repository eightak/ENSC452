
#include <stdio.h>
#include <string.h>
#include "xil_types.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xil_io.h"
#include "xil_exception.h"
#include "xscugic.h"
#include "xil_printf.h"
#include "interrupts.h"
#include "audio.h"
#include "xil_cache.h"
#include "shared_mem.h"
#include "util.h"

// Function Prototypes
int Setup();
void MainLoop();
void audioSS();
void beep();

// Main function
int main() {

	Setup();
	MainLoop();

	return 0;
}

// Performs all the necessary setups for this core
int Setup() {
	//Setup Audio
	IicConfig(XPAR_XIICPS_0_DEVICE_ID);

	//Configure the Audio Codec's PLL
	AudioPllConfig();

	AudioConfigureJacks();

	gpio_init();

	music_index = 0;
	track_number = 0;

	// Initialise with music addresses in the memory
	MUSIC_ARRAY_OG->musicAddr[0] = (int *)0x10A7F000;
	strcpy(MUSIC_ARRAY_OG->musicName[0], "A Bar Song");
	strcpy(MUSIC_ARRAY_OG->musicArtist[0], "Shaboozey");
	MUSIC_ARRAY_OG->musicSamples[0] = 2646000;


	MUSIC_ARRAY_OG->musicAddr[1] = (int *)0x1147F000;
	strcpy(MUSIC_ARRAY_OG->musicName[1], "Happy Like You");
	strcpy(MUSIC_ARRAY_OG->musicArtist[1], "Empire Of The Sun");
	MUSIC_ARRAY_OG->musicSamples[1] = 2646000;

	MUSIC_ARRAY_OG->musicAddr[2] = (int *)0x11E7F000;
	strcpy(MUSIC_ARRAY_OG->musicName[2], "Beautiful Things");
	strcpy(MUSIC_ARRAY_OG->musicArtist[2], "Benson Boone");
	MUSIC_ARRAY_OG->musicSamples[2] = 2646000;

	MUSIC_ARRAY_OG->musicAddr[3] = (int *)0x1287F000;
	strcpy(MUSIC_ARRAY_OG->musicName[3], "The Door");
	strcpy(MUSIC_ARRAY_OG->musicArtist[3], "Teddy Swims");
	MUSIC_ARRAY_OG->musicSamples[3] = 2646000;

	MUSIC_ARRAY_OG->musicAddr[4] = (int *)0x1327F000;
	strcpy(MUSIC_ARRAY_OG->musicName[4], "La La La");
	strcpy(MUSIC_ARRAY_OG->musicArtist[4], "Naughty Boy (feat. Sam Smith)");
	MUSIC_ARRAY_OG->musicSamples[4] = 2646000;

	// Sets the original music queue
	revertMusicToOriginalQueue(MUSIC_ARRAY_OG, MUSIC_ARRAY);

	Xil_DCacheFlushRange((INTPTR)MUSIC_ARRAY_OG, sizeof(MusicStruct_OG));
	Xil_DCacheFlushRange((INTPTR)MUSIC_ARRAY, sizeof(MusicStruct));

	xil_printf("CPU1: Initialized\n");

	return 0;

}

// This function has the overall logic of the core
void MainLoop(){
	// Flag for music loop
	int musicLoopFlag = 0;

	while(1){
		// Checks and plats Text-to_Speech
		if (getTTSFlag_sharedMemory() == 1) {
			audio_stream();
		}
		// Checks and increments/decrements volume
		if (getVolumeControlFlag_sharedMemory() == 1) {
			increaseVolume();
			setVolumeControlFlag_sharedMemory(0);
		}
		else if (getVolumeControlFlag_sharedMemory() == 2) {
			decreaseVolume();
			setVolumeControlFlag_sharedMemory(0);
		}

		if(getTimerRunningFlag_sharedMemory() && (getSW2Flag_sharedMemory() == 0)){
			// Checks and plays timer tick or done sounds when the timer is running
			if (getPlayTimerTickFlag_sharedMemory()){
				playTimerTickSound();
				setPlayTimerTickFlag_sharedMemory(0);

			}
			else if(getPlayTimerDoneFlag_sharedMemory()){
				playTimerDoneSound();
			}
		}


		else if (getSW2Flag_sharedMemory()){

			music_index = 0;
			// Checks if the timer done sounds needs to played
			if(getTimerRunningFlag_sharedMemory() && getPlayTimerDoneFlag_sharedMemory()){
				playTimerDoneSound();
			}

			// Plays music
			playMusic();

			// Increments or decrements track number 
			if (getTrackControl_sharedMemory() == 1) {
				track_number = incrementTrack(track_number);
				music_index = 0;
				setTrackControl_sharedMemory(0);
			}
			else if (getTrackControl_sharedMemory() == 2) {
				track_number = decrementTrack(track_number);
				music_index = 0;
				setTrackControl_sharedMemory(0);
			}
			else {
				switch(getMusicMode_sharedMemory()){
					case 0: //normal mode
					
						track_number = incrementTrack(track_number);
						musicLoopFlag = 0;
						break;

					case 1: //loop once
						if(musicLoopFlag == 0){
							musicLoopFlag = 1;
						}
						else{

							track_number = incrementTrack(track_number);
							musicLoopFlag = 0;
						}
						break;

					default: //loop forever
						musicLoopFlag = 0;
						break;
				}
			}
			// Sets the current track number in the shared memory
			setCurrentTrack_sharedMemory(track_number);

		}
	}
}
