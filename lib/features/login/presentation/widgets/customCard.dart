import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.430,
      height: 260,
      child: Card(
        color: Colors.white,
        clipBehavior: Clip.hardEdge,
        child: Column(
          children: [
            Image.asset(
              "assets/images/product.jpg",
              fit: BoxFit.fill, // ✅ Add BoxFit
              width: double.infinity, // Optional: To make image full width
              height: 200,
              // Optional: Adjust height
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(6, 2, 6, 0),
              child: Row(
                children: [
                  Text(
                    'Dr. Ester',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      SizedBox(width: 4),
                      Text('4.5')
                    ],
                  )
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 6),
                child: Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Aligns to the top
                  children: [
                    Text(
                      'Dentist',
                      style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260, // ✅ Set height for horizontal scrolling
      child: ListView.separated(
        scrollDirection: Axis.horizontal, // ✅ Horizontal scrolling
        itemCount: 5, // Change this as needed
        separatorBuilder: (context, index) =>
            SizedBox(width: 8), // ✅ 20px spacing
        itemBuilder: (context, index) => ProductCard(),
      ),
    );
  }
}
