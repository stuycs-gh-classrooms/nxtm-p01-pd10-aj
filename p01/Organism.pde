class Organism
{
  int currentState; //1 == alive, 0 == dead
  int nextState; //1 == alive, 0 == dead
  int size; // the size should be set to width/numCols
  PVector corner; // used for display;

  Organism (int x, int y, int sz, int st)
  {
    currentState = st; // sets current state to whatever st is alive or dead
    size = sz; //sets the current size to sz
    corner = new PVector (x, y); // sets the corner of every object to the inputted x and y value of each corner
  }

 void display() {
    if (currentState == 1) {
      fill(255);             // alive: white
    } else {
      fill(0);               // dead: black
    }

    stroke(80);              // grid line color
    rect(corner.x, corner.y, size, size);
  }
  
  void updateNextState(int neighborState) {
    int aliveNeighbors = neighborState;

    if (currentState == 1) {                 // currently alive
      if (aliveNeighbors == 2 || aliveNeighbors == 3) {
        nextState = 1;                       // stays alive
      } else {
        nextState = 0;                       // dies
      }
    } else {                                 // currently dead
      if (aliveNeighbors == 3) {
        nextState = 1;                       // becomes alive
      } else {
        nextState = 0;                       // stays dead
      }
    }
  }


  void changeState() {
    currentState = nextState;
  }
}
