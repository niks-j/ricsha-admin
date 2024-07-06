import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ricsha_admin/methods/common_methods.dart';
import 'package:ricsha_admin/widgets/drivers_data_list.dart';
class DriversPage extends StatefulWidget {
  const DriversPage({super.key});
  static const String id = "\webpageDrivers";


  @override
  State<DriversPage> createState() => _DriversPageState();
}

class _DriversPageState extends State<DriversPage> {
 CommonMethods cMethods =CommonMethods();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              "Manage Drivers",
               style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,

              ),
            ),
          ),

          const SizedBox(
            height: 18,
          ),
          Row(
            children: [
              cMethods.header(2, "Driver ID"),
              cMethods.header(1, "Picture"),
              cMethods.header(1, "Name"),
              cMethods.header(1, "Car Details"),
              cMethods.header(1, "Phone number"),
              cMethods.header(1, "Earnings"),
              cMethods.header(1, "Action"),


            ],
          ),
          //display data
        DriversDataList(),
        ],

      ),

      ),
      );


  }
}
