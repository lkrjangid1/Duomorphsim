import 'package:duomorphsim/duomorphsim.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Duomorphism Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Duomorphism Demo'),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://mir-s3-cdn-cf.behance.net/project_modules/1400/a4b33886128681.5d909dad47ded.jpg'),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DuoMorphicCard(
              height: 200,
              width: 200,
              blur: 5,
              innerShadowColor: Colors.grey,
              radius: BorderRadius.circular(10),
              cardBackgroundColor: Colors.white,
              opacity: 0.5,
              offset: Offset(-5, -5),
              child: Center(
                child: Text('Hello World'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
