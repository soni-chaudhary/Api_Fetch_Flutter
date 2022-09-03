import 'package:flutter/material.dart';
import 'package:vaani_assignment/Pages/Home.dart';
import 'package:vaani_assignment/Pages/info.dart';
import 'package:vaani_assignment/Pages/person.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.grey),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var pagesInfo = [HomePage(), InfoPage(), PersonPages()];
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("MY APP"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 1, 12, 79)),
      body: pagesInfo[_number],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 1, 12, 79),
        fixedColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.info,
                color: Colors.grey,
              ),
              label: "Information"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              label: "Person"),
          // BottomNavigationBarItem(icon: Icon(Icons.person), label: "person")
        ],
        currentIndex: _number,
        onTap: (top) {
          setState(() {
            _number = top;
            fixedColor:
            Colors.white;
          });
        },
      ),
    );
  }
}

//********* */
// Center(
//         child: Container(
//           child: Image(
//             image: AssetImage(
//               "images/image_of_z.png",
//             ),
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),