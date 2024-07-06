import 'package:flutter/material.dart';

class CommonMethods
{
  Widget header(int headerflexValue, String headerTitle)
  {
    return Expanded(
      flex: headerflexValue,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          color: Colors.pink.shade500,

        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:Text(
            headerTitle,
            style:const TextStyle(
              color: Colors.white,
            ),

          ),
        ),

      ),
    );
  }

Widget data(int dataFlex, String dataTitle)
{
  return Expanded(
    flex: dataFlex,
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.pink.shade500,

      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child:Text(
          dataTitle,
          style:const TextStyle(
            color: Colors.white,
          ),

        ),
      ),

    ),
  );
}
}

