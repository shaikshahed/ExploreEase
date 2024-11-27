// import 'dart:nativewrappers/_internal/vm/lib/mirrors_patch.dart';

// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:meta/meta.dart';

// part 'popular_place_event.dart';
// part 'popular_place_state.dart';

// class PopularPlaceBloc extends Bloc<PopularPlaceEvent, PopularPlaceState> {
//   PopularPlaceBloc() : super(PopularPlaceInitial()) {
//     on<PopularPlaceEvent>((event, emit) {

//     });
//   }
// }
import 'package:bloc/bloc.dart';
import 'package:exploreease/popular_places/bloc/popular_place_state.dart';
import 'package:exploreease/popular_places/repo/popular_places_repo.dart';

import 'popular_place_event.dart';


class PopularPlacesBloc extends Bloc<PopularPlacesEvent, PopularPlacesState> {
  final PopularPlacesRepository popularPlacesRepository;

  PopularPlacesBloc({required this.popularPlacesRepository}) : super(PopularPlacesInitial()) {
    on<FetchPopularPlaces>(_onFetchPopularPlaces);
  }

  void _onFetchPopularPlaces(
    FetchPopularPlaces event,
    Emitter<PopularPlacesState> emit,
  ) async {
    emit(PopularPlacesLoading());
    try {
      final popularPlaces = await popularPlacesRepository.getAllPopularPlaces();
      emit(PopularPlacesLoaded(popularPlaces));
    } catch (e) {
      emit(PopularPlacesError('Failed to fetch popular places'));
    }
  }
}
