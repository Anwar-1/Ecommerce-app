import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;

Future<List<Album>> fetchAlbum() async {
  final response = await http.get(Uri.parse("https://fakestoreapi.com/products"));

  if (response.statusCode == 200) {
    List<dynamic> data = json.decode(response.body);
    List<Album> albums = data.map((json) => Album.fromJson(json)).toList();
    return albums;
  } else {
    throw Exception("Failed to load album");
  }
}

class Album {
  final String image;
  final int id;
  final String title;
  final double price;

  Album({
    required this.image,
    required this.id,
    required this.title,
    required this.price,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      image: json['image'],
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
    );
  }
}



class seeMore extends StatefulWidget {
  const seeMore({super.key});

  @override
  State<seeMore> createState() => _seeMoreState();
}

class _seeMoreState extends State<seeMore> {
  late Future<List<Album>> albumData;

  @override
  void initState() {
    super.initState();
    albumData = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("All Product") ,
        backgroundColor: Colors.transparent,
      ),
       body: Center(
         child: FutureBuilder<List<Album>>(
           future: albumData,
           builder: (context, snapshot) {
             if (snapshot.hasData) {
               return SingleChildScrollView(
                 scrollDirection: Axis.vertical,
                 child: Column(
                   children: [
                     for (var i = 0; i < snapshot.data!.length; i += 2)
                       Row(
                         children: [
                           Expanded(
                             child: Padding(
                               padding: EdgeInsets.all(20.0),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     width: 220,
                                     height: 220,
                                     padding: EdgeInsets.all(10),
                                     decoration: BoxDecoration(
                                       color: Colors.grey[200],
                                       borderRadius: BorderRadius.circular(15),
                                     ),
                                     child: ClipRRect(
                                       borderRadius: BorderRadius.circular(25),
                                       child: Image.network(snapshot.data![i].image),
                                     ),
                                   ),
                                   SizedBox(height: 10),
                                   Text(
                                     snapshot.data![i].title,
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 12, // Smaller font size
                                       fontWeight: FontWeight.bold, // Added bold font weight
                                     ),
                                   ),
                                   Text(
                                     "Price: \$${snapshot.data![i].price}",
                                     style: TextStyle(
                                       color: Colors.deepOrange,
                                       fontWeight: FontWeight.w600,
                                       fontSize: 14, // Smaller font size
                                     ),
                                   ),
                                   SizedBox(height: 10),
                                   SvgPicture.asset('assets/icons/Heart Icon_2.svg', width: 20,),
                                 ],
                               ),
                             ),
                           ),
                           SizedBox(width: 10),
                           if (i + 1 < snapshot.data!.length)
                             Expanded(
                               child: Padding(
                                 padding: EdgeInsets.all(20.0),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Container(
                                       width: 220,
                                       height: 220,
                                       padding: EdgeInsets.all(10),
                                       decoration: BoxDecoration(
                                         color: Colors.grey[200],
                                         borderRadius: BorderRadius.circular(15),
                                       ),
                                       child: ClipRRect(
                                         borderRadius: BorderRadius.circular(25),
                                         child: Image.network(snapshot.data![i + 1].image),
                                       ),
                                     ),
                                     SizedBox(height: 10),
                                     Text(
                                       snapshot.data![i + 1].title,
                                       style: TextStyle(
                                         color: Colors.black,
                                         fontSize: 12, // Smaller font size
                                         fontWeight: FontWeight.bold, // Added bold font weight
                                       ),
                                     ),
                                     Text(
                                       "Price: \$${snapshot.data![i + 1].price}",
                                       style: TextStyle(
                                         color: Colors.deepOrange,
                                         fontWeight: FontWeight.w600,
                                         fontSize: 14, // Smaller font size
                                       ),
                                     ),
                                     SizedBox(height: 10),
                                     SvgPicture.asset('assets/icons/Heart Icon_2.svg', width: 20,),
                                   ],
                                 ),
                               ),
                             ),
                           SizedBox(width: 10),
                         ],
                       ),
                   ],
                 ),
               );
             } else if (snapshot.hasError) {
               return Text("Error: ${snapshot.error}");
             } else {
               return CircularProgressIndicator();
             }
           },
         ),
       ),

    );
  }
}
