class Organism
{
  int currentState; //1 == alive, 0 == dead
  int nextState; //1 == alive, 0 == dead
  int size; // the size should be set to width/numCols
  int aliveNeighbors; // counts the neighbors that are alive
  PVector corner; // used for display;

  Organism (int x, int y, int sz, int st)
  {
    currentState = st; // sets current state to whatever st is alive or dead
    size = sz; //sets the current size to sz
    corner = new PVector (x, y); // sets the corner of every object to the inputted x and y value of each corner
  }

 void display() {
    if (currentState == ALIVE) {
      fill(255);             // alive: white
    } else {
      fill(0);               // dead: black
    }

    stroke(80);              // grid line color
    rect(corner.x, corner.y, size, size);
  }
  
  void updateNextState(int neighborCt) {
    aliveNeighbors = neighborCt;
    if (currentState == ALIVE)
    {
    if (aliveNeighbors == 2 || aliveNeighbors ==3)
    {
      nextState = ALIVE;
    }  
    }
    
    if (currentState == DEAD)
    {
      if (aliveNeighbors == 3)
      {
       nextState = ALIVE;
      }
    }
    else {
      nextState = DEAD;
    }
    
  }
  
  void changeState() {
    currentState = nextState;
  }
}
