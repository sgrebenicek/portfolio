import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height - 50,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/drake_zest.jpg'),
                fit: BoxFit.cover),
          ),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Štěpán Grebeníček',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 64),
                ),
                Text(
                  'Vývojář mobilních a webových aplikací.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Theme.of(context).scaffoldBackgroundColor,
                  Colors.transparent
                ],
              ),
            ),
            child: Container(
              decoration: BoxDecoration(color: Colors.black.withOpacity(0)),
            ),
          ),
        )
      ],
    );
  }
}
