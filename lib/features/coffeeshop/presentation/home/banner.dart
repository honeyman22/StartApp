import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: double.infinity,
      child: Stack(
        children: [
          /// Background Image
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16), // Set border radius
              child: Image.asset(
                'assets/images/coffeebannerhome.png',
                fit: BoxFit.cover, // Ensure full coverage
              ),
            ),
          ),

          /// Text Overlay
          Positioned(
            top: 20,
            left: 20, // Adjusted for better spacing
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Column(
                  children: [
                    SizedBox(
                      width: 220, // Give it a max width
                      child: Text(
                        'Buy one get one FREE',
                        textAlign: TextAlign.left,
                        maxLines: 2,
                        overflow:
                            TextOverflow.visible, // Ensures text is wrapped
                        softWrap: true, // Allows wrapping
                        style: const TextStyle(
                          fontSize: 32, // Reduced slightly to fit better
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
