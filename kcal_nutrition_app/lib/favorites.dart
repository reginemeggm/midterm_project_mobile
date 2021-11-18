// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'package:mobile_midterm_project/Food/foodNotFound.dart';
import 'package:mobile_midterm_project/Food/foods_info.dart';
import 'package:mobile_midterm_project/Recipes/recipe_not_found.dart';
import 'package:mobile_midterm_project/Recipes/recipe_info.dart';
import 'Food/food_found.dart';
import 'Recipes/recipe_found.dart';
import 'package:google_fonts/google_fonts.dart';


class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  List listFood = FoodUtils.getFoodData();
  List listRecipe = RecipeInfo.getRecipeData();
  late List<bool> isSelected;
  final controller = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    isSelected = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: ToggleButtons(
                  fillColor: Colors.green.shade200,
                  selectedColor: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 40, top: 10, right: 40, bottom: 10),
                      child: Text('Foods', style: GoogleFonts.nunito(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 40, top: 10, right: 40, bottom: 10),
                      child: Text('Recipes', style: GoogleFonts.nunito(textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
                    ),
                  ],
                  onPressed: (int index) {
                    setState(() {
                      for (int i = 0; i < isSelected.length; i++) {
                        isSelected[i] = i == index;
                      }
                    });
                    onTapped(index);
                  },
                  isSelected: isSelected),
            ),
          ),
          Expanded(
            child: PageView(
              controller: controller,
              children: [
                Container(
                  child: _isListEmpty(listFood) ? FoodNotFound() : FoodFound(),
                ),
                Container(
                    child: _isListEmpty(listRecipe)
                        ? RecipeNotFound()
                        : RecipeFound()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onTapped(int index) {
    controller.jumpToPage(index);
  }

  bool _isListEmpty(List foodList) {
    if (foodList.isEmpty) {
      return true;
    } else {
      return false;
    }
  }
}