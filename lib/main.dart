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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
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
              const SizedBox(height: 20),
              const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Not sure about exactly which recipe you\'re looking for? Do a search, or dive into our most popular categories.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),

              buildSectionTitle('BY MEAT'),
              const SizedBox(height: 30),
              buildMeatGrid(),
              const SizedBox(height: 50),

              buildSectionTitle('BY COURSE'),
              const SizedBox(height: 30),
              buildCourseGrid(),
              const SizedBox(height: 50),

              buildSectionTitle('BY DESSERT'),
              const SizedBox(height: 30),
              buildDessertGrid(),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Center(
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget buildMeatGrid() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildCircularItemWithImage('BEEF', 'images/beef.jpeg'),
        buildCircularItemWithImage('CHICKEN', 'images/chcicken.webp'),
        buildCircularItemWithImage('PORK', 'images/pork.webp'),
        buildCircularItemWithImage('SEAFOOD', 'images/seafood.jpeg'),
      ],
    );
  }

  Widget buildCourseGrid() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildCircularItemWithImage('MAIN DISH', 'images/maindish.jpeg'),
        buildCircularItemWithImage('SALAD', 'images/salad.webp'),
        buildCircularItemWithImage('SIDE DISH', 'images/sidedish.webp'),
        buildCircularItemWithImage('CROCKPOT', 'images/crockpot.webp'),
      ],
    );
  }

  Widget buildDessertGrid() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildCircularItemWithImage('Ice Cream', 'images/icecream.jpg'),
        buildCircularItemWithImage('Brownies', 'images/brownies.jpg'),
        buildCircularItemWithImage('Pies', 'images/pie.jpg'),
        buildCircularItemWithImage('Cookies', 'images/cookies.jpg'),
      ],
    );
  }

  Widget buildCircularItemWithImage(String text, String imagePath) {
    return Container(
      width: 140,
      height: 140,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipOval(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
              ),
              child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
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
        ),
      ),
    );
  }
}