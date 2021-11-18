
import 'package:mobile_midterm_project/Recipes/ingredients.dart';
import 'package:mobile_midterm_project/Recipes/recipes.dart';

class RecipeInfo {
  static List<Recipe> getRecipeData() {
    return [
      Recipe(
        imgPath: 'assets/recipe/greenBeanCasserole.jpg',
        recipeName: 'Green Bean Casserole',
        timeCook: 15,
        servings: 6,
        shortDesc:
            'A great variation of the traditional green bean casserole is topped with French fried onions and Cheddar cheese.',
        recipeDesc:
            'This is the third time we haveve made it and we got awesome reviews. The bowl is always cleaned out.',
        listIngredients: [
          Ingredients(
            ingredientName: 'Canned Green Beans',
            amount: 14.5,
            measurement: 'ounce',
            imgPath: 'assets/recipe/ingredients/cannedGreenBeans.jpg',
          ),
          Ingredients(
            ingredientName: 'Cream of Mushroom',
            amount: 1,
            measurement: 'can',
            imgPath: 'assets/recipe/ingredients/creamOfMushroom.jpg',
          ),
          Ingredients(
            ingredientName: 'French fried Onions',
            amount: 1,
            measurement: 'can',
            imgPath: 'assets/recipe/ingredients/frenchFriedOnions.jpeg',
          ),
          Ingredients(
            ingredientName: 'Shredded Cheddar Cheese',
            amount: 1,
            measurement: 'cup',
            imgPath: 'assets/recipe/ingredients/cheddarCheese.jpg',
          ),
        ],
        directions: [
          'Preheat oven to 350 degrees F (175 degrees C).',
          'Place green beans and soup in a large microwave-safe bowl. Mix well and heat in the microwave on HIGH until warm (3 to 5 minutes).',
          'Stir in 1/2 cup of cheese and heat mixture for another 2 to 3 minutes. Transfer green bean mixture to a casserole dish and sprinkle with French fried onions and remaining cheese.',
          'Bake in a preheated 350 degrees F (175 degrees C) oven until the cheese melts and the onions just begin to brown.'
        ],
      ),
      Recipe(
        imgPath: 'assets/recipe/basicCrepes.jpg',
        recipeName: 'Basic Crepes',
        timeCook: 20,
        servings: 4,
        shortDesc:
            'A pancake that has been thinned out using a cast-iron griddle and is either stuffed or folded and topped with savory or sweet fillings.',
        recipeDesc:
            'This is a scrumptious recipe for thin, delicious German style pancakes.',
        listIngredients: [
          Ingredients(
            ingredientName: 'All-Purpose Flour',
            amount: 1,
            measurement: 'cup',
            imgPath: 'assets/recipe/ingredients/allPurposeFlour.jpg',
          ),
          Ingredients(
            ingredientName: 'Eggs',
            amount: 2,
            measurement: 'oz',
            imgPath: 'assets/recipe/ingredients/threeEggs.jpg',
          ),
          Ingredients(
            ingredientName: 'Milk',
            amount: 1,
            measurement: 'cup',
            imgPath: 'assets/recipe/ingredients/boxedMilk.jpg',
          ),
          Ingredients(
            ingredientName: 'Melted Butter',
            amount: 2,
            measurement: 'tbsp',
            imgPath: 'assets/recipe/ingredients/meltedButter.jpg',
          ),
        ],
        directions: [
          'In a large mixing bowl, whisk together the flour and the eggs. Gradually add in the milk and water, stirring to combine. Add the salt and butter; beat until smooth.',
          'Heat a lightly oiled griddle or frying pan over medium high heat. Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each crepe. Tilt the pan with a circular motion so that the batter coats the surface evenly.',
          'Cook the crepe for about 2 minutes, until the bottom is light brown. Loosen with a spatula, turn and cook the other side. Serve hot.',
        ],
      ),
      Recipe(
        imgPath: 'assets/recipe/russianChickenThighs.jpg',
        recipeName: 'Russian Chicken Thighs',
        timeCook: 60,
        servings: 6,
        shortDesc:
            'Sweet and tangy Russian Chicken, made with bone-in chicken thighs, red Russian style dressing, apricot preserves',
        recipeDesc: 'Everyone always wants the recipe because of the ease of preparation and especially the taste.',
        listIngredients: [
          Ingredients(
            ingredientName: 'Chicken Thighs',
            amount: 1,
            measurement: 'kg',
            imgPath: 'assets/recipe/ingredients/chickenThighs.jpg',
          ),
          Ingredients(
            ingredientName: 'Russian Style Dressing',
            amount: 16,
            measurement: 'oz',
            imgPath: 'assets/recipe/ingredients/russianStyleDressing.png',
          ),
          Ingredients(
            ingredientName: 'Garlic Pepper',
            amount: 1,
            measurement: 'tsp',
            imgPath: 'assets/recipe/ingredients/garlicPowder.jpg',
          ),
          Ingredients(
            ingredientName: 'Apricot Preserves',
            amount: 10,
            measurement: 'oz',
            imgPath: 'assets/recipe/ingredients/apricotPreserves.jpg',
          ),
          Ingredients(
            ingredientName: 'Kosher Salt',
            amount: 1/4,
            measurement: 'tsp',
            imgPath: 'assets/recipe/ingredients/kosherSalt.jpg',
          ),
        ],
        directions: [
          'Preheat oven to 400 degrees and spray a large cast iron with pam cooking spray',
          'Using a large bowl, mix together the french onion mix, russian dressing, and apricot preserves',
          'Using a cast iron, place the chicken into the cast iron and coat with the dressing',
          'Place cast iron into the oven and bake for 75-85 minutes or until the chicken is cooked.',
        ],
      ),
      Recipe(
        imgPath: 'assets/recipe/barbecueAndBeerMeatballs.jpg',
        recipeName: 'Barbecue and Beer Meatballs',
        timeCook: 30,
        servings: 4,
        shortDesc:
            'Quick and easy meatballs drenched in barbecue sauce and beer, topped with jalapenos.',
        recipeDesc:
            'This simple meatball recipe relies on time-saving ingredients that makes it the perfect last-minute appetizer!',
        listIngredients: [
          Ingredients(
            ingredientName: 'Frozen Meatballs',
            amount: 22,
            measurement: 'oz',
            imgPath: 'assets/recipe/ingredients/meatBalls.jpg',
          ),
          Ingredients(
            ingredientName: 'Barbecue Sauce',
            amount: 1,
            measurement: 'cup',
            imgPath: 'assets/recipe/ingredients/barbecueSauce.jpg',
          ),
          Ingredients(
            ingredientName: 'Beer',
            amount: 1/3,
            measurement: 'cup',
            imgPath: 'assets/recipe/ingredients/foodBeer.jpeg',
          ),
          Ingredients(
            ingredientName: 'Jalapenos',
            amount: 2,
            measurement: 'pcs',
            imgPath: 'assets/recipe/ingredients/greenJalapeno.jpg',
          ),
        ],
        directions: [
          'Prepare meatballs according to package directions.',
          'Meanwhile, in a small saucepan, combine barbecue sauce and beer; heat through.',
          'Add meatballs; stir to coat. If desired, top with jalapenos to serve.'
        ],
      ),
      Recipe(
        imgPath: 'assets/recipe/salamiRollUps.jpg',
        recipeName: 'Salami Roll-Ups',
        timeCook: 25,
        servings: 3,
        shortDesc: 'Easy to make salami roll-ups filled with cream cheese and pickle relish',
        recipeDesc:
            'These bite-size appetizers are a cinch to make with just four ingredients—even your kids can help you with them!',
        listIngredients: [
          Ingredients(
            ingredientName: 'Cream Cheese',
            amount: 8,
            measurement: 'oz',
            imgPath: 'assets/recipe/ingredients/creamCheese.jpg',
          ),
          Ingredients(
            ingredientName: 'Hard Salami',
            amount: 1/4,
            measurement: 'kg',
            imgPath: 'assets/recipe/ingredients/salamiMilani.jpg',
          ),
          Ingredients(
            ingredientName: 'Pickle Relish',
            amount: 2,
            measurement: 'tbps',
            imgPath: 'assets/recipe/ingredients/pickleRelish.jpg',
          ),
          Ingredients(
            ingredientName: 'Flour Tortillas',
            amount: 4,
            measurement: 'pcs',
            imgPath: 'assets/recipe/ingredients/flourTortilla.jpg',
          ),
        ],
        directions: [
          'In a small bowl, combine the cream cheese, salami and pickle relish.',
          'Spread over tortillas. Roll up tightly; wrap in plastic.',
          'Refrigerate for 15 minutes. Unwrap and cut each tortilla into 1-in. slices.',
        ],
      ),
    ];
  }
}