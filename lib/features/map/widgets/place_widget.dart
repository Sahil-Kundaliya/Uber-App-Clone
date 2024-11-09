import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';
import 'package:uber_app_ui_challenge/features/map/cubits/map_cubit.dart';
import 'package:uber_app_ui_challenge/features/map/cubits/map_state.dart';

class PlaceWidget extends StatelessWidget {
  const PlaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapCubit, MapState>(
        bloc: MapCubit(),
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  onTap: () =>
                      context.read<MapCubit>().changeMapWidgetIndex(value: 1),
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 15,
                      child: Icon(Icons.find_in_page,
                          size: 18, color: AppColors.customBlackColors)),
                  title: Text(
                    'Saved Places',
                    style: GoogleFonts.roboto(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffDADADA)),
                  ),
                ),
                ListTile(
                  onTap: () =>
                      context.read<MapCubit>().changeMapWidgetIndex(value: 1),
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 15,
                      child: Icon(Icons.location_on,
                          size: 18, color: AppColors.customBlackColors)),
                  title: Text(
                    'Set location on map',
                    style: GoogleFonts.roboto(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffDADADA)),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
