// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  backgroundColor: Colors.white,
                  title: const Center(
                    child: Text(
                      'AQi',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                  content: SizedBox(
                    width: 600, 
                    height: 800, 
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildCustomContainer('Good', '0-50', Color.fromARGB(218, 91, 196, 35)),
                        _buildCustomContainer('Moderate', '51-100', Color.fromARGB(203, 244, 224, 49)),
                        _buildCustomContainer('Unhealthy for Sensitive Groups', '101-150', Color.fromARGB(208, 227, 145, 20)),
                        _buildCustomContainer('Unhealthy', '151-200', const Color.fromARGB(211, 244, 67, 54)),
                        _buildCustomContainer('Very Unhealthy', '201-300', Color.fromARGB(204, 155, 39, 176)),
                        _buildCustomContainer('Hazardous', '301+', Color.fromARGB(214, 121, 85, 72)),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('close'),
                    ),
                  ],
                );
              },
            );
          },
          child: const Text('Press Me'),
        ),
      ),
    );
  }

Widget _buildCustomContainer(String text1, String text2, Color color) {
  return Container(
    width: 350,  
    height: 70,
    padding: EdgeInsets.symmetric(horizontal: 5),  
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 4,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        Container(
          width: 230,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: color,
          ),
          child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                text1.length > 17 ? text1.substring(0,14) + '\n' + text1.substring(9) : text1,
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold,fontSize: 13),
              ),
              Text(
                text2,
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0) , fontWeight: FontWeight.bold,fontSize: 18),
              ),
            ],
          ),
        ),
      ],
    ),
    margin: const EdgeInsets.only(bottom: 10.0),
  );
}
}