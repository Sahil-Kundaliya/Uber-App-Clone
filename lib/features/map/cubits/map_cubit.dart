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
    print('SSS $value');
    mapWidgetIndex = value;
    emit(UpdateMapState());
  }

  Widget getMapWidget() {
    switch (mapWidgetIndex) {
      case 0:
        return const PlaceWidget();
      case 1:
        return const MapWidget();
      case 2:
        return const DriverRouteWidget();
    }
    emit(UpdateMapState());
    return const SizedBox();
  }

  void mapWidgetBackActions({required BuildContext context}) {
    switch (mapWidgetIndex) {
      case 0:
        Navigator.pop(context);
      case 1:
        changeMapWidgetIndex(value: 0);
      case 2:
        changeMapWidgetIndex(value: 1);
    }
  }
}
