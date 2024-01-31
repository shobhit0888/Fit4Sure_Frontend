import 'dart:convert';

import 'package:fit4sure/homePages/entry_page_1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:http/http.dart' as http;
import '../homePages/entry_page.dart';
import '../widgets/custom_text_field.dart';

class OtpVerification extends StatefulWidget {
  String? phoneNumber;
  // OtpVerification({super.key, this.phoneNumber});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  TextEditingController otpController = TextEditingController();
  Future<void> sendDataToBackend() async {
    final String apiUrl =
        'https://fit4sure.onrender.com/app/user/login'; // Replace with your actual endpoint
    print(widget.phoneNumber);
    print(otpController.text);
    final response = await http.post(
      Uri.parse(apiUrl),
      body: json.encode({
        'contactNumber': widget.phoneNumber,
        'otp': otpController.text,
      }),
      headers: {'Content-Type': 'application/json'},
    );
    var jsonResponse = jsonDecode(response.body);
    if (response.statusCode == 200) {
      print(response.body);
      final Map<String, dynamic> responseData = json.decode(response.body);
      final String myToken = responseData['token'];
      print('Data sent successfully');

      Navigator.pop(context);
      Navigator.pop(context);
      Navigator.pop(context);
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => EntryPage(
                  token: myToken,
                  currentIndex: 0,
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
                children: [
                  Text(
                    "Enter the OTP",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .02,
                  ),
                  Center(
                    child: CustomTextField(
                      hintText: "Enterthe OTP",
                      iconData: Icons.phone,
                      inputType: TextInputType.number,
                      enabled: true,
                      textEditingController: otpController,
                      isObscure: false,
                    ),
                  ),
                  // Center(
                  //   child: OTPTextField(
                  //       controller: otpController,
                  //       length: 5,
                  //       width: MediaQuery.of(context).size.width * .85,
                  //       textFieldAlignment: MainAxisAlignment.spaceAround,
                  //       fieldWidth: MediaQuery.of(context).size.width * .12,
                  //       fieldStyle: FieldStyle.box,
                  //       outlineBorderRadius: 15,
                  //       otpFieldStyle: OtpFieldStyle(
                  //         backgroundColor: Colors.white,
                  //         borderColor: Colors.black,
                  //         focusBorderColor: Colors.black,
                  //       ),
                  //       style:
                  //           const TextStyle(fontSize: 17, color: Colors.grey),
                  //       onChanged: (pin) {
                  //         // print("Changed: " + pin);
                  //       },
                  //       onCompleted: (pin) {
                  //         // print("Completed: " + pin);
                  //       }),
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0, top: 10),
                        child: Text(
                          "Resend OTP in 00:30",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                    ],
                  )
                ],
              )),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              ElevatedButton(
                onPressed: () {
                  // sendDataToBackend();
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return EntryPage(
                      currentIndex: 0,
                      token: "",
                    );
                  }));
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
                  "Verify",
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
