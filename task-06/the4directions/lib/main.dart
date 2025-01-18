import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GameScreen(),
    );
  }
}

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  double x = 0;
  double y = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/background.jpg', // Replace with your background image file
              fit: BoxFit.cover,
            ),
          ),
          // Character image
          Positioned(
            left: x,
            top: y,
            child: Image.asset(
              'assets/character.png', // Replace with your character image file
              width: 50,
              height: 50,
            ),
          ),
          // Buttons to move the character
          Positioned(
            bottom: 50,
            left: 50,
            child: IconButton(
              icon: Icon(Icons.arrow_upward),
              onPressed: () {
                setState(() {
                  y -= 10;
                });
              },
            ),
          ),
          Positioned(
            bottom: 50,
            left: 150,
            child: IconButton(
              icon: Icon(Icons.arrow_downward),
              onPressed: () {
                setState(() {
                  y += 10;
                });
              },
            ),
          ),
          Positioned(
            bottom: 50,
            left: 250,
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                setState(() {
                  x -= 10;
                });
              },
            ),
          ),
          Positioned(
            bottom: 50,
            left: 350,
            child: IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                setState(() {
                  x += 10;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
