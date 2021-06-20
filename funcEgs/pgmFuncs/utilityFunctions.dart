// @dart=2.9

welcomeUser({int age, String name, String gender = 'f'}) {
  var a = 2;
  var b = 3;
  var c = a + b;
  //if(name == null){
  //  name = '';
  //}
  print('$gender Hello ${name ?? 'haaa'}, jaklsdjkas $age');
  print('Welcome ${gender ?? 'haaaa'}');
  //print('another print statement $c');
}
