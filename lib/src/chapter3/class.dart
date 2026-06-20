// ignore_for_file: avoid_print
// ignore_for_file: unused_local_variable
// ignore_for_file: strict_top_level_inference

void main() {
  var ironman = IronMan();
  ironman.walk();
  ironman.fly();

  var hulk = Hulk();
  hulk.walk();
  hulk.jump();
}

abstract class Human {
  void walk() => print('Human is walking');
}

class IronMan extends Human {
  void fly() => print('IronMan is flying');
}

class Hulk extends Human {
  void jump() {
    print('Hulk is jumping');
  }
}
