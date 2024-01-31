import 'package:flutter/material.dart';

class MyAboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to FitnessApp!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Our Mission:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Empowering individuals to achieve their fitness goals '
              'by providing personalized workouts, expert guidance, '
              'and a supportive community.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Meet Our Team:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            TeamMemberCard(
              name: 'John Doe',
              role: 'Founder & CEO',
            ),
            TeamMemberCard(
              name: 'Jane Smith',
              role: 'Fitness Trainer',
            ),
            // Add more TeamMemberCard widgets for each team member
          ],
        ),
      ),
    );
  }
}

class TeamMemberCard extends StatelessWidget {
  final String name;
  final String role;

  const TeamMemberCard({required this.name, required this.role, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(
          name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          role,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
