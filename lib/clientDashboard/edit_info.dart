import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController dietController = TextEditingController();
  TextEditingController diseaseController = TextEditingController();
  TextEditingController coachController = TextEditingController();

  @override
  void initState() {
    // Initialize the text controllers with existing data
    nameController.text = "Shobhit Gupta";
    mobileController.text = "+91 9696660547";
    genderController.text = "Male";
    ageController.text = "22";
    weightController.text = "75";
    heightController.text = "5'11''";
    dietController.text = "Veg";
    diseaseController.text = "No";
    coachController.text = "Shobhit Gupta";

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: mobileController,
                decoration: InputDecoration(labelText: 'Mobile No.'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: genderController,
                decoration: InputDecoration(labelText: 'Gender'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: ageController,
                decoration: InputDecoration(labelText: 'Age'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: weightController,
                decoration: InputDecoration(labelText: 'Weight'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: heightController,
                decoration: InputDecoration(labelText: 'Height'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: dietController,
                decoration: InputDecoration(labelText: 'Diet'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: diseaseController,
                decoration: InputDecoration(labelText: 'Disease'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: coachController,
                decoration: InputDecoration(labelText: 'Coach'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add logic to save updated profile data
                  _saveProfileData();
                },
                child: Text('Save Changes'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _saveProfileData() {
    // Add logic to save the updated profile data
    // You can use the text controllers to get the updated values
    // For example: nameController.text, mobileController.text, etc.
  }
}
