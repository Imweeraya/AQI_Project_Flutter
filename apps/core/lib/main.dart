import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Button App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
                  heightFactor: 0.8, // Set height to 80% of the screen height
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
                            // ตัวอย่างข้อมูลเมือง, AQI และ emoji ตามสภาพอากาศ
                            final List<String> cities = [
                              'Bangkok', 'Chiang Mai', 'Phuket', 'Pattaya',
                              'Khon Kaen', 'Udon Thani', 'Nakhon Ratchasima', 'Hua Hin'
                            ];
                            final List<int> aqiValues = [75, 50, 100, 150, 120, 80, 60, 30];
                            final List<String> weatherEmojis = [
                              '☀️', '🌤️', '🌧️', '⛈️', '🌩️', '🌪️', '🌫️', '❄️'
                            ];
                            
                            return Container(
                              height: 80,
                              margin: const EdgeInsets.only(bottom: 30.0),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 223, 223, 223),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      cities[index],
                                      style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
                                    ),
                                    Text(
                                      'AQI: ${aqiValues[index]}',
                                      style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 26),
                                    ),
                                    Text(
                                      weatherEmojis[index],
                                      style: const TextStyle(fontSize: 24),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
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
