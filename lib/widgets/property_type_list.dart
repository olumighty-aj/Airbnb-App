import 'package:airbnb_app/constant.dart';
import 'package:flutter/material.dart';

class PropertyTypeList extends StatefulWidget {
  const PropertyTypeList({super.key});

  @override
  State<PropertyTypeList> createState() => _PropertyTypeListState();
}

class _PropertyTypeListState extends State<PropertyTypeList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    final List<Map<String, dynamic>> propertyTypes = [
      {'type': 'Hotel', 'icon': Icons.hotel},
      {'type': 'Apartment', 'icon': Icons.apartment},
      {'type': 'BnB', 'icon': Icons.bedroom_child},
      {'type': 'Villa', 'icon': Icons.villa},
      {'type': 'Resort', 'icon': Icons.holiday_village},
    ];
    return SizedBox(
      height: 59.0,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: propertyTypes.length,
          itemBuilder: (context, index) {
            return Container(
              width: size.width * 0.2,
              margin: const EdgeInsets.only(right: 4.0, top: 4.0, left: 4.0),
              child: Column(
                children: [
                  Icon(
                    propertyTypes[index]['icon'],
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    propertyTypes[index]['type'],
                    style: TextStyle(
                        color: appBlack,
                        fontSize: 15,
                        fontWeight: (index == selectedIndex) 
                        ? FontWeight.bold
                        : FontWeight.normal ),
                  ),
                  (index == selectedIndex) 
                  ? Container(
                    margin: const EdgeInsetsDirectional.only(top: 8.0),
                    height: 2.0,
                    width: 64.0,
                    color: appBlack,
                  )
                  : const SizedBox()
                ],
              ),
            );
          }),
    );
  }
}
