import 'package:flutter/widgets.dart';
import 'package:mb_contact_form/mb_contact_form.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(
            'Kontakt',
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          MBContactForm(
            hasHeading: false,
            withIcons: true,
            destinationEmail: "stepikgr@gmail.com",
          ),
        ],
      ),
    );
  }
}
