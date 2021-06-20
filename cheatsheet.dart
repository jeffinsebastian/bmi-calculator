// @dart=2.9
/*
DART CHEATSHEET

1. I/O

  1.1. stdin
    - Standart Input

  1.2. stdout
    - Standart Output

  1.3. stderr
    - Standart Error


2. COMMENTS

  2.1. Single Line Comments
    - Starts with two forward slashes - //
    - And will only comment the rest of the line

  2.2. Multi Line Comments
    - Starts with a forward slash and star - /*
    - Ends with a star and forward slash - */
    - Can have any number of lines or parts of it


3. VARIABLES OR DATA TYPES

  3.1. int
    - Indicates an integer
    - Cannot store decimal numbers

  3.2. double
    - Can store floating point numbers ( decimals )

  3.3. bool
    - can be either true or false

  3.4. String
    - Used to represent text
    - Sequence of Unicode UTF-16 code units
    - Must  be in quotes ( sinle or double - '/" )

  3.5. Lists
    - Collection of the ordered objects

  3.6. Maps
    - Used to store values in key-value pairs

  3.7. Runes
    - Special string of Unicode UTF-32 units
    - must start with \u (unicode) followed by the hexadecimal integer

  3.6. dynamic
    - The dynamic keyword is used for type annotation explicitly


4. OPERATORS

  4.1. Arithmetic Operators
    4.4.1.  Addition(+)
      - Adds the left operand to the right operand
    4.4.2.	Subtraction(-)
      - Subtracts the right operand from the left operand
    4.4.3.  Divide(/)
      - Divides the first operand by the second operand and returns quotient
    4.4.4.	Multiplication(*)
      - Multiplies the one operand to another operand
    4.4.5.	Modulus(%)
      - Returns a reminder after dividing one operand to another
    4.4.6.	Division(~/)
      - Divides the first operand by the second operand and returns integer quotient
    4.4.7.	Unary Minus(-expr)
      - Used with a single operand to change the sign of it
    4.4.8. Increment and Decrement (++,--)
      - Add or subtract 1 from the operand
      - Supports prefix and postfix operation

  4.2. Assignment Operators
    4.2.1. = (Assignment Operator)
      - Assigns the right expression to the left operand.
    4.2.2. +=(Add and Assign)
      - Adds right operand value to the left operand and resultant assign back to the left operand
    4.2.3. -=(Subtract and Assign)
      - Subtracts right operand value from left operand and resultant assign back to the left operand
    4.2.4. *=(Multiply and Assign)
      - Multiplies the operands and resultant assign back to the left operand
    4.2.5. /=(Divide and Assign)
      - Divides the left operand value by the right operand and resultant assign back to the left operand
    4.2.6. ~/=(Divide and Assign)
      - Divides the left operand value by the right operand and integer remainder quotient back to the left operand
    4.2.7. %=(Mod and Assign)
      - Divides the left operand value by the right operand and remainder assign back to the left operand


  4.3. Relational Operators
  // int a = 20, b = 10;
    4.3.1.	>(greater than)
      - a>b will return true.
    4.3.2.	<(less than)
      - a<b will return false.
    4.3.3.	>=(greater than or equal to)
      - a>=b will return true.
    4.3.4.	<=(less than or equal to)
      - a<=b will return false.
    4.3.5.	==(is equal to)
      - a==b will return false.
    4.3.6.	!=(not equal to)
      - a!=b will return true.

  4.4. Type test Operators
    4.4.1.	as  - It is used for typecast.
    4.4.2.	is  - It returns TRUE if the object has specified type.
    4.4.3.	is! - It returns TRUE if the object has not specified type.

  4.5. Logical Operators
    4.5.1.	&&(Logical AND) - It returns if all expressions are true.
    4.5.2.	||(Logical OR)  - It returns TRUE if any expression is true.
    4.5.3.	!(Logical NOT)  - It returns the complement of expression.

  4.7. Conditional Operators
    4.7.1. condition ? exp1 : exp2
    4.7.2. exp1 ?? expr2
      - if exp1 is null then expr2 else expr1

  4.8. Casecade notation(..) Operators
    - The Cascade notation Operators (..) is used to evaluate a series of operation on the same object
    - It is identical to method chaining but avoids several steps
    - And eliminates the need to store results in temporary variables







source:
  https://www.javatpoint.com/dart-programming
  https://dart.dev/guides/language/language-tour
  https://api.dart.dev/stable/2.13.3/dart-core/dart-core-library.html
*/

// imports
import 'dart:io';

main(List<String> args) {
  stdin.readLineSync();
  newprint('hahah');
  print('');
  stdout.writeln('jeffin');
  stdout.write('alan\n');
  stderr.addError('invalid option');
}

newprint(String message) {
  stdout.write(message + '\n');
}
