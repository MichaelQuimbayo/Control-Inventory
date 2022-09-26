import 'package:flutter/material.dart';

class ButtonGreen extends StatefulWidget {

final String text;
double width = 0.0;
double height =0.0;
final VoidCallback onPressed;

ButtonGreen({Key? key, required this.text, required this.width, required this.height, required this.onPressed}) : super(key: key);

  @override
  State<ButtonGreen> createState() => _ButtonGreenState();
}

class _ButtonGreenState extends State<ButtonGreen> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
            colors: [
              Color(0xFFa7ff84),
              Color(0xFF1cbb78)
            ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
                fontSize: 20.0,
                fontFamily: "Lato",
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
