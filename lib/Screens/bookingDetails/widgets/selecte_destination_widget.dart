import 'package:airbnb_app/constant.dart';
import 'package:airbnb_app/models/booking_steps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SelectDestinationWidget extends StatelessWidget {
  const SelectDestinationWidget({super.key, required this.step});
 final BookingStep step;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      clipBehavior: Clip.antiAlias,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: step ==BookingStep.selectDestination? 280 : 60,
        padding: const EdgeInsets.all(16.0),
        child: step == BookingStep.selectDestination ?
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Where to ?',
              style: TextStyle(
                  color: appBlack, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(16.0),
                  hintText: 'Search destination',
                  prefixIcon: const Icon(Icons.search),
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w500, color: appGrey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0))),
            ),
             const SizedBox(height: 8,),
            SizedBox(
              height: 128,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmrAWzwf8gRhGBFo-YD5JX8ZsvjJRROGGTYlo9-oL9nw&s',
                             height: 100, width: 100, fit: BoxFit.cover,),
                          ),
                          const SizedBox(height: 8,),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('Placeholder', style: TextStyle(fontWeight: FontWeight.bold),),
                            )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ).animate(delay: const Duration(milliseconds: 300))
        .fadeIn(duration: const Duration(milliseconds: 300)): 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text('When'),
          Text('I\'m Flexible' )
        ],)
      ),
    );
  }
}
