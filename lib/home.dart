import 'package:flutter/material.dart';
import 'package:routes_textfield/mydata.dart';



class HomePage extends StatefulWidget {

  static String route="/home";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: getBody(),
    ));
  }

  Widget getBody()
  {
    return Container(
      child: Column(
        children: [
          Text("Name :  ${MyData.name}"),
        Text("Id :  ${MyData.id}"),

        ],
      ),
    );
  }
}
