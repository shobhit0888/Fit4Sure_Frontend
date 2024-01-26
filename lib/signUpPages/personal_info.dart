import 'dart:convert';

import 'package:fit4sure/homePages/entry_page.dart';
import 'package:fit4sure/signInPages/contact_number.dart';
import 'package:fit4sure/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';

class PersonalInfoForSignUp extends StatefulWidget {
  String? phoneNumber;
  PersonalInfoForSignUp({super.key, this.phoneNumber});

  @override
  State<PersonalInfoForSignUp> createState() => _PersonalInfoForSignUpState();
}

class _PersonalInfoForSignUpState extends State<PersonalInfoForSignUp> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailIdController = TextEditingController();
  //  SharedPreferences? prefs;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   initSharedPref();
  // }

  // void initSharedPref() async {
  //   prefs = await SharedPreferences.getInstance();
  // }

// Function to call backend API to register user
  Future<void> sendDataToBackend() async {
    final String apiUrl =
        'https://fit4sure.onrender.com/app/user/signup'; // Replace with your actual endpoint
    // print(widget.phoneNumber);
    // print(otpController.text);
    final response = await http.post(
      Uri.parse(apiUrl),
      body: json.encode({
        'email': emailIdController.text,
        'firstName': firstNameController.text,
        'lastName': lastNameController.text,
        'contactNumber': widget.phoneNumber,
      }),
      headers: {'Content-Type': 'application/json'},
    );
    var jsonResponse = jsonDecode(response.body);
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      final String myToken = responseData['token'];
     
      print('Data sent successfully');
      print(response.body);
      Navigator.pop(context);
      Navigator.pop(context);
      Navigator.pop(context);
      Navigator.pop(context);
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => EntryPage(
                  currentIndex: 0,
                  token: myToken,
                )),
      );
    } else {
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
              // screens[index],
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: Text(
                        "First Name",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    CustomTextField(
                      hintText: "Enter your first name",
                      iconData: Icons.person,
                      inputType: TextInputType.text,
                      enabled: true,
                      textEditingController: firstNameController,
                      isObscure: false,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: Text(
                        "Last Name",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    CustomTextField(
                      hintText: "Enter your last name",
                      iconData: Icons.person,
                      inputType: TextInputType.text,
                      enabled: true,
                      textEditingController: lastNameController,
                      isObscure: false,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: Text(
                        "Email ID",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    CustomTextField(
                      hintText: "Enter your emailID name",
                      iconData: Icons.person,
                      inputType: TextInputType.emailAddress,
                      enabled: true,
                      textEditingController: emailIdController,
                      isObscure: false,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 45.0),
                          child: Text(
                            "Already have an account?",
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
                                  builder: (context) => ContactNumber()),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              "Sign In",
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
                height: MediaQuery.of(context).size.height * .02,
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
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * .2,
                    vertical: MediaQuery.of(context).size.height * .02,
                  ),
                ),
                child: Text(
                  "Next",
                  // buttonString[index],
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
