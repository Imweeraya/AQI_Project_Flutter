import 'package:core/widgets/internet_status_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('No Internet Example')),
      body: NoInternetWidget(),
    ),
  ));
}
