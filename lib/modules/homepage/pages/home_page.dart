import 'package:flutter/material.dart';

void main() {
  runApp(QuranApp());
}

class QuranApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islamic Quran App',
      theme: ThemeData(
        primaryColor: Colors.green,
        fontFamily: 'Poppins',
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.greenAccent),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Surah> surahList = [
    Surah(name: 'Al-Fatihah', verses: 7, place: 'Meccan'),
    Surah(name: 'Al-Baqarah', verses: 286, place: 'Medinan'),
    Surah(name: 'Aal-E-Imran', verses: 200, place: 'Medinan'),
    Surah(name: 'An-Nisa', verses: 176, place: 'Medinan'),
    Surah(name: 'Al-Ma\'idah', verses: 120, place: 'Medinan'),
    Surah(name: 'Al-An\'am', verses: 165, place: 'Meccan'),
    Surah(name: 'Al-A\'raf', verses: 206, place: 'Meccan'),
    Surah(name: 'Al-Anfal', verses: 75, place: 'Medinan'),
    Surah(name: 'At-Tawbah', verses: 129, place: 'Medinan'),
    Surah(name: 'Yunus', verses: 109, place: 'Meccan'),
    // Add more Surahs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quran',
          style: TextStyle(
            fontFamily: 'Lobster',
            fontSize: 28.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Surah List',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search, color: Colors.white),
                  onPressed: () {
                    // Implement search functionality
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: surahList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    // Navigate to Surah detail page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            SurahDetailPage(surah: surahList[index]),
                      ),
                    );
                  },
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          surahList[index].name,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '${surahList[index].verses} Verses • ${surahList[index].place}',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Surah {
  final String name;
  final int verses;
  final String place;

  Surah({required this.name, required this.verses, required this.place});
}

class SurahDetailPage extends StatelessWidget {
  final Surah surah;

  SurahDetailPage({required this.surah});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          surah.name,
          style: TextStyle(fontFamily: 'Lobster', fontSize: 24.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Surah ${surah.name}',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Number of Verses: ${surah.verses}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'Place: ${surah.place}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Add functionality to start reading Surah
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 16.0),
              ),
              child: Text(
                'Start Reading',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
