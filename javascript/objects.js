// String literal, string primitive
// This is not an object
// This doesn't have any of its own functions
var schoolName = "General Assembly"

// When I call this, it temporarily makes a String Object around it.
// Slower. I'll talk about why in a second
var upperCaseSchoolName = schoolName.toUpperCase

/*
In the above, here's what happens:
1) It creates a String Object that has the same value as the primitive
2) It runs the function on it, returns the computed value
3) It throws away the temporary String Object
*/

// String object
// This is an object
// This has functions
// I can add functions to it, and to its 'prototype' (what it inherits from)
var mySchoolName = new String("General Assembly")

// This has functions!
var upperCaseSchoolName = mySchoolName.toUpperCase

// This is a single Object.
me = {
  name: "David",
  age: 30,
  heightInInches: 70,
  yearBorn: function() {
    return 2013 - this.age;
  }
}

me.heightInFeetInches = function () {
  var feet = Math.floor(this.heightInInches / 12);
  var inches = this.heightInInches % 12;
  return feet + " feet, " + inches + " inches";
}

// This is a new type of Object, called Person
function Person(name, age, heightInInches) {
  this.name = name;
  this.age = age;
  this.heightInInches = heightInInches;
}

var chris = new Person("Chris Clearfield", 30, 73)

// We add this function to the Person. Now all instances of the Person can call this.
Person.prototype.heightInFeetInches = function () {
  var feet = Math.floor(this.heightInInches / 12);
  var inches = this.heightInInches % 12;
  return feet + " feet, " + inches + " inches";
}

// Declarative Function
// Are immediately named
function jump() {
  return "How high?"
}

// Function Literal
// Are assigned to something
jump = function() {
  return "How high?"
}