import 'package:flutter/material.dart';
import 'package:travel_app_flutter/home/model/home_models.dart';

class CategoriesWidget extends StatelessWidget {
  static const items = [
    HomeScreenCategoryItems(name: "Restaurants", image: Icon(Icons.restaurant, color: Color(0xFFFE7245))),
    HomeScreenCategoryItems(name: "Security", image: Icon(Icons.security, color: Color(0xFFFE7245))),
    HomeScreenCategoryItems(name: "Live Events", image: Icon(Icons.library_music, color: Color(0xFFFE7245))),
    HomeScreenCategoryItems(name: "Food", image: Icon(Icons.food_bank, color: Color(0xFFFE7245))),
    HomeScreenCategoryItems(name: "Lang Trans", image: Icon(Icons.language_rounded, color: Color(0xFFFE7245))),
  ];

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((item) => _returnItem(item)).toList(),
      ),
    );
  }

  Widget _returnItem(HomeScreenCategoryItems item) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(child: item.image),
            ),
            Text(item.name, style: const TextStyle(fontSize: 12, color: Colors.white)),
          ],
        ),
        const SizedBox(width: 12),
        Container(),
      ],
    );
  }
}
