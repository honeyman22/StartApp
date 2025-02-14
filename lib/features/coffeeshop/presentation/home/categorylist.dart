import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  final List<String> categoryArray = [
    "All Coffee",
    "Machiato",
    "Latte",
    "Americano",
    "Cappuccino",
    "Cafe Latte"
  ];

  int activeIndex = 0; // Track active category
  int hoveredIndex = -1; // Track hovered category

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50, // Set the height of the category list
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryArray.length,
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: MouseRegion(
            onEnter: (_) => setState(() => hoveredIndex = index),
            onExit: (_) => setState(() => hoveredIndex = -1),
            child: GestureDetector(
              onTap: () => setState(() => activeIndex = index),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: activeIndex == index
                      ? Colors.brown // Active state color
                      : (hoveredIndex == index
                          ? Colors.brown.shade300 // Hover state color
                          : Colors.grey.shade300), // Default color
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    categoryArray[index],
                    style: TextStyle(
                      color: activeIndex == index ? Colors.white : Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
