import 'package:flutter/material.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Index',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RecipeHomePage(),
    );
  }
}

class RecipeHomePage extends StatelessWidget {
  const RecipeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              // Item 1: Main title (center)
              const Center(
                child: Text(
                  'BROWSE CATEGORIES',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.black87,
                  ),
                ),
              ),
              // Item 2: Subtitle (left aligned)
              const Padding(
                padding: EdgeInsets.only(left: 170),
                child: Text(
                  'Not sure about exactly which recipe you\'re looking for? Do a search, or dive into our most popular categories.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    height: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 40), // Add space between subtitle and BY MEAT
              // Item 3: BY MEAT title (center)
              const Center(
                child: Text(
                  'BY MEAT',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.black87,
                  ),
                ),
              ),
              // Item 4: Meat images row
              buildMeatGrid(),
              const SizedBox(height: 40),
              // Item 5: BY COURSE title (center)
              const Center(
                child: Text(
                  'BY COURSE',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.black87,
                  ),
                ),
              ),
              // Item 6: Course images row
              buildCourseGrid(),
              const SizedBox(height: 40),
              // Item 7: BY DESSERT title (center)
              const Center(
                child: Text(
                  'BY DESSERT',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.black87,
                  ),
                ),
              ),
              // Item 8: Dessert images row
              buildDessertGrid(),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMeatGrid() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildMeatItem('BEEF', 'images/beef.jpeg'),
        buildMeatItem('CHICKEN', 'images/chcicken.webp'),
        buildMeatItem('PORK', 'images/pork.webp'),
        buildMeatItem('SEAFOOD', 'images/seafood.jpeg'),
      ],
    );
  }

  Widget buildCourseGrid() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildCourseItem('MAIN DISHES', 'images/maindish.jpeg'),
        buildCourseItem('SALAD RECIPES', 'images/salad.webp'),
        buildCourseItem('SIDE DISHES', 'images/sidedish.webp'),
        buildCourseItem('CROCKPOT', 'images/crockpot.webp'),
      ],
    );
  }

  Widget buildDessertGrid() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildDessertItem('ICE CREAM', 'images/icecream.jpg'),
        buildDessertItem('BROWNIES', 'images/brownies.jpg'),
        buildDessertItem('PIES', 'images/pie.jpg'),
        buildDessertItem('COOKIES', 'images/cookies.jpg'),
      ],
    );
  }

  // For BY MEAT - text overlaid on center of image
  Widget buildMeatItem(String text, String imagePath) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 70,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          width: 140,
          height: 140,
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                shadows: [
                  Shadow(
                    offset: Offset(1, 1),
                    blurRadius: 2,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  // For BY COURSE - text below image
  Widget buildCourseItem(String text, String imagePath) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 70,
        ),
        const SizedBox(height: 8),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  // For BY DESSERT - text below image
  Widget buildDessertItem(String text, String imagePath) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 70,
        ),
        const SizedBox(height: 8),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}