"web-cerveaux" by Tana Ostrova

Include Vorple Notifications by Juhana Leinonen.

Release along with the "Vorple" interpreter.
Release along with style sheet "web-cerveaux.css".
Include Vorple Element Manipulation by Juhana Leinonen.
Include Vorple Hyperlinks by Juhana Leinonen.
Include Vorple Command Prompt Control by Juhana Leinonen.

Chapter 1 - Button Setup

Palette is a list of text that varies. 
Palette is {"noir","brun","rouge","orange","jaune","vert","bleu","violet","gris","white"}.

The player has a number called knownCommands. The knownCommands of the player is 0.

[Niveau					Action
1					East
2					West
3					Eating
4					Opening
5					North
6					South
7					Push Button
8					Unlock
9					Talk
10					Repair]

Chapter 2 - Known Commands

actionList is a list of text that varies. actionList is {"jump", "west","eat","open","north","south","push","up","talk","pray"}

The commandList is a list of numbers that varies. The commandList is {}.

To increment the knownCommands of the player:
	place a block level element called "arrows";
	remove all elements called "vorple-link";
	increase the knownCommands of the player by 1;
	add the knownCommands of the player to commandList;
	sort commandList in random order;
	let R be the number of entries in commandList;
	repeat with N running from 1 to R:
		let E be entry N of commandList;
		place a link to the command "[entry E of actionList]" called "box[n] [entry E of palette]" reading "b-[N]:[entry E of actionList]".

Chapter 3 -  World

The Lab is a room.

The greek box is an closed openable container in the lab. The description of the greek box is "Ένα μικρό κουτί".

The russian box is an closed openable container in the greek box. The description of the russian box is "Маленькая коробка".

The bengali box is a closed openable container in the russian box. The description of the bengali box is "একটি ছোট বাক্স".

Chapter 4 - Override Vorple

To display text (content - text) in all the/-- elements called (classes - text):
	execute JavaScript command "$('.[classes]').text('[content]')".

Chapter 5 - When Play Begins

When play begins:
	[hide the prompt;]
	place a block level element called "arrows";
	sort the palette in random order;
	increment the knownCommands of the player.
	
Instead of jumping:
	if the knownCommands of the player is less than 10:
		increment the knownCommands of the player;
		let R be the number of entries in commandList;
		clear all elements called "arrows";
		display text "\u2190  \u2191  \u2193  \u2192" in the element called "arrows".

[When play begins:
	refresh the link;
	repeat with N running from 2 to 10:
		place a link to the command "x me" called "box[n]_r" reading "box-[N]";
		hide the element called "box[n]-r".
		
Instead of jumping:
	show the element called "box1_[CurrentBackground]";
	repeat with N running from 2 to 10:
		show the element called "box[n]-r".
	
Instead of waving hands:
	hide the element called "box1_[CurrentBackground]";
	repeat with N running from 2 to 10:
		show the element called "box[n]-r";
	refresh the link.
	
To refresh the link:
	now CurrentBackground is a random BackgroundColor;
	place a link to the command "inventory" called "box1_[CurrentBackground]" reading "";
	hide the element called "box1_[CurrentBackground]".

]

	


