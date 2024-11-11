import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uber_app_ui_challenge/constant/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_app_ui_challenge/features/drawer/cubits/drawer_cubit.dart';

class YourTipsScreen extends StatelessWidget {
  const YourTipsScreen({super.key});

  static const String yourTipsScreen = '/YourTipsScreen';

  Widget tabviewWidget() {
    return Container(
      color: AppColors.backgroundColors,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('You haven’t taken a trip yet',
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffEDF6FF))),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffEDF6FF)),
                  borderRadius: BorderRadius.circular(0)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: Text('Retry',
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffEDF6FF))),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tabController = context.read<DrawerCubit>().tabController;

    return Scaffold(
      backgroundColor: AppColors.customBlackColors,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(25, 15, 0, 0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 8),
              child: Text(
                'Your Tips',
                style: GoogleFonts.roboto(
                    fontSize: 48,
                    fontWeight: FontWeight.w200,
                    color: const Color(0xffEDF6FF)),
              ),
            ),
            TabBar(
              controller: tabController,
              padding: const EdgeInsets.symmetric(horizontal: 25),
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: UnderlineTabIndicator(
                borderSide:
                    BorderSide(width: 1.5, color: AppColors.primary2Colors),
                insets: const EdgeInsets.symmetric(horizontal: 40),
              ),
              dividerColor: Colors.transparent,
              labelColor: const Color(0xffEDF6FF),
              unselectedLabelColor: const Color(0xffEDF6FF).withOpacity(0.5),
              labelStyle: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
              unselectedLabelStyle: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
              tabs: const <Widget>[
                Tab(text: 'Past'),
                Tab(text: 'Upcoming'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: <Widget>[
                  tabviewWidget(),
                  tabviewWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
