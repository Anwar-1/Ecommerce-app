import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class details extends StatelessWidget {
 const  details({super.key});

//int selected = 0;
  //double imgsize = 100;
  // double Lenght = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20,bottom: 12,top: 12),
            padding: EdgeInsets.only(left: 5,right: 5),
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '4.8',
                  style: TextStyle(color: Colors.black),
                ),

                Icon(
                  Icons.star,
                  color:  Colors.amber,
                ),
              ],
            ),


          )
        ],
        backgroundColor: Colors.grey[100],
      ),

      body: Column(
        children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [

             Container(
               width: (200),
               height: (200),
               padding: EdgeInsets.all((10)),
               decoration: BoxDecoration(
                 color: Colors.grey[200],
                 borderRadius: BorderRadius.circular(15),
               ),



                 child: Image.asset('assets/images/Image Popular Product 1.png',),
               ),



           ],
         ),

          Column(
            children: [
              Row(
               // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  SizedBox(
                    width: 70,
                  ),

                  Container(
                    width: (50),
                    height: (50),
                    padding: EdgeInsets.all((10)),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.deepOrange),
                      borderRadius: BorderRadius.circular(15),

                    ),
                    child: Image.asset('assets/images/Image Popular Product 1.png',),
                  ),

                  SizedBox(
                    width: 20,
                  ),


                  Container(
                    width: (50),
                    height: (50),
                    padding: EdgeInsets.all((10)),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset('assets/images/ps4_console_white_2.png',),
                  ),

                  SizedBox(
                    width: 20,
                  ),

                  Container(
                    width: (50),
                    height: (50),
                    padding: EdgeInsets.all((10)),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset('assets/images/ps4_console_white_3.png',),
                  ),

                  SizedBox(
                    width: 20,
                  ),

                  Container(
                    width: (50),
                    height: (50),
                    padding: EdgeInsets.all((10)),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset('assets/images/ps4_console_white_4.png',),
                  ),


                ],
              ),
            ],
          ),


        SizedBox(
          height:10,
        ),


         Expanded(
           child: Container(
            width: double.infinity,
             height: (250),
            padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 18),
            //EdgeInsets.all((10)),

            margin: EdgeInsets.only(right: 1,left: 1,bottom: 1,top: 1),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight:  Radius.circular(40),

              ),
            ),
            child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Wireless Controller for PS4 tm" ,style: TextStyle(fontSize: 20,color: Colors.black
                        , //fontWeight: FontWeight.bold
                               ),),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                        ),


                      // CircleAvatar(
                        // radius: 20,
                       //  backgroundColor: Colors.pink[50],
                        // child:
                         Container(
                           width: 60,
                           height: 40,
                           decoration: BoxDecoration(
                             color: Color(0xFFFDE5E5),
                               borderRadius:  BorderRadius.only(
                               topLeft: Radius.circular(20),
                               bottomLeft: Radius.circular(20),

                             ),
                           ),

                           child: IconButton(
                             icon:  Icon(
                               Icons.favorite,
                               color: Colors.pink,

                             ),
                             onPressed: () {},
                           ),
                         ),
                      // ),



                       // Icon(
                        //   SvgPicture.asset("assets/icons/Heart Icon.svg" , ),
                       // ),

                       // SvgPicture.asset("assets/icons/Heart Icon.svg" , ),

                      ],
                    ),

                    Text("Wireless controller for PS4 gives you what \n"
                        "you want in your gaming from over precision \n"
                        "control your games to sharing..." ,style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontFamily: 'Muli',
                        //fontWeight: FontWeight.bold
                    ),),

                    SizedBox(
                      height: 20,
                    ),

                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See More Detaill >",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFFD7643),
                          fontWeight: FontWeight.bold,
                          fontFamily: "muli",
                        ),
                      ),
                    ),
                  ],
                ),


        ),
         ),


          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight:  Radius.circular(20),
              ),
            ),
            child: Row(
             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.red[400],
                ),
                SizedBox(
                 width: 20,
                ),
                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.purple[700],
                ),

                SizedBox(
                  width: 20,
                ),

                CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.brown[300],
                ),

                SizedBox(
                  width: 20,
                ),

                Stack(
                  alignment: Alignment.center,
                  children: [


                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.orangeAccent,
                    ),
                    //CircleAvatar(
                   //  radius: 8,
                   //   backgroundColor: Colors.black,
                 //  ),

                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.grey[300],
                    ),

                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                    ),



                   // CircleAvatar(
                   //   radius: 17,
                   //   backgroundColor: Colors.white,
                  //  ),

                  ],
                ),


                Row(
                  children: [

                    SizedBox(
                      width: 40,
                    ),


                    Container(
                      height: Checkbox.width * 2.5,
                      width: Checkbox.width * 2.5,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(
                          Checkbox.width / 1.3),
                      child: SvgPicture.asset(
                        "assets/icons/remove.svg",
                        color: Colors.orange,
                      ),
                    ),

                   // CircleAvatar(
                   //   radius: 20,
                    //  backgroundColor: Colors.white,
                    //  color: Colors.orange,
                   //   child: SvgPicture.asset('assets/icons/remove.svg',),
                  //  ),

                    SizedBox(
                      width: 20,
                    ),



                   // CircleAvatar(
                   //   radius: 20,
                   //   backgroundColor: Colors.white,
                   //   child: SvgPicture.asset('assets/icons/Plus Icon.svg',),
                  //  ),

                    Container(
                      height: Checkbox.width * 2.5,
                      width: Checkbox.width * 2.5,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(
                          Checkbox.width / 1.3),
                      child: SvgPicture.asset(
                        "assets/icons/Plus Icon.svg",
                        color: Colors.orange,
                      ),
                    ),



                  ],
                )
              ],
            ),
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
               width: 380,
                height: 111,


                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight:  Radius.circular(20),
                  ),
                ),

                alignment: Alignment.center,
               child:  MaterialButton(
                 onPressed: (){

                 },
                 height: 50,
                 minWidth: 250,
                 padding:  EdgeInsets.symmetric(horizontal: 50, vertical: 10),

                 child: Text('Add to cart',style: TextStyle(
                     fontSize: 18
                 ),),
                 textColor: Colors.white,
                 color: Color(0xFFFD7643),
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(Radius.circular(20)),
                 ),
               ),

              ),
            ],
          ),





        ],
      ),

      );

  }
}

class InkulTest extends StatefulWidget {
  const InkulTest({super.key});

  @override
  State<InkulTest> createState() => _InkulTestState();
}

class _InkulTestState extends State<InkulTest> {
 // double Lenght = 100;
 // int i = 0, c = 3;
  String imageitem = 'assets/images/ps4_console_white_1.png';
  bool isClicked = false;
  @override

    Widget build(BuildContext context) {
      return Scaffold(
       body: Row(
         children: [


         ],
       ),

            );

    }
  }


