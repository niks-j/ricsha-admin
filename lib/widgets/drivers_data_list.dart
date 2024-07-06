import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:ricsha_admin/methods/common_methods.dart';
class DriversDataList extends StatefulWidget {
  const DriversDataList({super.key});

  @override
  State<DriversDataList> createState() => _DriversDataListState();
}

class _DriversDataListState extends State<DriversDataList> {
  final  driverRecordsFromDatabase = FirebaseDatabase.instance.ref().child("drivers");
  CommonMethods cMethods =CommonMethods();
  @override
  Widget build(BuildContext context)
  {
    return StreamBuilder(
      stream: driverRecordsFromDatabase.onValue,
      builder: (BuildContext context,snapshotData)
        {
          if(snapshotData.hasError)
            {
              return const Center(
                child: Text(
                    "ERROR HAS OCCURED",
                style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize:24,
                  color: Colors.pink,

                ),
              ),

              );
            }
          if(snapshotData.connectionState == ConnectionState.waiting)
          {
            return const Center(
              child:CircularProgressIndicator(),
            );
          }
          Map dataMap=snapshotData.data!.snapshot.value as Map;
          List itemList =[];
          dataMap.forEach((key,value)
          {
            itemList.add({"key":key, ...value});
          });
          return ListView.builder(
            shrinkWrap: true,
            itemCount: itemList.length,
            itemBuilder: ((context, index)){
              return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                cMethods.data(2, itemList[index][""])
          ],
              );
              }
          );
        },

    );

  }
  }
