import 'package:flutter/material.dart';

void main() {
  runApp(const HadeesApp());
}

class HadeesApp extends StatelessWidget {
  const HadeesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hadees Islamic App',
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.black54),
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
            .copyWith(secondary: Colors.orange),
      ),
      home: const HadeesHomePage(),
    );
  }
}

class HadeesHomePage extends StatelessWidget {
  const HadeesHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hadees Books'),
        backgroundColor: Colors.green[800],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          HadeesBookCard(
            title: 'Sahih Bukhari',
            description: 'A collection of Hadith compiled by Imam Bukhari.',
            imageUrl: 'assets/bukhari.jpg',
          ),
          HadeesBookCard(
            title: 'Sahih Muslim',
            description: 'A collection of Hadith compiled by Imam Muslim.',
            imageUrl: 'assets/muslim.jpg',
          ),
          HadeesBookCard(
            title: 'Sunan Abu Dawood',
            description: 'A collection of Hadith compiled by Abu Dawood.',
            imageUrl: 'assets/abudawood.jpg',
          ),
          // Add more cards here
        ],
      ),
    );
  }
}

class HadeesBookCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const HadeesBookCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HadeesDetailPage(title: title)),
          );
        },
        child: Column(
          children: [
            Image.asset(imageUrl, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HadeesDetailPage extends StatelessWidget {
  final String title;

  const HadeesDetailPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.green[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 16),
            Text(
              'Here is the detail of the book $title. You can add more content and functionality here.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
