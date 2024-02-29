import 'package:flutter/material.dart';

class ProjectsCard extends StatelessWidget {
  const ProjectsCard(
      {super.key,
      required this.cardTitle,
      required this.cardContent,
      required this.cardText});
  final String cardTitle;
  final Widget cardContent;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                cardTitle,
                style:
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                height: 200,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: cardContent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
                child: Text(
                  cardText,
                  textAlign: TextAlign.center,
                  style:
                      const TextStyle(fontSize: 16, fontStyle: FontStyle.italic, ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
