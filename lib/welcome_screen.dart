import 'package:control_jye/widgets/button_green.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4053FF),
      body:Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(15.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Jugando y Educando \nBienvenido a nuestra App control de inventario',
              style: TextStyle(
                  fontSize: 32.0,
                  fontFamily: 'Lato',
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 20.0),
              ButtonGreen(text: 'Comenzar', width: MediaQuery.of(context).size.width, height: 50,onPressed: (){}),
            ],
        ),
      ),
    );
  }
}
