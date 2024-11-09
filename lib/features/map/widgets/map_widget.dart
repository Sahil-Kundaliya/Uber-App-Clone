import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';
import 'package:uber_app_ui_challenge/constant/app_images.dart';
import 'package:uber_app_ui_challenge/features/map/cubits/map_cubit.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: MapCubit(),
        builder: (context, state) {
          return Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.mapImage),
                    fit: BoxFit.fitWidth)),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  context.read<MapCubit>().changeMapWidgetIndex(value: 2);
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  margin: const EdgeInsets.only(bottom: 40),
                  decoration:
                      const BoxDecoration(color: AppColors.customBlackColors),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      'Done',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                          fontSize: 21.6,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xffEDF6FF)),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
