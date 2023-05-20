import 'package:flutter/material.dart';

class CurrentWeather extends StatefulWidget {
  const CurrentWeather({super.key});

  @override
  State<CurrentWeather> createState() => _CurrentWeatherState();
}

class _CurrentWeatherState extends State<CurrentWeather> {
  @override
  Widget build(BuildContext context) {

    double widhtSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.6),
      appBar: AppBar(
        title: const Text("Jaraguá do Sul, Brasil"), 
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 120,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Center(
                  child: Icon(
                    Icons.cloud_outlined,
                    color: Colors.white,
                    size: 100,
                  )),
                Center(
                  child: Text(
                    "Nublado",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: heightSize / 2,
            child: const Center(
              child: Text(
                "20°C",
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.white
                ),
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: 70,
                width: widhtSize / 2,
                child: Padding(
                  padding: const EdgeInsets.only(right: 5, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "vento:",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                        ),
                      ),
                      Text(
                        "precisão:",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                        ),
                      ),
                      Text(
                        "pressão:",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 70,
                width: widhtSize / 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "4 km/h",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                        ),
                      ),
                      Text(
                        "0 mm",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                        ),
                      ),
                      Text(
                        "1023 mb",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}