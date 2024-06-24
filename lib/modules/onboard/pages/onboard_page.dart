import 'package:flutter/material.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage(
      {super.key,
      required this.image,
      required this.subtitle,
      required this.title,
      required this.description});

  final String image;
  final String title;
  final String subtitle;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 3, 3, 3)),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            subtitle,
            // textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 16, color: Color.fromARGB(255, 8, 8, 8)),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(image, height: 300),
          ],
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            description,
            // textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 16, color: Color.fromARGB(255, 8, 8, 8)),
          ),
        ),
      ],
    );
  }
}
