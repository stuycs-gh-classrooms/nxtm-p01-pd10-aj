[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/Mfyqb_T6)
# NeXtCS Project 01
### thinker0: Alex Jiang
### thinker1: N/A
---

### Overview
Your mission is create either: 
- Life-like cellular automata [life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life), [life-like](https://en.wikipedia.org/wiki/Life-like_cellular_automaton), [demo](https://www.netlogoweb.org/launch#https://www.netlogoweb.org/assets/modelslib/Sample%20Models/Computer%20Science/Cellular%20Automata/Life.nlogo).
- Breakout/Arkanoid [demo 0](https://elgoog.im/breakout/)  [demo 1](https://www.crazygames.com/game/atari-breakout)
- Space Invaders/Galaga

This project will be completed in phases.  
The first phase will be to work on this document. 
* Use markdown formatting.
* For more markdown help
  - [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or
  - [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)


---

## Phase 0: Selection, Analysis & Plan

#### Selected Project: Conway's game of life

### Necessary Features
What are the core features that your program should have? These should be things that __must__ be implemented in order to make the program useable/playable, not extra features that could be added to make the program more interesting/fun.

0) Two classes. One class that generates the 2D array used, and another class to generate the organisms that populate the cells of the 2D array (either alive or dead). 

1) in setup, using a method of a class, the environment is generated, which is a 2D array, which is then populated with organisms/cellular automata using another method. 
The density of how many alive organisms are generated must be defined by an input parameter in the method. 

2) In draw, or keypressed (), a method that causes the organisms to update their status (living or dead) based on the cells around them, ie time passing. Rules: 
	* The neighbors are the 8 adjacent cells 
	* A dead cell becomes alive if it has 3 alive neighbors
	* A live cell stays alive if it has 2 or 3 alive neighbors
 	* All other cases the cell dies 
	* It's important to remember that updating its next state and becoming it's next state should be two different steps

### Extra Features
What are some features that are not essential to the program, but you would like to see (provided you have time after completing the necessary features. Theses can be customizations that are not part of the core requirements.

1) When setting up the environment, using the mouse to generate an organism where the person clicked. This will require converitng mouse position to a grid celle, based on the size of each cell.  
2) Using the keyboard to run the program. For example using r to reset the program, and the space bar to cause the program to run. There also should be another key to cause the program to run infinitely without any other interactions. 
3) Other rules of life-like rules: 
	*B2/S Seeds -- A dead cell becomes alive if it has 2 alive neighbors. There is no case for the cell to surive to the next instance of time 
	*B25/S4 -- A dead cell becomes alive if it has either 2 or 5 alive neighbors. It survives only when there are 4 alive neighbors. Apparently, should cause a glider pattern to bounce back and forth. 

### Array Usage
How will you be using arrays in this project?

1D Array:
- I'm not entirely sure yet.

2D Array:
- A 2D array is used as the grid/environment. Whithin each cell of the 2D array, there should be an organism that has a state taht is either alive or dead. 


### Controls
How will your program be controlled? List all keyboard commands and mouse interactions.

Keyboard Commands:
- r: resets the program, setting up everything randomly 
- space: causes the program to run for one instance of time 
- g: causes the program to continuous run 
- c: sets the rules of the program to conway's game of life
- s: sets the rules of the program to seeds 
- u: sets the rules of the program to the non named rule set. 
- w: sets the entire gird to be dead 

Mouse Control:
- Mouse movement: Not sure if this required yet. 
- Mouse pressed: The organism at its coordinates becomes alive. 


### Classes
What classes will you be creating for this project? Include the instance variables and methods that you believe you will need. You will be required to create at least 2 different classes. If you are going to use classes similar to those we've made for previous assignments, you will have to add new features to them.

CLASS Environment 
- Instance variables:
  -Organisms [][] grid;  
  -int organismDensity; 
- METHODS:
  * constructor (int x, int y, density) // sets the size of the 2D array basedon x, y, and sets organismDensity to density
  * populate (organismDensity) //populates the 2d array based on organismDensity 
   * overload both using this ()
  * update () // tells each organism to update its next state based on its neighbors, then a separate loop to tell each organism to update its current state
   * overload this, so that the rule set changes based on which update method you are using, which might requires putting in some parameter from the driver file 
  * display () // loops through the array telling each organism to display itself 
  * mouseupdate (int mousex, int mousey) // method to change the state of the organism that the mouse clicks to alive

CLASS Organism. 
- Instance variables:
  - int currentState // 1 == alive, 0 == dead
  - int nextState // 1 == alive, 0 == dead
  - int size // ideally the size of each organism should be the width that one row fills the entire screen 
  - Pvector corner // the corner of each organism, to be later used for display 
- METHODS
  - constructor (int x, int y, int sz, int st) // makes the corner into pvecotr (x,y), size to sz, and state = st
  - a display () // fills it color based on its state and then creates a square to represent the organism 
  - updateNextState (int neighborState) // updates the organisms next state based on its neighbor 
  - changestate () // changes its current state to nextstate 
