import 'package:flutter/material.dart';

class AboutCard extends StatelessWidget {
  const AboutCard(
      {super.key,
      required this.cardContent,
      required this.cardText,
      required this.cardTitle});
  final String cardTitle;
  final String cardText;
  final Widget cardContent;

  @override
  Widget build(BuildContext context) {
    final bool isScreenWide = MediaQuery.of(context).size.width > 1050;

    Widget contentLayout = isScreenWide
        ? SizedBox(
            width: 1200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 500,
                  height: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          cardTitle,
                          style: const TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          cardText,
                          textAlign: TextAlign.justify,
                          style: const TextStyle(fontSize: 23),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 500,
                  height: 400,
                  child: cardContent,
                ),
              ],
            ),
          )
        : SizedBox(
          height: 900,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            cardTitle,
                            style: const TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            cardText,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(fontSize: 23),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: cardContent,
                ),
              ],
            ),
          );
    return contentLayout;
  }
}
