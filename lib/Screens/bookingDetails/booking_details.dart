import 'dart:ui';

import 'package:airbnb_app/Screens/bookingDetails/widgets/selecte_destination_widget.dart';
import 'package:airbnb_app/models/booking_steps.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/select_date_widget.dart';

class BookingDetailsPage extends StatefulWidget {
  BookingDetailsPage({super.key,});
 
  @override
  State<BookingDetailsPage> createState() => _BookingDetailsPageState();
}

class _BookingDetailsPageState extends State<BookingDetailsPage> {
  var step = BookingStep.selectDate;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
 
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0.8, sigmaY: 0.8),
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.5),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.close),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Stays',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Experience',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  )),
            ],
          ),
          actions: [
            SizedBox(
              width: 48,
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    step = BookingStep.selectDestination;
                  });
                },
                child: Hero(
                    tag: 'search', child: SelectDestinationWidget(step: step)),
              ),
               GestureDetector(
                onTap: () {
                  setState(() {
                    step = BookingStep.selectDate;
                  });
                },
                child: Hero(
                    tag: 'search', child: SelectDateWidget(step: step)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
