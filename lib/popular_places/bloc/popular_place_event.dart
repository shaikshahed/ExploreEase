// part of 'popular_place_bloc.dart';

// abstract class PopularPlaceEvent extends Equatable{
//   const PopularPlaceEvent();

//   @override
//   List<Object?> get props => [];

// }
import 'package:equatable/equatable.dart';

abstract class PopularPlacesEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchPopularPlaces extends PopularPlacesEvent {}

