# RSC-ComputerArch
Computer Architecture and Organization Projects - Circuits made using logisim

-- Description --
Relatively Simple Computer (RSC) was started as a semester project for Computer Architecture at MTSU
with Dr. Joshua Phillips, and eventually turned into a personal project. The RSC runs through logisim, 
a simulator for logic circuits, and utilizes what's labeled 'RSC-Emulator' to compile assembly. The Emulator 
uses a custom form of assembly as well as recognizing the given opcode used for the RSC. The compiled assembly 
can then be loaded into the RSC's ram module to be ran.

-- Contents: RSC-Final --
In the RSC-Final folder, you can find the main file 'RSC.circ' ( .circ being the file extensions used for logisim),
along with the other two .circ files which are loaded and used within the main file. 

The 'RSC-Emulator.zip' file contains the needed files if you wish to use it. It also has its own read me file which I was given. 

The 'Rams' folder contains .txt files which hold the assembly code that was compiled into the other files you may see. 

-- Instructions --
To test the programs, open RSC.circ in logisim. Right click the ram module towards the top, and select load image. 
Find the compiled assembly inside the Rams folder to run the programs mentioned. As a shortcut use 'Ctrl + k' to 
enabled the ticks, and you should see the RSC run.
