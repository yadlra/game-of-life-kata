function make2DArray(cols, rows) {
  let arr = new Array(cols);
  for (let i = 0; i < arr.length; i++) {
    arr[i] = new Array(rows);
  }
}
//This will make an empty 2D array with nothing in it
let grid;
let cols = 10;
let rows = 10;
