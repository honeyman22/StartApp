import 'package:flutter/material.dart';

class TopdoctorCard extends StatelessWidget {
  const TopdoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black12)),
              clipBehavior: Clip.hardEdge,
              child: Image.asset(
                'assets/images/dentist.png',
                height: 92,
                width: 92,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Text(
                  "Dr. Jenny Wilson",
                  style: TextStyle(
                      color: Colors.black12,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                Text(
                  'Neurologist | Vcare Clinic',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
