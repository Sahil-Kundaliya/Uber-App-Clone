import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_app_ui_challenge/features/map/cubits/map_state.dart';
import 'package:uber_app_ui_challenge/features/map/widgets/driver_route_widget.dart';
import 'package:uber_app_ui_challenge/features/map/widgets/map_widget.dart';
import 'package:uber_app_ui_challenge/features/map/widgets/place_widget.dart';

class MapCubit extends Cubit<MapState> {
  MapCubit() : super(InitialMapState());

  int mapWidgetIndex = 0;

  changeMapWidgetIndex({required int value}) {
    mapWidgetIndex = value;
    emit(UpdateMapState());
  }

  Widget getMapWidget() {
    switch (mapWidgetIndex) {
      case 0:
        return PlaceWidget();
      case 1:
        return MapWidget();
      case 2:
        return DriverRouteWidget();
    }
    emit(UpdateMapState());
    return SizedBox();
  }
}
