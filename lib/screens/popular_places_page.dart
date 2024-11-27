
import 'package:exploreease/popular_places/bloc/popular_place_bloc.dart';
import 'package:exploreease/popular_places/bloc/popular_place_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularPlacesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Popular Places')),
      body: BlocBuilder<PopularPlacesBloc, PopularPlacesState>(
        builder: (context, state) {
          if (state is PopularPlacesLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is PopularPlacesLoaded) {
            return ListView.builder(
              itemCount: state.popularPlaces.length,
              itemBuilder: (context, index) {
                final place = state.popularPlaces[index];
                return ListTile(
                  title: Text(place.placeName ?? 'No Name'),
                  subtitle: Text(place.location ?? 'No Location'),
                );
              },
            );
          } else if (state is PopularPlacesError) {
            return Center(child: Text(state.message));
          }
          return Center(child: Text('No Data'));
        },
      ),
    );
  }
}