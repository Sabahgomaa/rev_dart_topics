main() async {
  //Dart Streams and Stream
  var mySubscription;
//   mySubscription = getDate().map((event) => print('element = $event')).listen((e) {
//     // if (e == 5) mySubscription.cancel();
//     // print('e2=$e ');
//   },
//       onError: (err) => print('this is an error'),
//       cancelOnError: false,
//       onDone: () => print('ALL Done....'));
// }
  mySubscription = getDate().where((event) => event % 2 == 0).listen((e) {
    // if (e == 5) mySubscription.cancel();
     print('e2=$e ');
  },
      onError: (err) => print('this is an error'),
      cancelOnError: false,
      onDone: () => print('ALL Done....'));
}

Stream<int> getDate() async* {
  for (int i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
