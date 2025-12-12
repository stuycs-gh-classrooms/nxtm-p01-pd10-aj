# Changes 

The color green will be used to represent an alive organism 
The color red will represent a dead organism.

Adding method return types for our classes. We are pretty sure that we don't need a method that returns anything. 

CLASS Environment 
- Instance variables:
  * Organisms [][] grid;  
  * int organismDensity;
    
- METHODS:
  * void constructor (int x, int y, density) // sets the size of the 2D array basedon x, y, and sets organismDensity to density
  * void populate (organismDensity) //populates the 2d array based on organismDensity 
   - overload both using this ()
  * void update () // tells each organism to update its next state based on its neighbors, then a separate loop to tell each organism to update its current state
   - overload this, so that the rule set changes based on which update method you are using, which might requires putting in some parameter from the driver file 
  * void display () // loops through the array telling each organism to display itself 
  * void mouseupdate (int mousex, int mousey) // method to change the state of the organism that the mouse clicks to alive

CLASS Organism. 
- Instance variables:
  - int currentState // 1 == alive, 0 == dead
  - int nextState // 1 == alive, 0 == dead
  - int size // ideally the size of each organism should be the width that one row fills the entire screen 
  - Pvector corner // the corner of each organism, to be later used for display 
- METHODS
  -  void constructor (int x, int y, int sz, int st) // makes the corner into pvecotr (x,y), size to sz, and state = st
  - void display () // fills it color based on its state and then creates a square to represent the organism 
  - void updateNextState (int neighborState) // updates the organisms next state based on its neighbor 
  - void changestate () // changes its current state to nextstate 


# Updated Changes 
 * For our Organism class, we had to create a new int attribute called aliveNeighbors, which keeps track of how many alive neighbors each organism has.
 * For overloading our functions, we abused how procesing uses paramaters to determinate between overloaded methods. So we used inputs that didn't do anything that had diff variable types. 


