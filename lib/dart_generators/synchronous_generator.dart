
main() {
  //var generator
  var courses = MyCourses(['Dart', 'Android', 'IOS', 'Java']);
  for (var i in courses) {
    print('course = $i');
}
  // courses.forEach((element) {
  //   print('course = $element');
  // });
  var numbers = getRange(1, 5);
  for (var number in numbers) {
    print('number is $number');
  }
}

// Iterable<int> getRange(int start, int end) sync* {
//   for (int i = start; i <= end; i++) {
//     yield i;
//   }
//using recursive
// Iterable<int> getRange(int start, int end) sync* {
//   if (start <= end) {
//     yield start;
//     for (var val in getRange(start + 1, end)) {
//       yield val;
//     }
//   }
// }
// Using yield* with recursive function
Iterable<int> getRange(int start, int end) sync* {
  if (start <= end) {
    yield start;
    yield* getRange(start + 1, end);
  }
}

class MyCourses extends Iterable<String> {
  List<String> courses;

  MyCourses(this.courses);

  @override
  Iterator<String> get iterator => courses.iterator;
}
