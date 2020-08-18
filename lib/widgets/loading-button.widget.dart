import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  Color color = Colors.white;

  var busy = false;
  var invert = false;
  Function func;
  var text = '';

  LoadingButton({
    @required this.color,
    @required this.busy,
    @required this.func,
    @required this.invert,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            margin: EdgeInsets.all(30),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: invert ? color : Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FlatButton(
              child: Text(
                text,
                style: TextStyle(
                  color: invert ? Colors.white.withOpacity(0.8) : color,
                  fontSize: 25,
                  fontFamily: "BigShouldersDisplay",
                ),
              ),
              onPressed: func,
            ),
          );
  }
}
