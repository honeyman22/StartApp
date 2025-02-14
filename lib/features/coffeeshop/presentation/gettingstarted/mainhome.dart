import 'package:flutter/material.dart';
import 'package:tutatrials/features/login/presentation/widgets/custom_button.dart';

class CoffeeshopGettingStarted extends StatelessWidget {
  const CoffeeshopGettingStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          /// Background Image (Takes Half of the Screen)
          Expanded(
            flex: 6, // 2 parts of the screen
            child: Image.asset(
              'assets/images/coffeemain.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),

          /// Content Section (Takes the remaining space)
          Expanded(
            flex: 4, // 1 part of the screen
            child: Stack(
              alignment: Alignment.topRight, // Centers content inside Stack
              children: [
                /// Background Container
                Container(
                  padding: const EdgeInsets.all(20),
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                ),

                /// Content (Title + Subtitle + Button)
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /// Title
                    const Text(
                      'Fall in Love with Coffee in Blissful Delight!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                      ),
                    ),
                    const SizedBox(height: 10),

                    /// Subtitle
                    const Text(
                      'Welcome to our cozy coffee corner, where every cup is a delight for you.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 20),

                    /// Button
                    CustomButton(
                      text: "Get Started",
                      onPressed: () =>
                          Navigator.pushNamed(context, '/coffehome'),
                      backgroundColor: const Color(0xFFC67C4E),
                      textColor: Colors.white,
                      width: 250,
                      height: 40,
                      borderRadius: 16,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
