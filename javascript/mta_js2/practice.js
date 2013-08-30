function lineNames() {
var lines = "";
  for (var i = 0; i < trains.length; i += 1){
    lines += trains[i].name + '\n';
  }
  return lines.trim();
};


// Train.prototype.stations= function() {
//   for (var i = 0; i < stations.length; i += 1){
//     return this.stations[i];
//   };
// };


function stations(train) {
var stations = "";
  for (var i = 0; i < train.stations.length; i += 1) {
    stations += train.stations[i] + '\n';
  }
  console.log(stations.trim());
}
