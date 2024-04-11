import 'package:airbnb_app/Screens/bookingDetails/booking_details.dart';
import 'package:airbnb_app/Screens/Homescreen/homepage.dart';
import 'package:airbnb_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  late final GoRouter router = GoRouter(routes: <GoRoute>[
    GoRoute(
      name: 'home',
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return HomePage();
      },
    ),
    GoRoute(
        name: 'booking-details',
        path: '/booking-details',
        pageBuilder: (context, state) {
          return CustomTransitionPage<void>(
              key: state.pageKey,
              opaque: false,
              barrierColor: appBlack.withOpacity(0.5),
              transitionDuration: const Duration(milliseconds: 300),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return child;
              },
              child: BookingDetailsPage()
              );
        }
        // builder: (BuildContext context, GoRouterState state) {
        //   return const BookingDetailsPage();
        // },
        ),
  ]);
}
