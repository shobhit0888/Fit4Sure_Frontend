import 'package:flutter/material.dart';

class MyHelpSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help and Support'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showHelpSupportDialog(context);
          },
          child: Text('Get Help'),
        ),
      ),
    );
  }

  void _showHelpSupportDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Help and Support'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'For assistance or inquiries, please contact:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Email: support@example.com',
                style: TextStyle(fontSize: 14),
              ),
              Text(
                'Phone: +1 (123) 456-7890',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 20),
              Text(
                'Our support team is available from Monday to Friday, 9 AM - 5 PM.',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}