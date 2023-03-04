main() async {
  //Asynchronous Programming:future,async,await
  // print(showUserPosts());

  print('Before fetch user posts');
  print(await fetchUserPosts());
  print('After fetch user posts');
}

//synchronous function
// String showUserPosts() {
//   var posts = fetchUserPosts();
//   return 'Show All $posts';
// }
//asynchronous function with Completed with value(anyType)
Future<String> showUserPosts() async {
  var posts = await fetchUserPosts();
  return 'Show All $posts';
}

//Completed with value(void)
// Future<void> fetchUserPosts() async {
//   //simulate connect to the server get user posts
//   Future.delayed(Duration(seconds: 6), () => print('User Posts'));
// }

// Completed with value(anyType)
Future<String> fetchUserPosts() async {
  //simulate connect to the server get user posts
  return Future.delayed(Duration(seconds: 6), () => 'User Posts');
}

//Completed with Error
// Future<void> fetchUserPosts() async {
//   //simulate connect to the server get user posts
//   Future.delayed(Duration(seconds: 6), () => throw Exception('Invalid User Id'));
// }
