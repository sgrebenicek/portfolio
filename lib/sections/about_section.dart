import 'package:flutter/material.dart';
import 'package:portfolio/widgets/about_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 8),
          AboutCard(
            cardTitle: 'O mně',
            cardText:
                'Jmenuji se Štěpán Grebeníček a jsem vývojář mobilních a webových aplikací. S víceletou praxí v oboru jsem získal hluboké znalosti v technologiích, jako jsou Flutter, HTML, CSS a JavaScript. Mé dovednosti spočívají ve vývoji responzivních webových stránek a tvorbě efektivních, výkonných mobilních aplikací.',
            cardContent: Image.asset(
              'assets/images/drake.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}