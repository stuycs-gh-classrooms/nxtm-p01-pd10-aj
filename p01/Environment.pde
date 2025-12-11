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
        int probability = int(random(0, 101));
        if (probability <= organismDensity)
        {
          grid[y][x] = new Organism(organismCols * x, organismRow * y, organismCols, ALIVE);
        } else
        {
          grid[y][x] = new Organism(organismCols * x, organismRow * y, organismCols, DEAD);
        }
      }
    }
  }

  void display ()
  {
    for (int y = 0; y < grid.length; y++)
    {
      for (int x = 0; x < grid[y].length; x ++)
      {
        grid[y][x].display();
      }
    }
  }

  void update ()
  {
    for (int y = 0; y < grid.length; y++)
    {
      for (int x = 0; x < grid[y].length; x ++)
      {
        grid[y][x].aliveNeighbors = 0;
        if (x > 0 && grid[y][x-1].currentState == ALIVE) // checks the left neighbor, if it exists
        {
          grid[y][x].aliveNeighbors ++;
        }
        if (x < (grid[y].length - 1) && grid[y][x+1].currentState == ALIVE) // checks the neighbor to the right, if it exists
        {
          grid[y][x].aliveNeighbors ++;
        }
        if (y > 0 && grid[y-1][x].currentState == ALIVE) //checks the neighbor to the top, if it exists
        {
          grid [y][x].aliveNeighbors ++;
        }
        if (y < grid.length -1 && grid[y+1][x].currentState == ALIVE) //checks the neighbor to the bottom, if it exists
        {
          grid [y][x].aliveNeighbors ++;
        }
        if (x > 0 && y > 0 && grid [y-1][x-1].currentState == ALIVE) //checks the neighbor to top left, if it exists
        {
          grid [y][x].aliveNeighbors ++;
        }
        if (x < grid[y].length - 1 && y > 0 && grid [y-1][x+1].currentState == ALIVE) //checks the neighbor to top right, if it exists
        {
          grid [y][x].aliveNeighbors ++;
        }
        if (x < grid[y].length - 1 && y < grid.length - 1 && grid [y+1][x+1].currentState == ALIVE) //checks the neighbor to bottom right, if it exists
        {
          grid [y][x].aliveNeighbors ++;
        }
        if (x > 0  && y < grid.length - 1 && grid [y+1][x-1].currentState == ALIVE) //checks the neighbor to bottom left, if it exists
        {
          grid [y][x].aliveNeighbors ++;
        } 
        grid[y][x].updateNextState ();         
      }
    }
    
    for (int y = 0; y < grid.length; y++) // must keep this separate so you don't update the state too early 
    {
      for (int x = 0; x < grid[y].length; x ++)
      {
        grid[y][x].changeState();
      }
    }
  }
  
    void updateSeed ()
  {
    for (int y = 0; y < grid.length; y++)
    {
      for (int x = 0; x < grid[y].length; x ++)
      {
        grid[y][x].aliveNeighbors = 0;
        if (x > 0 && grid[y][x-1].currentState == ALIVE) // checks the left neighbor, if it exists
        {
          grid[y][x].aliveNeighbors ++;
        }
        if (x < (grid[y].length - 1) && grid[y][x+1].currentState == ALIVE) // checks the neighbor to the right, if it exists
        {
          grid[y][x].aliveNeighbors ++;
        }
        if (y > 0 && grid[y-1][x].currentState == ALIVE) //checks the neighbor to the top, if it exists
        {
          grid [y][x].aliveNeighbors ++;
        }
        if (y < grid.length -1 && grid[y+1][x].currentState == ALIVE) //checks the neighbor to the bottom, if it exists
        {
          grid [y][x].aliveNeighbors ++;
        }
        if (x > 0 && y > 0 && grid [y-1][x-1].currentState == ALIVE) //checks the neighbor to top left, if it exists
        {
          grid [y][x].aliveNeighbors ++;
        }
        if (x < grid[y].length - 1 && y > 0 && grid [y-1][x+1].currentState == ALIVE) //checks the neighbor to top right, if it exists
        {
          grid [y][x].aliveNeighbors ++;
        }
        if (x < grid[y].length - 1 && y < grid.length - 1 && grid [y+1][x+1].currentState == ALIVE) //checks the neighbor to bottom right, if it exists
        {
          grid [y][x].aliveNeighbors ++;
        }
        if (x > 0  && y < grid.length - 1 && grid [y+1][x-1].currentState == ALIVE) //checks the neighbor to bottom left, if it exists
        {
          grid [y][x].aliveNeighbors ++;
        } 
        grid[y][x].updateNextStateSeed ();    
      }
    }
    
    for (int y = 0; y < grid.length; y++) // must keep this separate so you don't update the state too early 
    {
      for (int x = 0; x < grid[y].length; x ++)
      {
        grid[y][x].changeState();
      }
    }
  }
}
