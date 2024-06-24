import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const PrayerTimeApp());
}

class PrayerTimeApp extends StatelessWidget {
  const PrayerTimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prayer Time App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const PrayerTimeHomePage(),
    );
  }
}

class PrayerTimeHomePage extends StatefulWidget {
  const PrayerTimeHomePage({super.key});

  @override
  _PrayerTimeHomePageState createState() => _PrayerTimeHomePageState();
}

class _PrayerTimeHomePageState extends State<PrayerTimeHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double greenSectionHeight = size.height / 3;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: greenSectionHeight,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wb_sunny, size: 50, color: Colors.white),
                    Text(
                      'Asar',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Text(
                      '02:27:58',
                      style: TextStyle(fontSize: 48, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: greenSectionHeight / 1 - 100,
                left: 16,
                right: 16,
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      DateFormat('EEEE, MMMM d, y – kk:mm')
                          .format(DateTime.now()),
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 50),
            child: Row(
              children: [
                Text(
                  'Prayer ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 160,
                ),
                Text(
                  'Start ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                Text(
                  'End ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: const [
                PrayerTimeTile(
                  prayerName: 'Fajr',
                  startTime: '04:30 AM',
                  endTime: '06:00 AM',
                ),
                PrayerTimeTile(
                  prayerName: 'Dhuhr',
                  startTime: '12:00 PM',
                  endTime: '01:30 PM',
                ),
                PrayerTimeTile(
                  prayerName: 'Asar',
                  startTime: '03:45 PM',
                  endTime: '05:15 PM',
                ),
                PrayerTimeTile(
                  prayerName: 'Maghrib',
                  startTime: '06:30 PM',
                  endTime: '08:00 PM',
                ),
                PrayerTimeTile(
                  prayerName: 'Isha',
                  startTime: '08:00 PM',
                  endTime: '09:30 PM',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PrayerTimeTile extends StatelessWidget {
  final String prayerName;
  final String startTime;
  final String endTime;

  const PrayerTimeTile({
    super.key,
    required this.prayerName,
    required this.startTime,
    required this.endTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(bottom: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
          ),
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.wb_sunny, color: Colors.green),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              prayerName,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Row(
            children: [
              Text(
                ' $startTime',
                style: const TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(width: 25),
              Text(
                ' $endTime',
                style: const TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ],
          ),
          const SizedBox(width: 10),
          const Icon(Icons.access_alarm, color: Colors.green),
        ],
      ),
    );
  }
}
