import 'package:sealed_unions/sealed_unions.dart';
// abstract class WeatherState {}
//
// class WeatherInitial extends WeatherState {}
//
// class WeatherLoading extends WeatherState {}
//
// class WeatherLoaded extends WeatherState {
//   final int temperature;
//
//   WeatherLoaded(this.temperature);
// }
// All the possible types of WeatherState have to be specified here
// The package supports Union9 at max (9 types)
class WeatherState
    extends Union3Impl<_WeatherInitial, _WeatherLoading, _WeatherLoaded> {
  // PRIVATE low-level factory
  // Used for instantiating individual "subclasses"
  static final Triplet<_WeatherInitial, _WeatherLoading, _WeatherLoaded>
  _factory =
  const Triplet<_WeatherInitial, _WeatherLoading, _WeatherLoaded>();

  // PRIVATE constructor which takes in the individual weather states
  WeatherState._(
      Union3<_WeatherInitial, _WeatherLoading, _WeatherLoaded> union,
      ) : super(union);

  // PUBLIC factories which hide the complexity from outside classes
  factory WeatherState.initial() =>
      WeatherState._(_factory.first(_WeatherInitial()));

  factory WeatherState.loading() =>
      WeatherState._(_factory.second(_WeatherLoading()));

  factory WeatherState.loaded(int temperature) =>
      WeatherState._(_factory.third(_WeatherLoaded(temperature)));
}

class _WeatherInitial {}

class _WeatherLoading {}

class _WeatherLoaded {
  final int temperature;

  _WeatherLoaded(this.temperature);
}