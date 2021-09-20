import 'package:flutter/material.dart';
import '../../model/business_logic.dart';
import '../widgets/lis_view_tile.dart';
import '../../components/busines_logic_list.dart';
import '../widgets/header_with_text.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/HomeScreen';
  final List<BusinessLogic> _logicList = List.from(busineesLogicList);
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(context),
      body: Column(
        children: [
          const HeaderWithTextfield(), // Area with search text field
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),

              //List view to iterate through the list of business logics
              child: ListView.builder(
                itemBuilder: (ctx, index) {
                  return InkWell(
                    onTap: () {},
                    child: CustomListViewTile(
                      index: index,
                      logicList: _logicList,
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

//Code for App Bar
  AppBar buildAppbar(BuildContext ctx) {
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
          padding: const EdgeInsets.only(right: 5),
          child: IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              //routes to login page
              Navigator.popAndPushNamed(ctx, '/');
            },
          ),
        )
      ],
      title: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
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
