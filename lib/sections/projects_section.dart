import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:portfolio/widgets/projects_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Projekty',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 500,
            child: ResponsiveGridList(
              minSpacing: 20,
              desiredItemWidth: 400,
              children: <Widget>[
                Card(
                  child: ProjectsCard(
                    cardTitle: 'cojob',
                    cardContent: Image(
                      image: AssetImage('assets/images/cojob.png'),
                    ),
                    cardText: 'Aplikace pro komunikaci v pracovním prostředí.',
                  ),
                ),
                Card(
                  child: ProjectsCard(
                    cardTitle: 'Toto portfolio',
                    cardContent: Image(
                      image: AssetImage('assets/images/portfolio.png'),
                    ),
                    cardText: 'Flutter pro web je top.',
                  ),
                ),
                Card(
                  child: ProjectsCard(
                    cardTitle: 'JS kalkulačka',
                    cardContent: Image(
                      image: AssetImage('assets/images/calculator.png'),
                    ),
                    cardText: 'Velice propracovaná a skvělá kalkulačka.',
                  ),
                ),
                Card(
                  child: ProjectsCard(
                    cardTitle: 'Drake',
                    cardContent: Image(
                      image: AssetImage('assets/images/anita.jpg'),
                    ),
                    cardText: 'Toto je moje alter ego. Anita Maximalná Výhra.',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
