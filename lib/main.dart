import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exam App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          titleLarge: TextStyle(
              fontFamily: 'Roboto', fontSize: 26, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(
              fontFamily: 'Roboto', fontSize: 16, color: Colors.black),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Exam App'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Settings tapped!'),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Welcome to the Flutter Exam!',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Image.asset(
              'assets/images/benitomanalotomeme.jpg', // Update with your image path
              height: 200,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              'This app demonstrates the use of assets, fonts, buttons, and icons in Flutter.',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 40),
          // Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  print('Confirmation Successful!');
                },
                icon: Icon(Icons.check),
                label: Text('Confirm'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Button color
                ),
              ),
              SizedBox(width: 20), // Space between buttons
              ElevatedButton.icon(
                onPressed: () {
                  print('Action Canceled');
                },
                icon: Icon(Icons.close),
                label: Text('Cancel'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Button color
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          // PageView for images
          Expanded(
            child: PageView(
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/18UMGIM26291.rgb.jpg', // Update with your first image path
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Image.asset(
                    'assets/images/benitomanalotomeme.jpg', // Update with your second image path
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
