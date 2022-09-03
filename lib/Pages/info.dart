import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class InfoPage extends StatefulWidget {
  @override
  _Information createState() => _Information();
}

class _Information extends State<InfoPage> {
  Map mapResponce = {};
  Future fetchData() async {
    try {
      http.Response response;
      response = await http
          .get(Uri.parse('https://api.coindesk.com/v1/bpi/currentprice.json'));
      setState(() {
        mapResponce = json.decode(response.body);
      });
    } catch (e) {
      print(e);
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
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 130),
            child: Text(
              mapResponce['chartName'].toString(),
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 2, 28, 192)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Disclaimer',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 2, 28, 192)),
          ),
          Text(
            mapResponce['disclaimer'].toString(),
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Time',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 2, 28, 192)),
          ),
          Text(mapResponce['time']['updated'].toString()),
          Text(mapResponce['time']['updatedISO'].toString()),
          Text(mapResponce['time']['updateduk'].toString()),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 130),
            child: Text(
              "USD",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 2, 28, 192)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Description',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Text(mapResponce['bpi']['USD']['description'].toString()),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rate_float',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Text(mapResponce['bpi']['USD']['rate_float'].toString()),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'symbol',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Text(mapResponce['bpi']['USD']['symbol'].toString()),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 130),
            child: Text(
              "GBP",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 2, 28, 192)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Description',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Text(mapResponce['bpi']['GBP']['description'].toString()),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rate_float',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Text(mapResponce['bpi']['GBP']['rate_float'].toString()),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'symbol',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Text(mapResponce['bpi']['GBP']['symbol'].toString()),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 130),
            child: Text(
              "EUR",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 2, 28, 192)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Description',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Text(mapResponce['bpi']['EUR']['description'].toString()),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rate_float',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Text(mapResponce['bpi']['EUR']['rate_float'].toString()),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'symbol',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 2, 28, 192)),
              ),
              Text(mapResponce['bpi']['GBP']['symbol'].toString()),
            ],
          ),
        ],
      ),
    );
  }
}
// ListView.builder(
//       itemBuilder: ((context, index) {
//         return Column(
//           children: <Widget>[
//             Text(mapResponce["disclaimer"].toString()),
//           ],
//         );
//       }),
//       itemCount: listResponce.length,
//     );
