import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePages createState() => _HomePages();
}

class _HomePages extends State<HomePage> {
  // String getData = "";
  // Map mapResponce = {};
  // Map dataResponce = {};
  List listResponce = [];
  Future fetchData() async {
    http.Response response;
    response = await http.get(Uri.parse(
        'http://universities.hipolabs.com/search?country=United+States'));

    if (response.statusCode == 200) {
      setState(() {
        // mapResponce = json.decode(response.body);
        listResponce = json.decode(response.body);
        // dataResponce = mapResponce["web_pages"];
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
    return ListView.builder(
      itemBuilder: ((context, index) {
        return Card(
            elevation: 6,
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 4, 18, 112),
                    radius: 30,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: FittedBox(
                        child: Text(
                          listResponce[index]["alpha_two_code"].toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    listResponce[index]["name"].toString(),
                    style: TextStyle(
                        color: Color.fromARGB(255, 4, 18, 112),
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  subtitle: Text(
                    listResponce[index]['country'].toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, right: 10),
                  child: Text(
                    listResponce[index]['web_pages'][0].toString(),
                  ),
                )
              ],
            ));
      }),
      itemCount: listResponce.length,
    );
  }
}
// return Container(
//           child: Column(
//             children: <Widget>[
//               // Text(
//               //   listResponce[index]['name'].toString(),
//               //   style: TextStyle(
//               //       color: Colors.blue,
//               //       fontWeight: FontWeight.bold,
//               //       fontSize: 18),
//               // ),
//               // Text(listResponce[index]['country'].toString()),
//               // Text(listResponce[index]['web_pages'][0].toString()),
//             ],
//           ),
//         );
