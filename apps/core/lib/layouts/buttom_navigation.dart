import 'package:core/router/go_router.dart';
// import 'package:core_ui/theme/theme_provider.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ButtonNavigation extends StatefulWidget  {
  const ButtonNavigation({super.key , required this.child , required this.location});

  final String location;
  final Widget child;

  @override
  State<ButtonNavigation> createState() => _ButtonNavigationState();
}

class _ButtonNavigationState extends State<ButtonNavigation> {
  int _currentIndex = 0;

  void onTap(BuildContext context, int index) {
    if(index == _currentIndex) return;

    setState(() {
      _currentIndex = index;
    });

    context.go(routes[index]);
  }


  @override
  Widget build(BuildContext context) {

    // final color = ref.watch(appThemeProvider).themeColor;

    return Scaffold(
      body: widget.child,

      bottomNavigationBar: BottomNavigationBar(
        
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.cloud_outlined),
            label: 'My Air',
            backgroundColor: const Color.fromARGB(255, 223, 223, 223),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.map_outlined),
            label: 'Map',
            backgroundColor: const Color.fromARGB(255, 223, 223, 223),
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Color.fromARGB(255, 81, 91, 170),
        unselectedItemColor: const Color.fromARGB(255, 160, 160, 160),
        onTap: (index) {
          onTap(context, index);
        }
      ),
    );
  }
}
