import 'package:flutter/material.dart';
import 'package:pangea/view/screens/home_screen.dart';
import 'components/constants.dart';
import './view/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unified Medical File',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: kAppBarBackgound),
        primaryColor: kPrimaryColor,
        backgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      ),
      // home: LoginScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => const LoginScreen(), //login Screen or landing screen
        HomeScreen.routeName: (ctx) => HomeScreen(), //logged in screen
      },
    );
  }
}
