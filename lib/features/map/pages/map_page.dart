import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';
import 'package:uber_app_ui_challenge/features/map/cubits/map_cubit.dart';
import 'package:uber_app_ui_challenge/features/map/cubits/map_state.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  static const String mapScreen = '/MapScreen';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColors,
      body: BlocBuilder<MapCubit, MapState>(
          bloc: MapCubit(),
          builder: (context, state) {
            MapCubit mapCubit = context.read<MapCubit>();
            return SafeArea(
              child: SizedBox(
                height: size.height,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20, right: 16, left: 16),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 15, bottom: 30, left: 16, right: 16),
                      child: SizedBox(
                        height: 90,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 6, bottom: 6, right: 10),
                              child: Column(
                                children: [
                                  const CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 5,
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 2,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Container(
                                    height: 10,
                                    width: 10,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 40,
                                    child: TextFormField(
                                      style:
                                          const TextStyle(color: Colors.grey),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: AppColors.customBlackColors,
                                        hintText: 'Enter pickup point',
                                        hintStyle:
                                            const TextStyle(color: Colors.grey),
                                        contentPadding: const EdgeInsets.only(
                                            left: 16, top: 10),
                                        // Added padding

                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  SizedBox(
                                    height: 40,
                                    child: TextFormField(
                                      style:
                                          const TextStyle(color: Colors.grey),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: AppColors.customBlackColors,
                                        hintText: 'Where to?',
                                        contentPadding: const EdgeInsets.only(
                                            left: 16, top: 10),
                                        hintStyle:
                                            const TextStyle(color: Colors.grey),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: mapCubit.getMapWidget())
                  ],
                ),
              ),
            );
          }),
    );
  }
}
