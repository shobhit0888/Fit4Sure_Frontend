import 'dart:convert';

import 'package:fit4sure/signInPages/otp.dart';
import 'package:fit4sure/signUpPages/contact_page.dart';
import 'package:fit4sure/signUpPages/personal_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import '../widgets/custom_text_field.dart';

class ContactNumber extends StatefulWidget {
  const ContactNumber({super.key});

  @override
  State<ContactNumber> createState() => _ContactNumberState();
}

class _ContactNumberState extends State<ContactNumber> {
  TextEditingController contactNumberController = TextEditingController();
  Future<void> sendDataToBackend() async {
    final String apiUrl =
        'https://fit4sure.onrender.com/app/user/loginOTP'; // Replace with your actual endpoint
    print(contactNumberController.text);
    final response = await http.post(
      Uri.parse(apiUrl),
      body: json.encode({
        'phone': "+91${contactNumberController.text}",
      }),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      print(response.body);
      print('Data sent successfully');
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => OtpVerification(
                  phoneNumber: "+91${contactNumberController.text}",
                )),
      );
    } else {
      print(response.body);
      print('Failed to send data. Error code: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'images/image1.png',
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      top: 350, child: Image.asset('images/Overlay.png')),
                  Positioned(
                      top: 20,
                      left: 20,
                      child: Image.asset('images/image2.png')),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Text(
                            "Contact Number",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    CustomTextField(
                      hintText: "Enter registered contact number",
                      iconData: Icons.phone,
                      inputType: TextInputType.number,
                      enabled: true,
                      textEditingController: contactNumberController,
                      isObscure: false,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 45.0),
                          child: Text(
                            "Don't have an account?",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ContactNumberSignUp()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .035,
              ),
              ElevatedButton(
                onPressed: () {
                  sendDataToBackend();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 15,
                  ),
                ),
                child: Text(
                  "Send OTP",
                  // buttonString[index],
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
