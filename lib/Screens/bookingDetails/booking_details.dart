import 'package:flutter/material.dart';

class BookingDetailsPage extends StatefulWidget {
  const BookingDetailsPage({super.key});

  @override
  State<BookingDetailsPage> createState() => _BookingDetailsPageState();
}

class _BookingDetailsPageState extends State<BookingDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.5),
      appBar: AppBar(
        
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [],
        ),
        ),
    );
  }
}
