void main() {
  int age = 18;
  age = 19;
  print(age);
  print('Yosh::$age');

  String name = "John";
  print(name);
  print('Name::$name\nage::$age');
  var age2 = 18;
  var name2 = "John";

  const num pi = 3.14;
  const num other = pi;

  final num pi2;
  pi2 = 3.14;
  final String name3;
  name3 = name;
  print('name3::$name3');
}
