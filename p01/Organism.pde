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
  //tell each object to display itelf
  //an
  }
}
