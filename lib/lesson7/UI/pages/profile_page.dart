import 'package:flutter/material.dart';
import 'package:nnstories_lessons/lesson7/UI/widgets/button_widget.dart';
import 'package:nnstories_lessons/lesson7/UI/widgets/numbers_widget.dart';
import 'package:nnstories_lessons/lesson7/UI/widgets/profile_widget.dart';
import 'package:nnstories_lessons/lesson7/models/user.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const User user = User(
      imagePath: 'https://c.tenor.com/16ANHMC4wqcAAAAC/pepe-tea.gif',
      name: 'Sample user',
      email: 'sample.user@gmail.com',
      about:
          'Certified Personal Trainer and Nutritionist with years of experience in creating effective diets and training plans focused on achieving individual customers goals in a smooth way.',
    );

    return ListView(
      children: [
        ProfileWidget(
          imagePath: user.imagePath,
        ),
        const SizedBox(height: 24),
        buildName(user),
        const SizedBox(height: 24),
        Center(child: buildUpgradeButton()),
        const SizedBox(height: 24),
        const NumbersWidget(),
        const SizedBox(height: 48),
        buildAbout(user),
      ],
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Upgrade To PRO',
        onClicked: () {},
      );

  Widget buildAbout(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
