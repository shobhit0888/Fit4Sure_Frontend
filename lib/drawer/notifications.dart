import 'package:flutter/material.dart';

class MyNotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          NotificationCard(
            title: 'New Workout Available!',
            subtitle: 'Explore our latest workout plans.',
            timestamp: '2 hours ago',
          ),
          NotificationCard(
            title: 'Achievement Unlocked!',
            subtitle: 'Congratulations! You reached a new milestone.',
            timestamp: 'Yesterday',
          ),
          NotificationCard(
            title: 'Reminder: Yoga Session',
            subtitle: 'Don\'t forget to join the yoga session at 5 PM.',
            timestamp: '2 days ago',
          ),
          // Add more NotificationCard widgets for additional notifications
        ],
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String timestamp;

  const NotificationCard({
    required this.title,
    required this.subtitle,
    required this.timestamp,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.only(bottom: 16),
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subtitle),
        trailing: Text(
          timestamp,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}