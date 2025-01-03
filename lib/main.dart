import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue[300]!,
              Colors.blue[700]!,
            ],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.menu, color: Colors.white),
                    onPressed: () {
                      // Add functionality for the menu button
                    },
                  ),
                  Text(
                    'Weatherman',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add, color: Colors.white),
                    onPressed: () {
                      // Add functionality for the add button
                    },
                  ),
                ],
              ),
            ),
            Text(
              'Serpong',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Friday, January 03, 2025',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '29°C',
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Divider(color: Colors.white,
            thickness: 5,
            indent: 30,
            endIndent: 30,
            ),
            Text(
              'Sunny',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Text(
              '29°C / 33°C',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.3),
              ),
              child: Icon(
                Icons.local_drink,
                color: Colors.white,
                size: 30,
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WeatherIconSunny(label: 'Today', tempRange: '29° / 33°'),
                WeatherIconCloudThunder(label: 'Saturday', tempRange: '25°'),
                WeatherIconCloudRain(label: 'Sunday', tempRange: '22°'),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class WeatherIcon extends StatelessWidget {
  final String label;
  final String tempRange;

  const WeatherIcon({
    required this.label,
    required this.tempRange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.wb_cloudy,
          color: Colors.white,
          size: 40,
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        Text(
          tempRange,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}

class WeatherIconSunny extends StatelessWidget {
  final String label;
  final String tempRange;

  const WeatherIconSunny({
    required this.label,
    required this.tempRange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.wb_sunny,
          color: Colors.yellow,
          size: 40,
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        Text(
          tempRange,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}

class WeatherIconCloudThunder extends StatelessWidget {
  final String label;
  final String tempRange;

  const WeatherIconCloudThunder({
    required this.label,
    required this.tempRange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Icon(
              Icons.wb_cloudy,
              color: Colors.white,
              size: 40,
            ),
            Positioned(
              bottom: -2,
              child: Icon(
                Icons.flash_on,
                color: Colors.yellow,
                size: 20,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        Text(
          tempRange,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}

class WeatherIconCloudRain extends StatelessWidget {
  final String label;
  final String tempRange;

  const WeatherIconCloudRain({
    required this.label,
    required this.tempRange,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Icon(
              Icons.wb_cloudy,
              color: Colors.white,
              size: 40,
            ),
            Positioned(
              bottom: -5,
              child: Icon(
                Icons.grain,
                color: Colors.blue,
                size: 20,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        Text(
          tempRange,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}
