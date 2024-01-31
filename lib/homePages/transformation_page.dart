import 'package:flutter/material.dart';

class FitnessTransformationsPage extends StatelessWidget {
  // Sample data: Replace with your actual fitness transformations data
  final List<FitnessTransformation> transformations = [
    FitnessTransformation(
      imageUrl: 'https://i.ytimg.com/vi/oczdaKr1xiI/maxresdefault.jpg',
      description: 'Lost 20 lbs in 2 months. Feeling amazing!',
    ),
    FitnessTransformation(
      imageUrl: 'http://static.boredpanda.com/blog/wp-content/uploads/2017/05/before-after-body-building-fitness-transformation-12-5912f8de86e99__700.jpg',
      description: 'Gained muscle and improved overall strength.',
    ),
    // Add more transformations as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness Transformations'),
      ),
      body: ListView.builder(
        itemCount: transformations.length,
        itemBuilder: (context, index) {
          return FitnessTransformationCard(transformation: transformations[index]);
        },
      ),
    );
  }
}

class FitnessTransformation {
  final String imageUrl;
  final String description;

  FitnessTransformation({required this.imageUrl, required this.description});
}

class FitnessTransformationCard extends StatelessWidget {
  final FitnessTransformation transformation;

  const FitnessTransformationCard({Key? key, required this.transformation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            transformation.imageUrl,
            fit: BoxFit.cover,
            height: 200,
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              transformation.description,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}