import 'package:fit4sure/homePages/vedio_player.dart';
import 'package:flutter/material.dart';

class TestimonialsPage extends StatefulWidget {
  @override
  _TestimonialsPageState createState() => _TestimonialsPageState();
}

class _TestimonialsPageState extends State<TestimonialsPage> {
  // Replace with your YouTube video IDs
  List<String> videoIds = [
    'https://youtu.be/8deZSmo7vWs',
    'https://www.youtube.com/watch?v=RKYhcPV2dbA',
    'https://www.youtube.com/watch?v=8tev7YTVa3U',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testimonials'),
      ),
      body: ListView.builder(
        itemCount: videoIds.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  VedioPlayer(vedioId: videoIds[index]),
                  SizedBox(height: 8),
                  Text(
                    'Testimonial ${index + 1}',
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Additional information or description goes here.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
