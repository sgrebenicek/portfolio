import 'package:flutter/material.dart';
import 'package:portfolio/sections/home_section.dart';
import 'package:portfolio/sections/about_section.dart';
import 'package:portfolio/sections/projects_section.dart';
import 'package:portfolio/sections/contact_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                controller.animateTo(
                  0,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                );
              },
              child: const Text('Home', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                controller.animateTo(
                  MediaQuery.of(context).size.height,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                );
              },
              child: const Text('O mně', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                controller.animateTo(
                  MediaQuery.of(context).size.height * 1.5,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                );
              },
              child:
                  const Text('Projekty', style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                controller.animateTo(
                  MediaQuery.of(context).size.height * 2.5,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                );
              },
              child:
                  const Text('Kontakty', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: const Column(
          children: <Widget>[
            HomeSection(),
            SizedBox(
              height: 100,
            ),
            AboutSection(),
            SizedBox(
              height: 100,
            ),
            ProjectsSection(),
            SizedBox(
              height: 100,
            ),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
