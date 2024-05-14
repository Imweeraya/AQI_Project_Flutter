// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

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
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return FractionallySizedBox(
                  heightFactor: 0.8, 
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: List<Widget>.generate(8, (int index) {
                            return Container(
                              height: 80,
                              margin: const EdgeInsets.only(bottom: 30.0),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 113, 214, 90),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Chiang Mai',
                                      style: const TextStyle(color: Color.fromARGB(184, 20, 20, 20), fontSize: 16),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,                                      
                                      children: [
                                        const Text(
                                          'AQI',
                                          style: TextStyle(color: Color.fromARGB(184, 20, 20, 20), fontSize: 16),
                                        ),
                                        Text(
                                          '54',
                                          style: const TextStyle(color: Color.fromARGB(184, 20, 20, 20), fontSize: 35),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'sss',
                                      style: TextStyle(color:Color.fromARGB(184, 20, 20, 20), fontSize: 36),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: const Text('Press Me'),
        ),
      ),
    );
  }
}
