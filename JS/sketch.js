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
let resolution = 40; //for the squares

function setUp() {
    createCanvas(400, 400); //make canvas square
    cols = width / resolutions;
    rows = height / resolution; //with this i can dynamically make a 2d array

    grid = make2DArray(10, 10);
    for (let i = 0; i < cols; i++) {
        for (let j = 0; j < rows; j++) {
            //now I can do a nested loop so that >
            grid[i][j] = floor(random(2)); //this is a nested loop that will make the 2d array that is empty
            //& iterate over every column and row and fill each with a random number 0 or 1
        }
    }
}

function draw() {
    background(0);
    for (let i = 0; i < cols; i++) {
        for (let j = 0; j < rows; j++) {
            let x = i * resolution;
            let y = j * resolution;
            if (grid[i][j] == 1) {
                fill(255);
                rect(x, y, resolution, resolution);
            }
            //write rectangle with width and resolution
        }
    }
}