void main(List<String> arguments) {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("----------------------------------------------");
  print('Dart Quick Start Chapter 4');
  print('4. Inheritance and Mixins in Dart');
  //https://learning.oreilly.com/library/view/quick-start-guide/9781484255629/A490744_1_En_4_Chapter.html

  // Inheritance
  code4_1();
  code4_2();
  //Multilevel Inheritance
  code4_3();
  // Mixins
  code4_4();


  
  
}
//----------------------------------------------
//----------------------------------------------
class Animal4 {
  String name = "Animal";
  Animal4(){
    print("I am Animal class constructor.");
  }
  Animal4.namedConstructor(){
    print("This is parent animal named constructor.");
  }
  void showName(){
    print(this.name);
  }
  void eat(){
    print("Animals eat everything depending on what type it is.");
  }
}

class Dog4 {
  void canRun(){
    print("I can run.");
  }
}

class Cat4 extends Animal4 with Dog4 {//reusing another class
  //overriding parent constructor
  //although constructors are not inherited
  Cat4() : super(){
    print("I am child cat class overriding super Animal class.");
  }
  Cat4.namedCatConstructor() : super.namedConstructor(){
    print("The child cat named constructor overrides the parent animal named constructor.");
  }
  @override
  void showName(){
    print("Hi from cat.");
  }
  @override
  void eat(){
    super.eat();
    print("Cat doesn't eat vegetables..");
  }
}

void code4_4() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 4.3");
  var cat = Cat4();
  cat.name = "Meaow";
  cat.showName();
  cat.eat();
  var anotherCat = Cat4.namedCatConstructor();
  anotherCat.canRun();
}
//----------------------------------------------
//----------------------------------------------
class Animal3 {
  String name = "Animal";
  Animal3(){
    print("I am Animal class constructor.");
  }
  Animal3.namedConstructor(){
    print("This is parent animal named constructor.");
  }
  void showName(){
    print(this.name);
    print("Hi from ${this.name}");
  }
  void eat(){
    print("Animals eat everything depending on what type it is.");
  }
}
class Dog3 extends Animal {
  //overriding parent constructor
  //although constructors are not inherited
  Dog3() : super(){
    print("I am child class dog overriding super Animal class.");
  }
  Dog3.namedDogConstructor() : super.namedConstructor(){
    print("The child dog named constructor overrides the parent animal named constructor.");
  }
  Dog3.anotherNamedConstructor(){
    print("This is parent Dog named constructor.");
  }
  @override
  void showName(){
    print("Hi from parent dog.");
    print(this.name);
  }
  @override
  void eat(){
    super.eat();
    print("Dog doesn't eat vegetables..");
  }
}
class PuppyDog3 extends Dog3 {
  //overriding parent constructor
  //although constructors are not inherited
  PuppyDog3() : super(){
    print("I am child class puppy dog overriding my immediate parent Dog class.");
  }
  PuppyDog3.namedDogConstructor() : super.anotherNamedConstructor(){
    print("The child puppy dog named constructor overrides the parent Dog another named constructor.");
  }
  @override
  void showName(){
    print("Hi from puppy dog.");
    print(this.name);
  }
  @override
  void eat(){
    super.eat();
    print("Puppy Dog eats milk only ...");
  }
}

void code4_3() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 4.3");
  var animal = Animal();
  animal.name = "Cow";
  animal.showName();
  var dog = Dog3();
  dog.name = "Lucky";
  dog.showName();
  dog.eat();
  var anotherDog = Dog3.namedDogConstructor();
  var puppy = PuppyDog3();
  puppy.name = "I am offspring of Lucky";
  puppy.showName();
  puppy.eat();
  var anotherPuppy = PuppyDog3.namedDogConstructor();
}
//----------------------------------------------
//----------------------------------------------
class Animal2 {
  String name = "Animal";
  Animal2(){
    print("I am Animal class constructor.");
  }
  Animal2.namedConstructor(){
    print("This is parent animal named constructor.");
  }
  void showName(){
    print(this.name);
    print("Hi from ${this.name}");
  }
  void eat(){
    print("Animals eat everything depending on what type it is.");
  }
}
class Cat2 extends Animal2 {
  //overriding parent constructor
  //although constructors are not inherited
  Cat2() : super(){
    print("I am child cat class overriding super Animal class.");
  }
  Cat2.namedCatConstructor() : super.namedConstructor(){
    print("The child cat named constructor overrides the parent animal named constructor.");
  }
  @override
  void showName(){
    print("Hi from cat.");
    print(this.name);
  }
  @override
  void eat(){
    super.eat();
    print("Cat doesn't eat vegetables..");
  }
}

class Cow2 extends Animal2 {
  //overriding parent constructor
  //although constructors are not inherited
  Cow2() : super(){
    print("I am child cow class overriding super Animal class.");
  }
  Cow2.namedCatConstructor() : super.namedConstructor(){
    print("The child cow named constructor overrides the parent animal named constructor.");
  }
  @override
  void showName(){
    print("Hi from cow.");
    print(this.name);
  }
  @override
  void eat(){
    super.eat();
    print("Cow does eat grass..");
  }
}


void code4_2() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 4.2");
  var cow = Cow2();
  cow.name = "Daisy";
  cow.showName();
  var cat = Cat2();
  cat.name = "Meaow";
  cat.showName();
  cat.eat();
  var anotherCat = Cat2.namedCatConstructor();
}
//----------------------------------------------
//----------------------------------------------
class Animal {
  String name = "Animal";
  Animal(){
    print("I am Animal class constructor.");
  }
  Animal.namedConstructor(){
    print("This is parent animal named constructor.");
  }
  void showName(){
    print(this.name);
  }
  void eat(){
    print("Animals eat everything depending on what type it is.");
  }
}

class Cat extends Animal {
  //overriding parent constructor
  //although constructors are not inherited
  Cat() : super(){
    print("I am child cat class overriding super Animal class.");
  }
  Cat.namedCatConstructor() : super.namedConstructor(){
    print("The child cat named constructor overrides the parent animal named constructor.");
  }
  @override // method overriding
  void showName(){
    print(this.name);
  }
  @override
  void eat(){
    super.eat();
    print("Cat doesn't eat vegetables..");
  }
}

void code4_1() {
  print("----------------------------------------------");
  print("----------------------------------------------");
  print("Code 4.1");

  var cat = Cat();
  cat.name = "Meaow";
  cat.showName();
  cat.eat();
  print("---  ---   ---   ---");
  var anotherCat = Cat.namedCatConstructor();

}
