function make2DArray(cols, rows) {
    let arr = new Array(cols); //i first need some sort of array
    for (let i = 0; i < arr.length; i++) {
        arr[i] = new Array(rows);
    } //make the array
    return arr; //now return it
}
//This will make an empty 2D array with nothing in it
let grid;
let cols = 10;
let rows = 10;
let resolution = 40;

function setUp() {
    grid = make2DArray(10, 10);
    for (let i = 0; i < cols; i++) {
        for (let j = 0; j < rows; j++) {
            //now I can do a nested loop so that >
            grid[i][j] = floor(random(2)); //this is a nested loop that will make the 2d array that is empty
            //& iterate over every column and row and fill each with a random number 0 or 1
        }
    }
}