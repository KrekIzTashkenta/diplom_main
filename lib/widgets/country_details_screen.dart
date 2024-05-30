import 'package:diplom_main/Model/countriesInfo.dart';
import 'package:diplom_main/Model/map/map_page.dart';
import 'package:flutter/material.dart';

class CountryDetailsScreen extends StatefulWidget {
  final CountryInfo countryInfo;

  const CountryDetailsScreen({super.key, required this.countryInfo});

  @override
  _CountryDetailsScreenState createState() => _CountryDetailsScreenState();
}

class _CountryDetailsScreenState extends State<CountryDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacementNamed(context, '/home');
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.countryInfo.name),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.of(context).pushNamed('/home');
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: MapScreen(
                        latitude: widget.countryInfo.latitude,
                        longitude: widget.countryInfo.longitude,
                      )),
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage(widget.countryInfo.flagImages),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Столица: ${widget.countryInfo.capital}',
                      style: const TextStyle(fontSize: 18.0),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Население: ${widget.countryInfo.population}',
                      style: const TextStyle(fontSize: 18.0),
                    ),
                    const SizedBox(height: 16.0),
                    const Text(
                      'Описание:',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      widget.countryInfo.description,
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    const SizedBox(height: 16.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
