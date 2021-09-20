import 'package:flutter/material.dart';
import '../../model/business_logic.dart';

class CustomListViewTile extends StatelessWidget {
  final List<BusinessLogic> logicList;
  final int index;

  CustomListViewTile({required this.index, required this.logicList});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: logicList[index].colour,
          borderRadius: BorderRadius.circular(25),
        ),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              logicList[index].iconName,
              color: Colors.white70,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  logicList[index].logicName,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  logicList[index].description,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
