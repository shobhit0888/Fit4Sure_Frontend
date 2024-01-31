import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostList extends StatefulWidget {
  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  //  Timer? _timer=;
  @override
  void initState() {
    super.initState();
    // _pageController.addListener(() {
    //   if (_pageController.position.atEdge) {
    //     if (_pageController.position.pixels == 0) {
    //       _pageController.jumpTo(_pageController.position.maxScrollExtent);
    //     } else {
    //       _pageController.jumpTo(_pageController.position.minScrollExtent);
    //     }
    //   }
    // });

    _scrollAutomatically();
  }
  // void initState() {
  //   super.initState();
  //   _pageController.addListener(() {
  //     if (_pageController.position.atEdge) {
  //       if (_pageController.position.pixels == 0) {
  //         _pageController.jumpTo(_pageController.position.maxScrollExtent);
  //       } else {
  //         _pageController.jumpTo(_pageController.position.minScrollExtent);
  //       }
  //     }
  //   });

  //   _scrollAutomatically();
  // }
  void _scrollAutomatically() async {
    await Future.delayed(Duration(seconds: 1));

    // Check if the widget is still mounted before performing any actions
    if (mounted) {
      // Calculate the duration based on the width of the container
      final screenWidth = MediaQuery.of(context).size.width;
      final duration = Duration(
          seconds:
              (screenWidth ~/ 10) * 2); // Assuming each container is 200.0 wide

      // Animate to the next page with a given duration
      await _pageController.animateTo(
        _pageController.position.maxScrollExtent,
        duration: duration,
        curve: Curves.linear,
      );

      // Call the method recursively to keep scrolling continuously
      // if (_pageController.position.maxScrollExtent == 0) {
      //   _scrollAutomatically();
      // }
    }
  }
  // void _scrollAutomatically() async {
  //   await Future.delayed(Duration(seconds: 1));
  //   if (mounted) {
  //     final screenWidth = MediaQuery.of(context).size.width;
  //     final duration =
  //         Duration(seconds: 40); // Assuming each container is 200.0 wide

  //     // Animate to the next page with a given duration
  //     await _pageController.animateTo(
  //       _pageController.position.maxScrollExtent,
  //       duration: duration,
  //       curve: Curves.linear,
  //     );

  //     // Call the method recursively to keep scrolling continuously
  //     _scrollAutomatically();
  //   }
  //   // Calculate the duration based on the width of the container
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Container(
        decoration: const BoxDecoration(
          // make border curve only at left side of container
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
          // borderRadius: BorderRadius.circular(20),
          color: Colors.grey,
        ),
        height: 200,
        child: PageView.builder(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          itemCount: 10, // Number of posts
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Container(
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                margin: EdgeInsets.all(8.0),
                width: 200.0, // Adjust the width according to your needs
                // color: Colors.blue, // You can customize the post appearance here
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                        child: Image.asset(
                          'images/post.png',
                          height: 100,
                          width: 100,
                        )),
                    SizedBox(width: 10),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 30),
                          Text(
                            // 'Post $index',
                            "Dhruv Sharma",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          SizedBox(height: 2),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 11)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    // _timer!.cancel();
    _pageController.dispose();

    super.dispose();
  }
}
