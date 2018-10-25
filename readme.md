# A working environment inside EMAP

Proposed set up for the Inform team's working environment inside the Generic Application Environment (GAE)

Creating docker compose files for now in subfolders with a notion of increasing security and fewer permissions

1. for_administrators

2. for_developers
	specifically for EMAP developers 
	we'll need a local version of postgres
	a method of interacting with local postgres
	a method of interacting with UDS/IDS postgres
	a command line
	jupyter notebooks
	r studio
3. for_datascientists
	a method of interacting with UDS/IDS postgres
	a command line
	jupyter notebooks
	r studio

To interact with these then we'd recommend installing the following portable apps on your UCLH desktop machine.

Text editors (just a suggestion, not trying to start a fight)

Atom: https://flight-manual.atom.io/getting-started/sections/installing-atom/

mainly so you can use [Hydrogen](https://atom.io/packages/hydrogen)

I note that Visual Studio Code also installs without admin privileges.

Plus 

- https://www.chiark.greenend.org.uk/~sgtatham/putty/
- https://mobaxterm.mobatek.net
- https://winscp.net/eng/index.php

