// part of 'popular_place_bloc.dart';

// @immutable
// sealed class PopularPlaceState {}

// final class PopularPlaceInitial extends PopularPlaceState {}
import 'package:equatable/equatable.dart';
import 'package:exploreease/popular_places/models/popular_model.dart';

abstract class PopularPlacesState extends Equatable {
  @override
  List<Object> get props => [];
}

class PopularPlacesInitial extends PopularPlacesState {}

class PopularPlacesLoading extends PopularPlacesState {}

class PopularPlacesLoaded extends PopularPlacesState {
  final List<popularPlacesModel> popularPlaces;

  PopularPlacesLoaded(this.popularPlaces);

  @override
  List<Object> get props => [popularPlaces];
}

class PopularPlacesError extends PopularPlacesState {
  final String message;

  PopularPlacesError(this.message);

  @override
  List<Object> get props => [message];
}
