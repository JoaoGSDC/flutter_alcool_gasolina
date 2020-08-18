import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alcool_gasolina/widgets/loading-button.widget.dart';

class Success extends StatelessWidget {
  var result = '';
  Function reset;

  Success({
    @required this.result,
    @required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            result,
            style: TextStyle(
              color: result == 'Compensa utilizar Gasolina!'
                  ? Colors.red[900]
                  : Colors.green[800],
              fontSize: 40,
              fontFamily: "BigShouldersDisplay",
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          LoadingButton(
            color: result == 'Compensa utilizar Gasolina!'
                ? Colors.red[900]
                : Colors.green[800],
            busy: false,
            func: reset,
            invert: true,
            text: 'CALCULAR NOVAMENTE',
          ),
        ],
      ),
    );
  }
}
