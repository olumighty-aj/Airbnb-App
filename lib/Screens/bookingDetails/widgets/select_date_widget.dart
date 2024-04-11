import 'package:airbnb_app/Screens/bookingDetails/widgets/app_calender.dart';
import 'package:airbnb_app/constant.dart';
import 'package:airbnb_app/models/booking_steps.dart';
import 'package:flutter/material.dart';

class SelectDateWidget extends StatelessWidget {
  final BookingStep step;
  const SelectDateWidget({super.key, required this.step});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    var expandedHeight = size.height - 112 - 60 - 32 - 20;
    return Card(
      elevation: 0.0,
      clipBehavior: Clip.antiAlias,
      child: AnimatedContainer(
          height: step == BookingStep.selectDate ? expandedHeight : 60,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          duration: const Duration(milliseconds: 300),
          child: step == BookingStep.selectDate
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'When\'s your trip ?',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: appRed),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    AppCalender(),
                    const Spacer(),
                    const Divider(),
                    SizedBox(
                      height: 48,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            child: const Text('Exact dates'),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: const Text('± 1 day'),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: const Text('± 2 day'),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text('Skip'),
                        ),
                        FilledButton(
                          onPressed: () {},
                          style: FilledButton.styleFrom(
                              backgroundColor: appRed,
                              minimumSize: const Size(120, 48),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(9.0))),
                          child: const Text('Next'),
                        )
                      ],
                    )
                  ],
                )
              : Row(
                  children: [],
                )),
    );
  }
}
