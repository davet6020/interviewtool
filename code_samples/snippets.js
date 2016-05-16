var landscape = function() {
  var result = "";
  var flat = function(size) {
    for (var count = 0; count < size; count++)
      result += "_";
  };
  var mountain = function(size) {
    result += "/";
    for (var count = 0; count < size; count++)
      result += "'";
    result += "\\";
  };

  mountain(1);
  mountain(1);
  flat(1);
  mountain(1);
  mountain(1);
  
  return result;
};

console.log(landscape());


/*mountain(1);
mountain(1);
flat(1);
mountain(1);
mountain(1);*/
