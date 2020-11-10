import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eplorer',
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              topPage,
              rowSelect,
              containerSection,
              // imageProfil
            ],
          ),
        ),
      ),
    );
  }
}

Widget topPage = Container(
  padding: EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        'Home page',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      Container(
        height: 50,
        width: 50,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset('assets/user.png'),
        ),
      )
    ],
  ),
);
Widget containerSection = Container(
  height: 200,
  width: double.infinity,
  margin: EdgeInsets.all(20),
  padding: EdgeInsets.all(20),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.blue,
        Colors.green,
      ],
    ),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Titre',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          )),
      Text('Sous-titre'),
      RaisedButton(
        onPressed: () {},
        color: Colors.orange,
        child: Text('Visiter'),
      )
    ],
  ),
);

Widget imageProfil = Container(
  child: Center(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(35),
      child: Image.asset('assets/africa.jpg'),
    ),
  ),
);
Widget rowSelect = Container(
  color: Colors.white,
  padding: EdgeInsets.all(20),
  margin: EdgeInsets.all(20),
  child: Row(
    children: <Widget>[
      Container(
        child: Icon(Icons.search),
      ),
      Expanded(
        child: Container(
          height: 30,
          width: 30,
          alignment: Alignment.centerLeft,
          // padding: EdgeInsets.all(15),
          // child: Text('Search'),
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      Container(
        child: Icon(Icons.speaker_phone),
      ),
    ],
  ),
);
