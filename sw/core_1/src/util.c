#include <stdio.h>
#include <string.h>
#include "xparameters.h"
#include "random_num_gen_ip.h"
#include "xil_io.h"
#include "shared_mem.h"
#include "util.h"

/* Redefine audio controller base address from random_num_gen_ip.h*/
#define RAND_NUM_BASE XPAR_RANDOM_NUM_GEN_IP_0_S00_AXI_BASEADDR


/* ---------------------------------------------------------------------------- *
 * 	                             random_number()                                *
 * ---------------------------------------------------------------------------- *
 * Function to get the random number fromthe hardware
 * ---------------------------------------------------------------------------- */
int random_number() {
	return (RANDOM_NUM_GEN_IP_mReadReg(RAND_NUM_BASE, 0) % 511) + 1;  // Returns a random number between 1 and 511
}


/* ---------------------------------------------------------------------------- *
 * 	                   shuffleMusicArray(MusicStruct * ms)                      *
 * ---------------------------------------------------------------------------- *
 * Function to shuffle the music queue in a random order. 
 * Uses the Fisher-Yates Shuffle algorithm with the help of the random number 
 * generated from the hardware.
 * ---------------------------------------------------------------------------- */
void shuffleMusicArray(MusicStruct * ms) {
    for (int i = NUM_MUSIC_TRACKS - 1; i > 0; i--) {
        int j = random_number() % (i + 1); // Get a random index within bounds
        xil_printf("Random Number => %d\n", j);
        // Swap arr[i] and arr[j]

        // save to temp
        int * tempAddr = ms->musicAddr[i];
        char tempName[CHAR_SIZE];
        char tempArtist[CHAR_SIZE];
        int tempSamples = ms->musicSamples[i];

        strcpy(tempName, ms->musicName[i]);
        strcpy(tempArtist, ms->musicArtist[i]);

        // replace i with j
        ms->musicAddr[i] = ms->musicAddr[j];
        strcpy(ms->musicName[i], ms->musicName[j]);
        strcpy(ms->musicArtist[i], ms->musicArtist[j]);
        ms->musicSamples[i] = ms->musicSamples[j];

        // replace j with temp
        ms->musicAddr[j] = tempAddr;
        strcpy(ms->musicName[j], tempName);
        strcpy(ms->musicArtist[j], tempArtist);
        ms->musicSamples[j] = tempSamples;


        xil_printf("Shuffled => %s\n", ms->musicName[i]);
    }
}


/* ---------------------------------------------------------------------------- *
 * 	                         incrementTrack(int value)	                         *
 * ---------------------------------------------------------------------------- *
 * Function to increment the track within bounds
 * ---------------------------------------------------------------------------- */
int incrementTrack(int value){
	if (value < NUM_MUSIC_TRACKS-1){
		value++;
	}
	else{
		value = 0;
	}
	return value;
}

/* ---------------------------------------------------------------------------- *
 * 	                         decrementTrack(int value)	                         *
 * ---------------------------------------------------------------------------- *
 * Function to decrement the track within bounds
 * ---------------------------------------------------------------------------- */
int decrementTrack(int value){
    if (value > 0){
        value--;
    }
    else{
        value = NUM_MUSIC_TRACKS - 1;
    }
    return value;
}

/* ---------------------------------------------------------------------------- *
 * 	    revertMusicToOriginalQueue(MusicStruct_OG * ms_og, MusicStruct * ms)	*
 * ---------------------------------------------------------------------------- *
 * Function to revert the music queue from the shuffled to the original order
 * ---------------------------------------------------------------------------- */
void revertMusicToOriginalQueue(MusicStruct_OG * ms_og, MusicStruct * ms){
	for(int i = 0; i < NUM_MUSIC_TRACKS; i++){
		ms->musicAddr[i] = ms_og->musicAddr[i];
		strcpy(ms->musicName[i], ms_og->musicName[i]);
		strcpy(ms->musicArtist[i], ms_og->musicArtist[i]);
		ms->musicSamples[i] = ms_og->musicSamples[i];
	}
	Xil_DCacheFlushRange((INTPTR)MUSIC_ARRAY, sizeof(MusicStruct));
}
