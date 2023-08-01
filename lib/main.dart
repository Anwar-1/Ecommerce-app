
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1agin/SplashScreen.dart';
import 'package:task1agin/profile.dart';
import 'package:task1agin/themedark.dart';
import 'dark.dart';
import 'light.dart'; // Add this import for the light theme

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /*
      theme: isDark == true ? darkTheme : lightTheme,
      // Use lightTheme here for light mode
      darkTheme: darkTheme,
      */

      home: SplashScreen(),
    );
  }
}
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeProvider.isDark ? darkTheme : lightTheme,
      darkTheme: darkTheme,
      home: SplashScreen(),
    );
  }
}
*/
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDark == false ? darkTheme : lightTheme, // Use lightTheme here for light mode
      darkTheme: darkTheme,
      home: SplashScreen(),
    );
  }
}*/


/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1agin/SplashScreen.dart';
import 'package:task1agin/profile.dart';

import 'dark.dart';



void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDark==true?darkTheme:lightTheme,
      darkTheme: darkTheme,

      home:SplashScreen(



      ),
    );

  }

}
*/
/*
import 'package:flutter/material.dart';

void main() {
  runApp(testt());
}
class testt extends StatefulWidget {
  const testt({super.key});

  @override
  State<testt> createState() => _testtState();
}

bool _icne =false;
IconData _lite=Icons.wb_sunny;
IconData _iCONLITE=Icons.nights_stay;

ThemeData _lightthem =ThemeData(
  primarySwatch: Colors.amber,
  brightness: Brightness.light,
);
ThemeData _darkTheme =ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.dark,
);

class _testtState extends State<testt> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:_icne ?_darkTheme:_lightthem,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){
              setState(() {
                _icne =!_icne;
              });
            },
              icon:Icon(_icne ? _iCONLITE :_lite),
            ),
          ],
        ),
        /*
       body: Center(
         child: ElevatedButton(
           onPressed: () {},
           child: Text(
             "DARK"
           ),
         ),
       ),
*/
      ),


    );

  }
}


*/
