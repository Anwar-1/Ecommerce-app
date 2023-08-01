import 'package:flutter/material.dart';
import 'package:task1agin/salary.dart';

import 'homee.dart';


class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/success.png',
                height: 400,
              ),
              SizedBox(height: 10,),
              Text('Login Success',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50,),


              MaterialButton(


                onPressed: (){
                  Navigator.push(
                   context,
                    MaterialPageRoute(builder: (context) =>  HomeScreen()),
                  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                minWidth: 210,
                height: 50,
                child: Text('Back to home', style:TextStyle(fontSize:18)),
                textColor: Colors.white,
                color: Colors.deepOrange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}