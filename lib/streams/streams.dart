main() async {
  //Streams
  var data = getData().asBroadcastStream();
  //single subscription stream
//   data.listen((int e) {
//     print('e=$e');
//   });
// //Broadcast stream
//   data.listen((int e) {
//     print('e2=${e * 2}');
//   });

  await for(var i in getData()){
    print('i =$i');
  }
}

Stream<int> getData() async* {
//  return Stream.periodic(Duration(seconds: 2), (int i) => i);
  for (int i = 0; i < 20; i++) {
    await Future.delayed(Duration(seconds: 2));
    yield i;
  }
}
