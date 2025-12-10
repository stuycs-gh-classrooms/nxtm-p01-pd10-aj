class Environment 
{
  Organism [][] grid; 
  int organismDensity; 
  int organismRow; // the height of each organism's cell 
  int organismCols; // the width of each organim's cell 
  
  Environment (int numRows, int numCols, int OrganismDt)
  { 
    organismDensity = OrganismDt;
    organismRow = height / numRows; 
    organismCols = width / numCols;
    grid = new Organism [numRows][numCols];
  }
  
  void populate()
  {
    for (int y  = 0; y < grid.length; y++)
    {
      for (int x = 0; x < grid[y].length; x++) 
      { 
        int probability = int(random(0,101)); 
        if (probability <= organismDensity) 
        {
          int state = ALIVE; 
          
        }
       grid[y][x] = new Organism(organismCols * x, organismRow * y, organismCols, state); 
      }
    }
    
  }
}
