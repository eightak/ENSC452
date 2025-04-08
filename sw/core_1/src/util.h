#ifndef UTIL_H
#define UTIL_H

// Function protypes 
int random_number();
void shuffleMusicArray(MusicStruct * ms);
int incrementTrack(int value);
int decrementTrack(int value);
void revertMusicToOriginalQueue(MusicStruct_OG * ms_og, MusicStruct * ms);

#endif
