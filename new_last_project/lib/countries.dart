import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shimmer/shimmer.dart';
class Countries extends StatefulWidget {
  const Countries({Key? key}) : super(key: key);

  @override
  State<Countries> createState() => _CountriesState();
}

class _CountriesState extends State<Countries> {
  final countriesControl = TextEditingController();

// get country method

  Future<List<dynamic>> getData() async {
    var response =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/countries'));
    // var response = await http.get(Uri.parse(Urls.basurl));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      // ignore: avoid_print
      print(data);
      return data;
    } else {
      throw Exception('Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      appBar: AppBar(
        title: const Text('Country wise Data'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: countriesControl,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              hintText: 'Search with country name',
              suffixIcon: countriesControl.text.isEmpty
                  ? const Icon(Icons.search)
                  : GestureDetector(
                      onTap: () {
                        countriesControl.text = "";
                        setState(() {});
                      },
                      child: const Icon(Icons.clear)),
            ),
            onChanged: (value) {
              setState(() {});
            },
          ),
          Expanded(
            child: FutureBuilder(
                future: getData(),
                builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
                  print(snapshot);
                  if (!snapshot.hasData) {
                    return ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Shimmer.fromColors(
                          baseColor: Colors.purple,
                          highlightColor: Colors.amber,
                          enabled: true,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  color: Colors.blue,
                                ),
                                title: Container(
                                  width: 100,
                                  height: 8.0,
                                  color: Colors.green,
                                ),
                                subtitle: Container(
                                  width: double.infinity,
                                  height: 8.0,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  } else {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          String name = snapshot.data![index]['country'];
                          if (countriesControl.text.isEmpty) {
                            return Column(
                              children: [
                                ListTile(
                                  leading: Image(
                                    height: 50,
                                    width: 50,
                                    image: NetworkImage(snapshot.data![index] ['countryInfo']['flag']),
                                  ),
                                  title:
                                      Text(snapshot.data![index]['country']),
                                  subtitle: Text("Effected: " +
                                      snapshot.data![index]['cases']
                                          .toString()),
                                ),
                                const Divider()
                              ],
                            );
                          } else if (name
                              .toLowerCase()
                              .contains(countriesControl.text.toLowerCase())) {
                            return Column(
                              children: [
                                ListTile(
                                  leading: Image(
                                    height: 50,
                                    width: 50,
                                    image: NetworkImage(snapshot.data![index]
                                        ['countryInfo']['flag']),
                                  ),
                                  title: Text(snapshot.data![index]['country']),
                                  subtitle: Text("Effected: " +
                                      snapshot.data![index]['cases']
                                          .toString()),
                                ),
                                const Divider()
                              ],
                            );
                          } else {
                            return Container();
                          }
                        });
                  }
                }),
          )
        ],
      ),
    );
  }
}