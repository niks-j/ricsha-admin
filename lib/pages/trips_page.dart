import 'package:flutter/material.dart';
import 'package:ricsha_admin/methods/common_methods.dart';
class TripsPage extends StatefulWidget {
  const TripsPage({super.key});
  static const String id = "\webpageTrips";


  @override
  State<TripsPage> createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage> {
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
                "Manage Trips",
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
                cMethods.header(2, "Trip ID"),
                cMethods.header(1, "User Name"),
                cMethods.header(1, "Driver"),
                cMethods.header(1, "Car detail"),
                cMethods.header(1, "Timing"),
                cMethods.header(1, "Fare"),
                cMethods.header(1, "View details"),


              ],
            ),
            //display data

          ],

        ),

      ),
    );
  }
}
