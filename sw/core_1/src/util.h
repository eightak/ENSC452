/*
 * UTIL.H
 *
 * Contains logic and helper functions that are used throughout the core 1 source code
 */


#ifndef UTIL_H
#define UTIL_H

// Function protypes 
int random_number();
void shuffleMusicArray(MusicStruct * ms);
int incrementTrack(int value);
int decrementTrack(int value);
void revertMusicToOriginalQueue(MusicStruct_OG * ms_og, MusicStruct * ms);

#endif
