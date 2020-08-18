import 'package:flutter/material.dart';
import 'package:flutter_alcool_gasolina/pages/home.page.dart';
import 'dart:async';

import 'package:flutter_alcool_gasolina/widgets/splash-screen.widget.dart';

void main() {
  runApp(Gasool());
}

class Gasool extends StatefulWidget {
  @override
  _GasoolState createState() => _GasoolState();
}

class _GasoolState extends State<Gasool> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(
        seconds: 1,
      ),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gasool',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
