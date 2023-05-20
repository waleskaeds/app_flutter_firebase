import 'package:app_flutter_firebase/pages/current_weather.dart';
import 'package:app_flutter_firebase/pages/time_history.dart';
import 'package:app_flutter_firebase/pages/weather_forecast.dart';
import 'package:flutter/cupertino.dart';

class TabBarComponent extends StatelessWidget {
  const TabBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const CurrentWeather(), const WeatherForecast(), const TimeHistory()
    ]; 

    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.thermometer),
            label: 'Clima Atual',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.calendar),
            label: 'Clima da Semana',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.clock),
            label: 'Histórico do Tempo',
          ),
        ]
      ), 
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return pages[index];
          },
        );
      },
    );
  }
}