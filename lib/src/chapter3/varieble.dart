// ignore_for_file: avoid_print
// ignore_for_file: unused_local_variable
void main() {
  // // var
  // var x = 10; // var is a variable
  // x = 20; // OK: x is a variable

  // // final
  // final x = 10; // final is a constant variable
  // x = 20; // Error: Cannot assign to a final variable.

  // String y = "Hello";

  // // const
  // const int x = 10; // const is a constant variable
  // x = 20; // Error: Cannot assign to a const variable.

  var name = "Dart";
  var city = "london";
  const x = 10;
  print("Hello $name ! welcome to $city. ");
  print("New value of x is ${x + 5}");
  // var final const

  print('I\'m Learning Dart Programming Language'); // use \' for single quote
  print('I\'m Learning Dart \n Programming Language'); // use \n for new line
  print("""
    I'm Learning Dart
    Programming Language
    """); // use """ for multi-line string
}
