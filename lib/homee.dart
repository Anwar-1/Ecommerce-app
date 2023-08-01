import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:task1agin/profile.dart';
import 'package:task1agin/salary.dart';
import 'package:task1agin/seeMore.dart';

Future<List<Product>> fetchData()async{
  final response= await http.get(Uri.parse('https://fakestoreapi.com/products'));
  if(response.statusCode == 200){
    var decodeData=json.decode(response.body) as List<dynamic>;
    List<Product> products = decodeData.map((json)=> Product.fromJson(json)).toList();
    return products;
  }
  else
    throw Exception("Failed load album");
}

//create album class
class Product {
  //final int userId;
  //final int id;
  //final String title;
  final String title;
  final double price;
  final String image;


  const Product (
      {
        //required this.userId,
        //required this.id,
        required this.title,
        required this.image,
        required this.price,

      }
      );

  factory Product.fromJson(Map <String,dynamic> json){
    return Product(
      //userId: json['userId'],
      //id: json['id'],
      title: json['title'],
      image: json['image'],
      price: double.parse(json['price'].toString()),

    );
  }

}


class SearchBarDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, " ");
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Implement your search results here
    return Center(
      child: Text('Search Results for: $query'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Implement your search suggestions here
    return Center(
      child: Text('Search Suggestions'),
    );
  }
}



List<Product> favProducts = [];


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late Future<List<Product>> futureProducts;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureProducts=fetchData();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Container(
                      width: 230,
                      height: 50,
                      decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.grey.shade500,
                            ),
                            onPressed: () {
                              showSearch(
                                context: context,
                                delegate: SearchBarDelegate(),
                              );
                            },
                          ),
                          SizedBox(width: 5,),
                          Text("Search product",style: TextStyle(color: Colors.grey.shade500,fontSize: 16,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey.shade200,
                      child: IconButton(
                        icon: SvgPicture.asset("assets/icons/Cart Icon.svg"),
                        onPressed: () {
                        },
                      ),
                    ),
                    SizedBox(width: 10,),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey.shade200,
                      child: IconButton(
                        icon: SvgPicture.asset("assets/icons/Bell.svg"),
                        onPressed: () {
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 25.0),
                width: 370,
                height: 85,
                decoration: BoxDecoration(color: Colors.purple.shade900,borderRadius: BorderRadius.circular(18)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("A summer Surprise",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
                    SizedBox(height: 8,),
                    Text("Cashback 20%",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 26),),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(color: Colors.orange.shade50,borderRadius: BorderRadius.circular(15)),
                          child: IconButton(
                            icon: SvgPicture.asset("assets/icons/Flash Icon.svg",height: 27,),
                            onPressed: (){},
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("Flash\n Deal",style: TextStyle(fontWeight: FontWeight.w300),)
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(color: Colors.orange.shade50,borderRadius: BorderRadius.circular(15)),
                          child: IconButton(
                            icon: SvgPicture.asset("assets/icons/Bill Icon.svg",height: 26,),
                            onPressed: (){},
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("Bill\n ",style: TextStyle(fontWeight: FontWeight.w300),)
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(color: Colors.orange.shade50,borderRadius: BorderRadius.circular(15)),
                          child: IconButton(
                            icon: SvgPicture.asset("assets/icons/Game Icon.svg",height: 22,),
                            onPressed: (){},
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("Game\n ",style: TextStyle(fontWeight: FontWeight.w300),)
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(color: Colors.orange.shade50,borderRadius: BorderRadius.circular(15)),
                          child: IconButton(
                            icon: SvgPicture.asset("assets/icons/Gift Icon.svg",height: 27,),
                            onPressed: (){},
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("Daily\n Gift",style: TextStyle(fontWeight: FontWeight.w300),)
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(color: Colors.orange.shade50,borderRadius: BorderRadius.circular(15)),
                          child: IconButton(
                            icon: SvgPicture.asset("assets/icons/Discover.svg",height: 35,),
                            onPressed: (){},
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text("More\n ",style: TextStyle(fontWeight: FontWeight.w300),)
                      ],
                    ),


                  ],
                ),
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 28,right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Special for you",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                    Text("See More",style: TextStyle(color: Colors.grey),)
                  ],

                ),
              ),
              //SizedBox(height: 15,),


              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          width: 250,
                          height: 100,
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.srcOver),
                              image: AssetImage('assets/images/Image Banner 2.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 16,
                                  left: 16,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Smartphone",style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.w500),),
                                      SizedBox(height: 5,),
                                      Text("18 Brands",style: TextStyle(color: Colors.white),)
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          width: 250,
                          height: 100,
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.srcOver),
                              image: AssetImage('assets/images/Image Banner 3.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 16,
                                  left: 16,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Fashion",style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.w500),),
                                      SizedBox(height: 5,),
                                      Text("24 Brands",style: TextStyle(color: Colors.white),)
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 28,right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Products",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => seeMore()),
                        );
                      },
                      child: Text(
                        "See More",
                        style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),

                  ],

                ),
              ),

              // SizedBox(height: 20,),

              //SingleChildScrollView(
              //scrollDirection: Axis.horizontal,
              //child:
              FutureBuilder<List<Product>>(
                future: futureProducts,
                builder:(context, snapshot){
                  if(snapshot.hasData){

                    var data =snapshot.data;
                    return Container(
                      height: 280,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: data!.length,
                          itemBuilder: (context,index) => Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Container(
                              width: 150,
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: 140,
                                      height: 140,
                                      margin: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(18),
                                        image: DecorationImage(
                                          image: NetworkImage(data[index].image),
                                          scale: 8.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(//product.title,
                                    data[index].title,
                                    //.replaceFirst(RegExp(r'1'), '1\n'),
                                    maxLines: 2,
                                    //overflow: TextOverflow.ellipsis,
                                    //textAlign: TextAlign.center,
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$${data[index].price.toString()}',
                                        style: TextStyle(
                                          fontSize: 19,
                                          color: Colors.orange.shade800,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 35,),
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.grey.shade200,
                                        child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              if (favProducts.contains(data[index])) {
                                                favProducts.remove(data[index]);
                                              } else {
                                                favProducts.add(data[index]);
                                                print("button is pressed");
                                                print(favProducts[0].title);
                                              }
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            size: 16,
                                            color: favProducts.contains(data[index]) ? Colors.red : Colors.grey,
                                          ),
                                        ),

                                      ),


                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ) ),
                    );
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    return CircularProgressIndicator();
                  }
                } ,
              ),







              /* Row(
                  children: [
                    FutureBuilder<Product>(
                      future: fetchProduct(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          Product product = snapshot.data!;
                          return Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 140,
                                    height: 140,
                                    margin: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(18),
                                      image: DecorationImage(
                                        image: NetworkImage(product.image,scale: 2.5),
                                        scale: 6.0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(//product.title,
                                  product.title.replaceFirst(RegExp(r'1'), '1\n'),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '\$${product.price}',
                                      style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.orange.shade800,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 35,),
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.grey.shade200,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset("assets/icons/Heart Icon_2.svg"),
                                      ),
                                    ),


                                  ],
                                ),
                              ],
                            ),
                          );
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          return CircularProgressIndicator();
                        }
                      },
                    ),

                    FutureBuilder<Product>(
                      future: fetchProduct(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          Product product = snapshot.data!;
                          return Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 140,
                                    height: 140,
                                    margin: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(18),
                                      image: DecorationImage(
                                        image: NetworkImage(product.image,scale: 2.5),
                                        scale: 6.0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(product.title.replaceFirst(RegExp(r'1'), '1\n'),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '\$${product.price}',
                                      style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.orange.shade800,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 35,),
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.grey.shade200,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset("assets/icons/Heart Icon_2.svg"),
                                      ),
                                    ),


                                  ],
                                ),
                              ],
                            ),
                          );
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          return CircularProgressIndicator();
                        }
                      },
                    ),
                    FutureBuilder<Product>(
                      future: fetchProduct(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          Product product = snapshot.data!;
                          return Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 140,
                                    height: 140,
                                    margin: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(18),
                                      image: DecorationImage(
                                        image: NetworkImage(product.image,scale: 2.5),
                                        scale: 6.0,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(product.title.replaceFirst(RegExp(r'1'), '1\n'),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,),
                                SizedBox(height: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '\$${product.price}',
                                      style: TextStyle(
                                        fontSize: 19,
                                        color: Colors.orange.shade800,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 35,),
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.grey.shade200,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: SvgPicture.asset("assets/icons/Heart Icon_2.svg"),
                                      ),
                                    ),


                                  ],
                                ),
                              ],
                            ),
                          );
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          return CircularProgressIndicator();
                        }
                      },
                    ),
                  ],
                ), */
              //),
            ],
          ),
        ),

        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40), topLeft: Radius.circular(40))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/Shop Icon.svg")),
              IconButton(
                  onPressed: () { Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FavoriteProducts(favoriteProducts: favProducts)),
                  );

                  },
                  icon: SvgPicture.asset("assets/icons/Heart Icon.svg")),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg")),
              IconButton(
                  onPressed: () { Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => profile()),
                  );},
                  icon: SvgPicture.asset("assets/icons/User Icon.svg")),
            ],
          ),
        ),
      ),
    );
  }
}
