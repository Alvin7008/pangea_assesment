import 'package:flutter/material.dart';
import 'package:pangea/model/business_logic.dart';
import '../../components/busines_logic_list.dart';
import '../widgets/header_with_text.dart';
import '../../constants.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/HomeScreen';
  final List<BusinessLogic> _logicList = List.from(busineesLogicList);
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppbar(),
      body: Column(
        children: [
          const HeaderWithTextfield(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                itemBuilder: (ctx, index) {
                  return InkWell(
                    onTap: () {},
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: _logicList[index].colour,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              _logicList[index].iconName,
                              color: Colors.white70,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  _logicList[index].logicName,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  _logicList[index].description,
                                  style: TextStyle(
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
                    ),
                  );
                },
                itemCount: _logicList.length,
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.menu,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 5),
          child: IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {},
          ),
        )
      ],
      title: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Welcome",
              style: TextStyle(fontSize: 10.0),
            ),
            Text(
              "Mr. Alvin J B",
              style: TextStyle(fontSize: 10.0),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "784-1969087956-545",
              style: TextStyle(fontSize: 7.0),
            ),
          ],
        ),
      ),
    );
  }
}
