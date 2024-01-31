import 'package:flutter/material.dart';

class MyReferAndEarnPage extends StatelessWidget {
  // Replace 'YOUR_REFERRAL_CODE' with the actual referral code for the user
  final String userReferralCode = 'YOUR_REFERRAL_CODE';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refer and Earn'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Your Referral Code:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              userReferralCode,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Share this code with your friends and earn rewards!',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Add logic to share the referral code (e.g., using share package)
                _shareReferralCode(context, userReferralCode);
              },
              child: Text('Share Your Referral Code'),
            ),
          ],
        ),
      ),
    );
  }

  void _shareReferralCode(BuildContext context, String referralCode) {
    // Add logic to share the referral code (e.g., using share package)
    // You can use the share package to implement this functionality.
    // Make sure to add the share package to your pubspec.yaml file.

    // Example using the share package:
    // import 'package:share/share.dart';
    // Share.share('Use my referral code $referralCode to join the app!');
  }
}