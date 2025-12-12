/**
Alex Jiang and Tahsan Kashem 
AJ
NeXTCS
P01 -- Making cellular autonoma
2025-12-09
time spent: 
*/
Environment E; 

int ALIVE = 1; 
int DEAD = 0;
int Conway = 2; 
int Seed = 3; 
int unknown = 4;

int numRows = 60; 
int numCols = 60;
int density = 10;

void setup ()
{
  size (600, 600); 
  E = new Environment (numRows, numCols, density);
  E.populate();
}

void draw()
{
  E.display ();
  if (key == 'g')
  {
    E.update(Conway); //would infinitelyrun Conway's game of life rule set, but this can be changed manually 
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
  if (key == 'w')
  {
    E.populate (DEAD);  // the method in actually doens't do anything with seed, we just use the paramater as a way to tell between the overloaded methods
    //so technically you can put any integer and it works 
  }
}

void mousePressed ()
{
  E.mousePopulate (mouseX, mouseY); // takes the mouse's current cordinates and coverts it to grid coordinates using floor and 
}
