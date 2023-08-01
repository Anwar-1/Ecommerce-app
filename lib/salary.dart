import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'package:task1agin/profile.dart';

import 'homee.dart';

//make a network request
//convert http response inside album



class FavoriteProducts extends StatefulWidget {
  //FavoriteProducts({required this.favoriteProducts,Key? key}) : super(key: key);
  List<Product> favoriteProducts = [];
  FavoriteProducts({required this.favoriteProducts});

  @override
  State<FavoriteProducts> createState() => _FavoriteProductsState();
}

class _FavoriteProductsState extends State<FavoriteProducts> {
  //late Future<List<Product>> futureProducts;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //futureProducts=fetchData();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fetch data example",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100 ,
          elevation: 0,
          //title: Text("Fetch data"),
        ),
        body: Center(
            child: GridView.builder(
              itemCount: favProducts.length,
              itemBuilder: (BuildContext context, int index) {
                final product = favProducts[index];
                return Container(
                  margin: const EdgeInsets.only(top: Checkbox.width / 2,left: Checkbox.width *1,right:Checkbox.width *1 ),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: Checkbox.width * 9.25,
                        height: Checkbox.width * 10.15,
                        padding: const EdgeInsets.all(Checkbox.width / 2),
                        margin: const EdgeInsets.only(top: Checkbox.width * 4),
                        decoration: const ShapeDecoration(
                          shadows: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black12,
                              blurStyle: BlurStyle.outer,
                              blurRadius: Checkbox.width,
                              // offset: Offset.fromDirection(Checkbox.width)
                            ),
                          ],
                          shape: RoundedRectangleBorder(
                            // side: BorderSide(color: Colors.deepOrangeAccent,width: 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          color: Colors.white,
                        ),

                        child: Image.network(
                          product.image,
                          fit: BoxFit.scaleDown,
                        ),
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: Checkbox.width * 9,
                        height: Checkbox.width * 4.1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: Checkbox.width * 8,
                              child: Text(
                                product.title,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "muli",
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),


                            SizedBox(
                              width: Checkbox.width * 10.5,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$${product.price}",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "muli",
                                    ),
                                  ),
                                  Container(
                                    width: Checkbox.width * 1.5,
                                    height: Checkbox.width * 1.5,
                                    decoration: ShapeDecoration(
                                      shape: const CircleBorder(),
                                      color: Colors.grey.shade200,
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (favProducts.contains(product)) {
                                            favProducts.remove(product);
                                          } else {
                                            favProducts.add(product);
                                            print("button is pressed");
                                            print(favProducts[0].title);
                                          }
                                        });
                                      },
                                      icon: Icon(
                                        Icons.favorite,
                                        size: 16,
                                        color: favProducts.contains(product) ? Colors.red : Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            )



          /*FutureBuilder<List<Product>>(
            //future: futureProducts,
            builder:(context, snapshot){
              if(snapshot.hasData){
                var data =snapshot.data;
                return ListView.builder(
                  itemCount: data!.length,
                  itemBuilder: (context,index) => Column(
                    children: [
                      ListTile(
                        leading: Container(
                          width: 50,
                          child: Image.network(data[index].image),
                        ),
                        title: Text(data[index].title),
                        subtitle: Text(data[index].price.toString()),
                      ),
                      Divider()
                    ],
                  ),
                );
              }
              else if(snapshot.hasError)
                return Text('${snapshot.error}');
              return CircularProgressIndicator();
            } ,
          ),  */



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


// List<Product> listAlbum = [];

// Make network request
//Covert http response inside album

/*

class FavoriteProducts extends StatefulWidget {
  //const FavoriteProducts({super.key});
  List<Product> favoriteProducts = [];
  FavoriteProducts({required this.favoriteProducts});

  @override
  State<FavoriteProducts> createState() => _FavoriteProductsState();
}

bool heart1IsPressed = false;
bool heart2IsPressed = false;
bool heart3IsPressed = false;

class _FavoriteProductsState extends State<FavoriteProducts> {


  @override
  void initState() {
    // TODO: implement initState
    //futureProducts = fetchProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;

    return
      Scaffold(
      body: Container(
        child: Expanded(
          // height: double.infinity,
          // width: double.infinity,
          // margin: EdgeInsets.all(Checkbox.width),
            child: GridView.builder(

              scrollDirection: Axis.vertical,
              itemCount: int.parse(favProducts.length.toString()),
              itemBuilder: (BuildContext context, int index) {
                final product = favProducts[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: Checkbox.width * 8.25,
                      height: Checkbox.width * 6.25,
                      padding: const EdgeInsets.all(Checkbox.width / 2),
                      margin: const EdgeInsets.only(top: Checkbox.width / 2),
                      decoration: const ShapeDecoration(
                        shadows: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black12,
                            blurStyle: BlurStyle.outer,
                            blurRadius: Checkbox.width,
                            // offset: Offset.fromDirection(Checkbox.width)
                          ),
                        ],
                        shape: RoundedRectangleBorder(
                          // side: BorderSide(color: Colors.deepOrangeAccent,width: 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        color: Colors.white,
                      ),
                      child: Image.network(
                        product.image,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Container(
                      width: Checkbox.width * 9,
                      height: Checkbox.width * 4.1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: Checkbox.width * 8,
                            child: Text(
                              product.title,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: "muli",
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            width: Checkbox.width * 8.5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$${product.price}",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "muli",
                                  ),
                                ),
                                Container(
                                  width: Checkbox.width * 1.5,
                                  height: Checkbox.width * 1.5,
                                  decoration: ShapeDecoration(
                                    shape: const CircleBorder(),
                                    color: Colors.grey.shade200,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                    },
                                    icon: Icon(
                                      Icons.favorite,
                                      size: 16,
                                      // color: favProducts.contains(data[index]) ? Colors.red : Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
            )
        ),
      ),
    );
  }



}


  Widget _buildPopularProductItem(
      {required String title,
        required String price,
        required String itemImagePath,
        required bool heartIsPressed}) {
    return Expanded(
      // height: Checkbox.width * 30,
      // width: Checkbox.width * 9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: Checkbox.width * 8.25,
            height: Checkbox.width * 6.25,
            padding: const EdgeInsets.all(Checkbox.width / 2),
            margin: const EdgeInsets.only(top: Checkbox.width / 2),
            decoration: const ShapeDecoration(
              shadows: <BoxShadow>[
                BoxShadow(
                  color: Colors.black12,
                  blurStyle: BlurStyle.outer,
                  blurRadius: Checkbox.width,
                  // offset: Offset.fromDirection(Checkbox.width)
                ),
              ],
              shape: RoundedRectangleBorder(
                // side: BorderSide(color: Colors.deepOrangeAccent,width: 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              color: Colors.white,
            ),
            child: Image.network(
              itemImagePath,
              fit: BoxFit.scaleDown,
            ),
          ),
          Container(
            width: Checkbox.width * 9,
            height: Checkbox.width * 4.1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: Checkbox.width * 8,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: "muli",
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  width: Checkbox.width * 8.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$$price",
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontFamily: "muli",
                        ),
                      ),
                      Container(
                        width: Checkbox.width * 1.5,
                        height: Checkbox.width * 1.5,
                        decoration: ShapeDecoration(
                          shape: const CircleBorder(),
                          color: heartIsPressed
                              ? const Color(0xD3E9CACA)
                              : Colors.grey.shade200,
                        ),
                        child: IconButton(
                          onPressed: () {
                          },
                          icon: Icon(
                            Icons.favorite,
                            size: 16,
                           // color: favProducts.contains(data[index]) ? Colors.red : Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

*/




