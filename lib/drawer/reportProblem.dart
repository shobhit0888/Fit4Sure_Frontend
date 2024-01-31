import 'package:flutter/material.dart';

class MyReportProblemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report a Problem'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showReportProblemDialog(context);
          },
          child: Text('Report a Problem'),
        ),
      ),
    );
  }

  void _showReportProblemDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Report a Problem'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Please describe the problem you are experiencing:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: 'Type your problem here...',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add logic to submit the problem report
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );
  }
}
