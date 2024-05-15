import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.8,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: List<Widget>.generate(8, (int index) {
                return Container(
                  height: 80,
                  margin: const EdgeInsets.only(top: 20.0, bottom: 20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(185, 49, 225, 52),
                    borderRadius: BorderRadius.circular(60.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Chiang Mai',
                          style: TextStyle(
                            color: Color.fromARGB(184, 20, 20, 20),
                            fontSize: 16,
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'AQI',
                              style: TextStyle(
                                color: Color.fromARGB(184, 20, 20, 20),
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '54',
                              style: TextStyle(
                                color: Color.fromARGB(184, 20, 20, 20),
                                fontSize: 35,
                              ),
                            ),
                          ],
                        ),
                        SvgPicture.string(
                          '''
                          <svg width="55" height="55" viewBox="0 0 55 55" fill="none" xmlns="http://www.w3.org/2000/svg">
                          <path d="M27.5 50.4167C14.8431 50.4167 4.58334 40.1569 4.58334 27.5C4.58334 14.8431 14.8431 4.58333 27.5 4.58333C40.1569 4.58333 50.4167 14.8431 50.4167 27.5C50.4167 40.1569 40.1569 50.4167 27.5 50.4167ZM27.5 45.8333C32.3623 45.8333 37.0255 43.9018 40.4636 40.4636C43.9018 37.0255 45.8333 32.3623 45.8333 27.5C45.8333 22.6377 43.9018 17.9745 40.4636 14.5364C37.0255 11.0982 32.3623 9.16667 27.5 9.16667C22.6377 9.16667 17.9745 11.0982 14.5364 14.5364C11.0982 17.9745 9.16667 22.6377 9.16667 27.5C9.16667 32.3623 11.0982 37.0255 14.5364 40.4636C17.9745 43.9018 22.6377 45.8333 27.5 45.8333ZM18.3333 32.0833H36.6667V36.6667H18.3333V32.0833ZM18.3333 25.2083C17.4217 25.2083 16.5473 24.8462 15.9027 24.2015C15.258 23.5569 14.8958 22.6825 14.8958 21.7708C14.8958 20.8592 15.258 19.9848 15.9027 19.3402C16.5473 18.6955 17.4217 18.3333 18.3333 18.3333C19.245 18.3333 20.1194 18.6955 20.764 19.3402C21.4087 19.9848 21.7708 20.8592 21.7708 21.7708C21.7708 22.6825 21.4087 23.5569 20.764 24.2015C20.1194 24.8462 19.245 25.2083 18.3333 25.2083ZM36.6667 25.2083C35.755 25.2083 34.8806 24.8462 34.236 24.2015C33.5913 23.5569 33.2292 22.6825 33.2292 21.7708C33.2292 20.8592 33.5913 19.9848 34.236 19.3402C34.8806 18.6955 35.755 18.3333 36.6667 18.3333C37.5784 18.3333 38.4527 18.6955 39.0973 19.3402C39.742 19.9848 40.1042 20.8592 40.1042 21.7708C40.1042 22.6825 39.742 23.5569 39.0973 24.2015C38.4527 24.8462 37.5784 25.2083 36.6667 25.2083Z" fill="#71A222"/>
                          </svg>
                          ''',
                          width: 60,
                          height: 60,
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
  }
}
