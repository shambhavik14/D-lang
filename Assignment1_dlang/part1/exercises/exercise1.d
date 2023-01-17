// Modify one of the examples from https://tour.dlang.org/
// Place it in this file.
// We will run these with rdmd
import std.stdio: writeln, write, readf;

void main() {
	float a = 0;
	float b = 0;
	char operator;

	write("Enter first number: ");
	readf(" %s", a);

	write("Enter second numberi: ");
	readf(" %s ", b);
	
	write("Enter the operator");
	readf(" %s ", operator);

	if(operator == '+'){
		writeln(a, operator, b, "=", a+b);
	}else if(operator == '-'){
		writeln(a, operator, b, "=", a-b);
	}else if(operator == '*'){
		writeln(a, operator, b, "=", a*b);
	}else if(operator == '/'){
		writeln(a, operator, b, "=", a/b);
	}else {
		writeln("Unknown operator, try again!");
	}
}


