class Environment 
{
  Organism [][] grid; 
  int organismDensity; 
  int organismRow; // the height of each organism's cell 
  int organismCols; // the width of each organim's cell 
  
  Environment (int numRows, int numCols, int OrganismDt)
  {
    organismRow = height / numRows; 
    organismCols = width / numCols;
    grid = new Organism [numRows][numCols];
  }
}
