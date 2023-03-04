import 'dart:async';

main() {
  var ng = NumberGenerator();
  ng.output.listen((event) {
    print('event =$event');
  });
  ng.sc.sink.add(101);
  ng.sc.sink.add(105);
}

class NumberGenerator {
  var sc = StreamController<int>();
  var counter = 1;

  NumberGenerator() {
    Timer.periodic(Duration(seconds: 2), (timer) {
      sc.sink.add(counter);
      counter++;
    });
  }

  Stream<int> get output => sc.stream;
}
