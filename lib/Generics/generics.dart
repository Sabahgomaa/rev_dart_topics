import 'employee.dart';

void main() {
//Dart Generics
  var list1 = GenericList<int>();
  list1.add(12);
  list1.add(3);
  var list2 = GenericList<String>();
  list2.add('mohamed');
  list2.add('ahmed');
  var list3 = GenericList<SampleClass>();
  var s1 = SampleClass();
  list3.add(s1);
  //Collections
  var courses = <String>[];
  courses.add('Dart');
  courses.addAll(['Flutter', 'Android', 'IOS']);
  print(courses);
  //Using collections literals => Map, Set ,Hash
  //List
  var names = <String>['Mohamed', 'Ahmed', 'Khaled'];
  print(names);
  //Set
  var uniqueNames = <String>{'Mohamed', 'Ahmed', 'Khaled'};
  print(uniqueNames);
  //Map
  var pages = <String, String>{
    'index.html': 'Home',
    "about.html": "About",
    'contact.html': 'Contact Us'
  };
  print(pages);
  //Restricting the parameterized
  var c = MyCollection<Employee>();
  print(c);
  print(first([0, 1, 2, 3, 4]));
}

class SampleClass {}

class GenericList<T> {
  void add(T input) {}
}

class MyCollection<T extends Employee> {}

//Generics method
T first<T>(List<T> ts) {
  T temp = ts[0];
  return temp;
}
