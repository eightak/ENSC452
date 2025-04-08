#ifndef SHARED_MEM_H
#define SHARED_MEM_H

#include <stdio.h>
#include <string.h>
#include "xil_printf.h"

#include "xil_cache.h"


/* ---------------------------------------------------------------------------- *
 * 							Base addresses										*
 * ---------------------------------------------------------------------------- */
#define SHARED_MEMORY_BASE_ADDR  0xFFFF0000
#define SHARED_MEMORY ((shared_data_t *) SHARED_MEMORY_BASE_ADDR)

#define MUSIC_BASE_OG_ADDR  SHARED_MEMORY_BASE_ADDR + 2 * sizeof(shared_data_t)
#define MUSIC_ARRAY_OG ((MusicStruct_OG *) MUSIC_BASE_OG_ADDR)

#define MUSIC_BASE_ADDR  MUSIC_BASE_OG_ADDR + (6 * sizeof(MusicStruct_OG))
#define MUSIC_ARRAY ((MusicStruct *) MUSIC_BASE_OG_ADDR)

/* ---------------------------------------------------------------------------- *
 * 							Music Macros										*
 * ---------------------------------------------------------------------------- */
#define NUM_MUSIC_MODE 3
#define NUM_MUSIC_TRACKS 5
#define CHAR_SIZE 30

/* ---------------------------------------------------------------------------- *
 * 	Structs for flags in the shared memory communication between the cores		*
 * ---------------------------------------------------------------------------- */
typedef struct {
	volatile int timerRunningFlag;
    volatile int playTimerTickSoundFlag;
    volatile int playTimerDoneSoundFlag;
    volatile int sw2Flag;
    volatile int sw3Flag;
    volatile int volumeControlFlag; //0 for no change, 1 to increase, 2 to decrease
    volatile int TTSFlag;
    volatile int musicMode; // 0 for normal mode, 1 for repeat once, 2 for repeat forever 
    volatile int currentTrack;
    volatile int trackControl;
} shared_data_t;

/* ---------------------------------------------------------------------------- *
 *                          Struct for music in the shared memory 	        	*
 * ---------------------------------------------------------------------------- */
typedef struct{
	int * musicAddr[NUM_MUSIC_TRACKS];
	char musicName[NUM_MUSIC_TRACKS][CHAR_SIZE];
	char musicArtist[NUM_MUSIC_TRACKS][CHAR_SIZE];
	int musicSamples[NUM_MUSIC_TRACKS];
} MusicStruct_OG;

/* ---------------------------------------------------------------------------- *
 *                          Struct for music in the shared memory 	        	*
 * ---------------------------------------------------------------------------- */
typedef struct{
	int * musicAddr[NUM_MUSIC_TRACKS];
	char musicName[NUM_MUSIC_TRACKS][CHAR_SIZE];
	char musicArtist[NUM_MUSIC_TRACKS][CHAR_SIZE];
	int musicSamples[NUM_MUSIC_TRACKS];
} MusicStruct;


// Function protypes
void setTimerRunningFlag_sharedMemory(int value);
void setPlayTimerDoneFlag_sharedMemory(int value);
void setPlayTimerTickFlag_sharedMemory(int value);
void setSW2Flag_sharedMemory(int value);
void setSW3Flag_sharedMemory(int value);
void setVolumeControlFlag_sharedMemory(int value);
void setTTSFlag_sharedMemory(int value);
void setMusicMode_sharedMemory(int value);
void setCurrentTrack_sharedMemory(int value);
void setTrackControl_sharedMemory(int value);

int getTimerRunningFlag_sharedMemory();
int getPlayTimerDoneFlag_sharedMemory();
int getPlayTimerTickFlag_sharedMemory();
int getSW2Flag_sharedMemory();
int getSW3Flag_sharedMemory();
int getVolumeControlFlag_sharedMemory();
int getTTSFlag_sharedMemory();
int getMusicMode_sharedMemory();
int getCurrentTrack_sharedMemory();
int getTrackControl_sharedMemory();

#endif
