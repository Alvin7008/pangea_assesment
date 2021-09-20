import 'package:flutter/material.dart';
import 'package:pangea/components/constants.dart';

class HeaderWithTextfield extends StatelessWidget {
  const HeaderWithTextfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          color: kPrimaryColor,
          width: double.infinity,
          height: size.height * 0.1,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                right: 0,
                bottom: 10,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0)),
                  height: 30,
                  margin:
                      const EdgeInsets.symmetric(horizontal: kdefaultPadding),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 5, right: 2, top: 3, bottom: 3),
                        child: Icon(
                          Icons.search,
                          color: kTextColor.withOpacity(0.5),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 3, top: 3, bottom: 3),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: "Search Doctor by Name",
                              hintStyle: TextStyle(
                                fontSize: 10.0,
                                color: kTextColor.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
