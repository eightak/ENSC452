#USAGE: source C:/Users/eitak/ENSC452/scripts/dow.tcl
connect

#LOCATION IMAGES
#dow -data C:/Users/eitak/ENSC452/scripts/output/im1.data
dow -data C:/Users/eitak/ENSC452/scripts/output/sfu.data 0x020BB00C
dow -data C:/Users/eitak/ENSC452/scripts/output/tokyo.data 0x018D2008
dow -data C:/Users/eitak/ENSC452/scripts/output/london.data 0x028A4010

#ADDITIONAL IMAGES (TIMER AND STOPWATCH)
dow -data C:/Users/eitak/ENSC452/scripts/output/im2.data 0x0308D014
dow -data C:/Users/eitak/ENSC452/scripts/output/im5.data 0x03876018

#SLIDESHOW IMAGES
dow -data C:/Users/eitak/ENSC452/scripts/output/im1.data 0x5A90000
dow -data C:/Users/eitak/ENSC452/scripts/output/im7.data 0x5FF0000
dow -data C:/Users/eitak/ENSC452/scripts/output/im3.data 0x65F0000
dow -data C:/Users/eitak/ENSC452/scripts/output/im4.data 0x6BF0000

#SOUND EFFECTS
#dow -data C:/Users/eitak/ENSC452/scripts/output/spell.data 0x10980000
#dow -data C:/Users/eitak/ENSC452/scripts/output/spell3.data 0x109FF800
dow -data C:/Users/eitak/ENSC452/scripts/output/beep.data 0x10980000
dow -data C:/Users/eitak/ENSC452/scripts/output/clock.data 0x109FF800

#MUSIC
#dow -data C:/Users/eitak/ENSC452/scripts/output/test.data 0x10A7F000
dow -data C:/Users/eitak/ENSC452/scripts/output/music/Shaboozey_ABarSong.data 0x10A7F000
dow -data C:/Users/eitak/ENSC452/scripts/output/music/EmpireOfTheSun_HappyLikeYou.data 0x1147F000
dow -data C:/Users/eitak/ENSC452/scripts/output/music/BensonBoone_BeautifulThings.data 0x11E7F000
dow -data C:/Users/eitak/ENSC452/scripts/output/music/TeddySwims_TheDoor.data 0x1287F000
dow -data C:/Users/eitak/ENSC452/scripts/output/music/NaughtyBoy_Lalala.data 0x1327F000

#IMPORT RESOURCES DATA
dow -data C:/Users/eitak/ENSC452/scripts/output/font.data 0x581A028
dow -data C:/Users/eitak/ENSC452/scripts/output/weather.data 0x5900000