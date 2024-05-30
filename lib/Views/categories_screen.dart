import 'package:diplom_main/Model/categoriesInfo.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  final int categoryIndex;

  const CategoriesScreen({super.key, required this.categoryIndex});

  @override
  Widget build(BuildContext context) {
    CategoryInfo categoryInfo = CategoriesInfo.continents[categoryIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Континент'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categoryInfo.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Описание:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              categoryInfo.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              'Культурные особенности:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              categoryInfo.culturalFeatures,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}