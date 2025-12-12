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
      fill(0, 255, 0);             // alive: green
    } else {
      fill(255, 0, 0);               // dead: red
    }

    stroke(80);              // grid line color
    square (corner.x, corner.y, size);
  }

  void updateNextState() {
    if (currentState == ALIVE) // by the rules if the organism is alive, and has 2 or 3 alive neighbors, then it remains alive
    {
      if (aliveNeighbors == 2 || aliveNeighbors == 3)
      {
        nextState = ALIVE;
      } else // else the organism dies
      {
        nextState = DEAD;
      }
    } else if (currentState == DEAD) // by the rules if the organism dead, it only comes to life if has 3 alive neighbors
    {
      if (aliveNeighbors == 3)
      {
        nextState = ALIVE;
      } //otherwise it stays dead
    }
  }

  void updateNextState (int temp)
  {
    if (currentState == DEAD)
    {
      if (aliveNeighbors == 2)
      {
        nextState = ALIVE;
      } else {
        nextState = DEAD;
      }
    } else if (currentState == ALIVE)
    {
      nextState = DEAD;
    }
  }

  void updateNextState (char temp)
  {
    if (currentState == DEAD)
    {
      if (aliveNeighbors == 2 || aliveNeighbors == 5)
      {
        nextState = ALIVE; 
      }
      else 
      {
        nextState = DEAD; 
      }
    }
    else if (currentState == ALIVE)
    {
      if (aliveNeighbors == 4)
      {
        nextState = ALIVE;
      }
      else 
      {
        nextState = DEAD;
      }
    }
  }

  void changeState()
  {
    currentState = nextState;
  }
}
