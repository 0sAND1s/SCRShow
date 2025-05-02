SCRShow - PC program that produces a customizable slide show of ZX Spectrum SCREEN$ images, running on the ZX Spectrum and compatibles
George CHIRTOACA, 30.04.2025

The program provides an easy way to create a slide show of ZX Spectrum SCREEN$ images.
The SCREEN$ files are used from the 'scr' folder, so images can be replaced.
The files are optimized for compression and then compressed with ZX0 program, to allow storing more files on disk.
The file system limit for CP/M based file systems is 128 files.
There is a message shown on screen after each image in the format <file number>:<pause in seconds>:random mode 0/1.

The keys available during the slide show are:
- Right/Left: go to the next/previous image
- Up/Down: increase the pause for one screen, one second increment/decrement.
- r: toggle random mode on/off

The main logic is in a BASIC program, so it can be easily changed to load from tape or other storage options. Currently is setup for HC computers with disk interface.