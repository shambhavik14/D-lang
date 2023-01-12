import std.stdio;
import std.json;
import std.file;
import std.conv;
import std.algorithm;
import std.array;

void main(){

	// Example of opening a file at bottom:
	// https://dlang.org/library/std/stdio/file.html
	// Note: I'm assuming you're using: rdmd ./src/cars.d to run this
	auto myFile = File("./data/data.json", "r");

	// Reading file as a string
	// The 'byLine' function will read the file by line,
	// and we'll join the contents with each \n	
	auto jsonFileContents = myFile.byLine.joiner("\n");

	// If the above is confusing comment it out, and
	// try a small sample like this below.
//	string s = myFile.byLine.joiner("\n");
//	writeln(s); 
	
	// You can then practice parsing the jSON contents
	 auto j=parseJSON(jsonFileContents);

 	// I think it's useful to then print the data
	// for debugging pursues.
	// Uncomment below if it's useful.
	// 
	// writeln(j);
	// writeln(typeid(j));


	// YOUR Task is to print out all of the cars
	// that have '4' doors from the data.
	// 
	// Try playing around with the data here
	// writeln(j["cars"]["Ford"]);
	// writeln(j.object.keys());
	// writeln(j["cars"].object.keys());


}
