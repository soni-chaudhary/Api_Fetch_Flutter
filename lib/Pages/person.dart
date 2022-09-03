import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PersonPages extends StatefulWidget {
  @override
  _PersonPage createState() => _PersonPage();
}

class _PersonPage extends State<PersonPages> {
  // String getData = "";
  Map mapResponce = {};
  Map dataResponce = {};
  List listResponce = [];
  Future fetchData() async {
    http.Response response;
    response = await http.get(Uri.parse('https://randomuser.me/api/'));

    if (response.statusCode == 200) {
      setState(() {
        // listResponce = mapResponce['results'];
        mapResponce = json.decode(response.body);
        // dataResponce = mapResponce['info'];
      });
    } else {
      throw Exception('Failed to load api');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 100, right: 100, top: 2, bottom: 20),
            child: Image.network(mapResponce['results'][0]['picture']['large']),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Name",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      mapResponce['results'][0]['name']['title'].toString(),
                    ),
                    Text(
                      mapResponce['results'][0]['name']['first'].toString(),
                    ),
                    Text(
                      mapResponce['results'][0]['name']['last'].toString(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Emain",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Container(
                child: Text(
                  mapResponce['results'][0]['email'].toString(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Gender",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Container(
                child: Text(
                  mapResponce['results'][0]['gender'].toString(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "phone",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Container(
                child: Text(
                  mapResponce['results'][0]['phone'].toString(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "ID",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Container(
                child: Text(
                  mapResponce['results'][0]['id']['value'].toString(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "City",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Container(
                child: Text(
                  mapResponce['results'][0]['location']['city'].toString(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Postcode",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Container(
                child: Text(
                  mapResponce['results'][0]['location']['postcode'].toString(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Country",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Container(
                child: Text(
                  mapResponce['results'][0]['location']['country'].toString(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Timezone",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Container(
                child: Text(
                  mapResponce['results'][0]['location']['timezone']
                          ['description']
                      .toString(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Age",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Container(
                child: Text(
                  mapResponce['results'][0]['dob']['age'].toString(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Nationality",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Container(
                child: Text(
                  mapResponce['results'][0]['nat'].toString(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Latitude",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Container(
                child: Text(
                  mapResponce['results'][0]['location']['coordinates']
                          ['latitude']
                      .toString(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Longitude",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Container(
                child: Text(
                  mapResponce['results'][0]['location']['coordinates']
                          ['longitude']
                      .toString(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
