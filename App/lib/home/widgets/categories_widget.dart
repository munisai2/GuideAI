import 'package:flutter/material.dart';
import 'package:travel_app_flutter/home/model/home_models.dart';

class CategoriesWidget extends StatelessWidget {
  static const items = [
    HomeScreenCategoryItems(
        name: "Restaurents",
        image: Icon(
          Icons.restaurant,
          color: Color(0xFFFE7245),
        )),
    HomeScreenCategoryItems(
        name: "Security",
        image: Icon(Icons.security, color: Color(0xFFFE7245))),
    HomeScreenCategoryItems(
        name: "Live Events",
        image: Icon(Icons.library_music, color: Color(0xFFFE7245))),
    HomeScreenCategoryItems(
        name: "Food", image: Icon(Icons.food_bank, color: Color(0xFFFE7245))),
    HomeScreenCategoryItems(
        name: "Lang Trans",
        image: Icon(Icons.language_rounded, color: Color(0xFFFE7245))),
  ];

  Widget _returnItem(HomeScreenCategoryItems item) {
    return Column(children: [
      Row(
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
                child: Center(
                  child: item.image,
                ),
              ),
              Text(
                item.name,
                style: const TextStyle(fontSize: 12, color: Colors.white),
              )
            ],
          ),
          const SizedBox(
            width: 12,
          ),
          Container()
        ],
      ),
      // SizedBox(
      //   width: 20,
      //   height: 20,
      //   child: DecoratedBox(
      //     decoration: BoxDecoration(color: Colors.red),
      //   ),
      // )
    ]);
  }

  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        for (var i = 0; i < items.length; i++) _returnItem(items[i])
      ]),
    );
  }
}
