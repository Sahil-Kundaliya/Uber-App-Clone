import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_app_ui_challenge/features/drawer/cubits/drawer_state.dart';

class DrawerCubit extends Cubit<DrawerState> {
  DrawerCubit(TickerProvider vsync) : super(InitialDrawerState()) {
    _tabController = TabController(length: 2, vsync: vsync);
  }

  late final TabController _tabController;
  TabController get tabController => _tabController;

  @override
  Future<void> close() {
    _tabController.dispose();
    return super.close();
  }
}
