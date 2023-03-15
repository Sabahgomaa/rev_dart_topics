// Imagine this returns Flutter widgets
import 'package:rev_dart_programming_code2/sealed_unions/weather_states.dart';

// String? widgetBuilder(WeatherState state) {
//   if (state is WeatherInitial) {
//     return "Some initial widget";
//   } else if (state is WeatherLoading) {
//     return "Circular progress indicator";
//   } else if (state is WeatherLoaded) {
//     return "The temperature is ${state.temperature}";
//   }
//   return null;
// }
main(List<String> arguments) {
  // Instantiating the _WeatherLoades state with a factory
  // final fakeWidget = widgetBuilder(WeatherState.loaded(42));
}

// Imagine this returns Flutter widgets
String widgetBuilder(WeatherState state) {
  return state.join(
    (initial) => "Some initial widget",
    (loading) => "Circular progress indicator",
    (loaded) => "The temperature is ${loaded.temperature}",
  );
}
