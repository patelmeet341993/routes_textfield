import 'package:flutter/material.dart';
import 'package:routes_textfield/home.dart';
import 'package:routes_textfield/mydata.dart';
import 'package:routes_textfield/routes.dart';



class LoginPage extends StatefulWidget {
  static String route="/";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

 late TextEditingController _controllerName,_controllerId,_controllerPass;


 @override
  void initState() {
    super.initState();

    _controllerName=TextEditingController();

    _controllerId=TextEditingController();

    _controllerPass=TextEditingController();


 }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: getBody(),
    ));
  }

  Widget getBody()
  {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: _controllerName,
            decoration:InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
            ),
            onChanged: (val){
              print("type : $val");
            },

          ),
          SizedBox(height: 20,),
          TextField(
            keyboardType: TextInputType.text,
            controller: _controllerId,
            decoration:InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Id',

            ),
          ),
          SizedBox(height: 20,),
          TextField(
            keyboardType: TextInputType.visiblePassword,
            controller: _controllerPass,
            decoration:InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              String name=_controllerName.text;
              String id=_controllerId.text;
              String pass=_controllerPass.text;


              MyData.id=id;
              MyData.name=name;
              MyData.pass=pass;

              Navigator.pushNamed(context, Routes.home);
            },
            child: Container(

              width: MediaQuery.of(context).size.width*0.7,
              color: Colors.pink,
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text("Login",style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600
                ),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
