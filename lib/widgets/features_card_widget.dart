// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fit4sure/homePages/feature_dialog.dart';
import 'package:flutter/material.dart';

class FeaturesCardWidget extends StatefulWidget {
  String? category;
  FeaturesCardWidget({
    Key? key,
    this.category,
  }) : super(key: key);

  @override
  State<FeaturesCardWidget> createState() => _FeaturesCardWidgetState();
}

class _FeaturesCardWidgetState extends State<FeaturesCardWidget> {
  void _showFeatureDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return FeaturesDialogWidget();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showFeatureDialog(context);
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * .15,
          width: MediaQuery.of(context).size.width * .38,
          decoration: BoxDecoration(
            color: Color(0xFFF9F6F6),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/Banner.png'),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.category.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
