// ignore_for_file: file_names
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_practice_after_eid/Model/worlddata.dart';
import 'package:pie_chart/pie_chart.dart';
import 'constant/Covid_Reuse.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:revision/url.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
// api function for data fetch

  Future<Worldwide> getData() async {
    var response =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/all'));
    // var response = await http.get(Uri.parse(Urls.basurl));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return Worldwide.fromJson(data);
    } else {
      throw Exception('Error');
    }
  }

  final colorList = [Colors.red, Colors.green, Colors.blue, Colors.deepPurple];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(
              height: 30,
            ),
            FutureBuilder(
              future: getData(),
              builder: (context, AsyncSnapshot<Worldwide> snapshot) {
                if (!snapshot.hasData) {
                  // ignore: prefer_const_constructors
                  return Expanded(
                    flex: 1,
                    // ignore: prefer_const_constructors
                    child: SpinKitFadingCircle(
                      color: Colors.white,
                      size: 50.0,
                    ),
                  );
                } else {
                  return Column(
                    children: [
                      PieChart(
                        // ignore: prefer_const_literals_to_create_immutables
                        dataMap: {
                          "Total Cases":
                              double.parse(snapshot.data!.cases!.toString()),
                          "Recovered patient": double.parse(
                              snapshot.data!.recovered!.toString()),
                          "Death ":
                              double.parse(snapshot.data!.deaths!.toString()),
                        },
                        chartRadius: MediaQuery.of(context).size.width / 3.2,
                        colorList: colorList,
                        initialAngleInDegree: 0,
                        chartType: ChartType.ring,
                        ringStrokeWidth: 25,
                        legendOptions: const LegendOptions(
                          legendTextStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        chartValuesOptions: const ChartValuesOptions(
                          showChartValueBackground: true,
                          showChartValues: true,
                          showChartValuesInPercentage: true,
                          showChartValuesOutside: true,
                          decimalPlaces: 1,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          color: Colors.pink,
                          child: Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              CovidReuse(
                                title: "Today Case",
                                value: snapshot.data!.todayCases!.toString(),
                              ),
                              CovidReuse(
                                title: "Today death",
                                value: snapshot.data!.todayDeaths!.toString(),
                              ),
                              CovidReuse(
                                title: "Today Recoover",
                                value:
                                    snapshot.data!.todayRecovered!.toString(),
                              ),
                              CovidReuse(
                                title: "active",
                                value: snapshot.data!.active!.toString(),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
