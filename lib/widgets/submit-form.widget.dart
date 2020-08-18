import 'package:flutter/cupertino.dart';
import 'package:flutter_alcool_gasolina/widgets/input.widget.dart';
import 'package:flutter_alcool_gasolina/widgets/loading-button.widget.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class SubmitForm extends StatelessWidget {
  var gasCtrl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitForm({
    @required this.alcCtrl,
    @required this.gasCtrl,
    @required this.busy,
    @required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10,
            right: 30,
          ),
          child: Input(
            ctrl: gasCtrl,
            label: "Gasolina",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10,
            right: 30,
          ),
          child: Input(
            ctrl: alcCtrl,
            label: "Álcool",
          ),
        ),
        SizedBox(
          height: 50,
        ),
        LoadingButton(
          busy: busy,
          func: submitFunc,
          invert: false,
          text: 'CALCULAR',
        ),
      ],
    );
  }
}
