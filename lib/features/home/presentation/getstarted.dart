import 'package:flutter/material.dart';
import 'package:tutatrials/features/login/presentation/widgets/custom_button.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: [
          // Background Image
          Center(
            child: Image.asset(
              "assets/images/dentist.png",
            ),
          ),

          // Overlay Component at the Bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "More Comfortable Chat With the Doctor",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Book an appointment with doctor. Chat with doctor via appointment letter and get consultationt.",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  CustomButton(
                      text: "Get Started",
                      onPressed: () =>
                          Navigator.pushNamed(context, '/coffeehome'),
                      backgroundColor: Color(0xFF1565C0),
                      textColor: Colors.white,
                      width: 280,
                      height: 40,
                      borderRadius: 8)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
