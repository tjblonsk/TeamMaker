var lStations = [ "8th", "6th", "Union Square", "3rd", "1st" ];
var nStations = [ "Times Square", "34th", "28th", "23rd", "Union Square", "8th" ];
var sixStations = [ "Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place" ];
var gStations = [ "Greenpoint", "Nassau", "Metropolitan", "Broadway" ];

// write a function that accepts a line, and returns a function
// to calculate the distance between two stops on one line

function getDistanceForLine(line){

var stops = line;

  return function(board, exit) {

    return Math.abs(stops.indexOf(board) - stops.indexOf(exit));
  };
}

// e.g.,
var getLDistance = getDistanceForLine(lStations);
getLDistance('8th','6th');

