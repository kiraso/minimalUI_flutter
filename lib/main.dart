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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF21BFBD),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15.0, left:10.0),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios), 
                      color:  Colors.white,
                      onPressed: () {}
                    ),
                    Container(
                      width: 125.0,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.filter_list), 
                              color:  Colors.white,
                              onPressed: () {}
                            ),
                              IconButton(
                              icon: Icon(Icons.menu), 
                              color:  Colors.white,
                              onPressed: () {}
                            ),
                          ],
                      )
                    )
                  ],
              ),
            ),
            SizedBox(height: 25.0),
            Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Row(
                children: <Widget>[
                  Text('Be Clean' ,
                      style:  TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                      )),
                  SizedBox(width: 10.0),
                  Text('Food' ,
                      style:  TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                      )),
                ],
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              height: MediaQuery.of(context).size.height -185.0,
              decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0))
              ),
              child: ListView(
                  primary: false,
                  padding: EdgeInsets.only(left: 25.0, right: 20.0),
                  children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 45.0),
                        child: Container(
                              height: MediaQuery.of(context).size.height -300.0,
                              child: ListView(
                                children: [
                                  _BuildFoodItem('assets/plate1.png', 'Salmon Bowl', '150.00 \ bath'),
                                  _BuildFoodItem('assets/plate2.png', 'Spring Bowl', '190.00\ bath'),
                                  _BuildFoodItem('assets/plate6.png', 'Avocado Bowl', '190.00\ bath'),
                                  _BuildFoodItem('assets/plate5.png', 'Berry Bowl', '240.00\ bath')
                                ],
                              ),
                        ),
                        
                      )
                  ],
              ),
            )
          ],
        ),
    );
  }
}


// ignore: non_constant_identifier_names
Widget _BuildFoodItem(String imgPath, String foodName, String price) {
  return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
          onTap: (){

          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
                Container(
                  child: Row(
                      children: [
                        Hero(
                            tag: imgPath,
                            child: Image(
                                image: AssetImage(imgPath),
                                fit: BoxFit.cover,
                                height: 75.0,
                                width: 75.0,
                            ),
                        ),
                        SizedBox(width: 10.0),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  foodName,
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                              ),
                              Text(
                                  price,
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15.0,
                                    color: Colors.grey
                                  ),
                              ),
                            ],
                        ) 
                      ],
                  )
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  color: Colors.black, 
                  onPressed: (){})
            ],
          ),
      ),
  );
}