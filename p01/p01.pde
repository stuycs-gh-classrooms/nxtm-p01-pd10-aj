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

int numRows = 60; 
int numCols = 60;
int density = 1;

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
    E.update();
  }
}

void keyPressed ()
{
  if (key == 'r')
  {
    E.populate ();
  }
  if (key == ' ')
  {
   E.update();
  }
  if (key == 's') 
  {
   E.updateSeed ();
  }
}
