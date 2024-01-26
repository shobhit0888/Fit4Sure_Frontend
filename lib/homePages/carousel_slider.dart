import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/banners.dart';

class CarouselImages extends StatefulWidget {
  const CarouselImages({super.key});

  @override
  State<CarouselImages> createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {
  bool _isLoading = true;
  @override
  void initState() {
    super.initState();
    _getData();
  }

  Banners? dataFromAPI;
  _getData() async {
    try {
      String url = "https://fit4sure.onrender.com/admin/banners/list";
      http.Response res = await http.get(Uri.parse(url));
      // print(res.body);
      // print("jbfsdjf");
      if (res.statusCode == 200) {
        dataFromAPI = Banners.fromJson(json.decode(res.body));
        _isLoading = false;
        // print("sss\n\n\n${dataFromAPI!.image!.length}");
        setState(() {});
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return

        // _isLoading
        //     ? const Center(
        //         child: CircularProgressIndicator(),
        //       )
        //     : Padding(
        //         padding: const EdgeInsets.only(top: 12),
        //         child: SizedBox(
        //           height: MediaQuery.of(context).size.height * .24,
        //           width: MediaQuery.of(context).size.width * .95,
        //           child: CarouselSlider.builder(
        //             itemCount: dataFromAPI!.image!.length,
        //             itemBuilder: (BuildContext context, index, int) {
        //               // DocumentSnapshot<Map<String, dynamic>> sliderImage =
        //               //     snapShot.data![index];
        //               // Map getImage = sliderImage.data() as Map<dynamic, dynamic>;
        //               return Container(
        //                   width: MediaQuery.of(context).size.width,
        //                   margin: const EdgeInsets.symmetric(horizontal: 1.0),
        //                   child: ClipRRect(
        //                     borderRadius: BorderRadius.circular(20),
        //                     // child:NetworkImage(imageUrl);
        //                     child: Image.network(
        //                       // getImage['photoUrl'],
        //                       dataFromAPI!.image![index],
        //                       fit: BoxFit.fill,
        //                     ),
        //                   ));
        //             },
        //             options: CarouselOptions(
        //               height: MediaQuery.of(context).size.height * 0.95,
        //               aspectRatio: 16 / 9,
        //               viewportFraction: 0.85,
        //               initialPage: 0,
        //               enableInfiniteScroll: true,
        //               reverse: false,
        //               autoPlay: true,
        //               autoPlayInterval: const Duration(seconds: 4),
        //               autoPlayAnimationDuration: const Duration(milliseconds: 1000),
        //               autoPlayCurve: Curves.fastOutSlowIn,
        //               enlargeCenterPage: true,
        //               // enlargeFactor: 0.3,
        //               scrollDirection: Axis.horizontal,
        //               // onPageChanged: (int i, carouselPageChangedReason) {
        //               //   setState(() {
        //               //     _index = i;
        //               //   });
        //               // }
        //             ),
        //           ),
        //         ),
        //       );
        CarouselSlider(
            items: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage("images/carousel.png"),
                  fit: BoxFit.cover,
                )),
          )
        ],
            options: CarouselOptions(
                aspectRatio: 16 / 9,
                autoPlay: true,
                height: 180,
                enlargeCenterPage: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8));
  }
}
