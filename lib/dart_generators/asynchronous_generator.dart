main() async {
  /*
  Synchronous Generator : Returns an Iterable Object
  Asynchronous Generator :Returns a Stream object
   */
  //there is 2 ways to work with asynchronous function
  // var result = await fetchDouble(3);
  // print('result = $result');
  // fetchDouble(4).then((value) => print('result = $value'));
  fetchDoubles(2, 10).listen((event) {print('result = $event');});
}

//asynchronous function
Future<int> fetchDouble(int number) {
  return Future.delayed(Duration(seconds: 2), () => number + 2);
}

Stream<int> fetchDoubles(int start, int end) async* {
  // for (int i = start; i <= end; i++) {
  //   yield await fetchDouble(i);
  // }
  if(start<=end){
    yield await fetchDouble(start);
    yield* fetchDoubles(start+1, end);
  }
}
