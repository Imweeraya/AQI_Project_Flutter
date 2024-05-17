import 'package:core/widgets/internet_status_text.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('No Internet Example')),
      body: NoInternetWidget(),
    ),
  ));
}
