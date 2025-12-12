/**
Alex Jiang and Tahsan Kashem 
AJ
NeXTCS
P01 -- Making cellular autonoma
2025-12-09
time spent: 
*/
Environment E; 

int ALIVE = 1; //State of living
int DEAD = 0; //State of living
int Conway = 2; //Conway rule set
int Seed = 3; // Seed rule set
int Unnamed = 4; // Unamed rule set

int numRows = 60; 
int numCols = 60;
int density = 10;

void setup ()
{
  frameRate (60);
  size (600, 600); 
  E = new Environment (numRows, numCols, density);
  E.populate();
}

void draw()
{
  E.display ();
  if (key == 'g')
  {
    if (frameCount % 60 == 0) // to slow down the infinite runs, because every frame is too fast
    {
    E.update(Conway); //would infinitelyrun Conway's game of life rule set, but this can be changed manually 
    }
  }
}

void keyPressed ()
{
  if (key == 'r')
  {
    E.populate (); // resets the grid 
  }
  if (key == ' ') // uses Conway's game of life rule set
  {
   E.update(Conway); // uses the conway rule set
  }
  if (key == 's') 
  {
   E.update (Seed); // uses the seed rule set 
  }
  if (key == 'u')
  {
   E.update (Unnamed);
  }
  if (key == 'w')
  {
    E.populate (DEAD); // the method in actually doens't do anything with seed, we just use the paramater as a way to tell between the overloaded methods
    //so technically you can put any integer and it works 
    E.stepCount = 0; //resets the stepcount 
  }
}

void mousePressed ()
{
  E.mousePopulate (mouseX, mouseY); // takes the mouse's current cordinates and coverts it to grid coordinates using floor and 
}
