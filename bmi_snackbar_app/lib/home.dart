import 'package:flutter/material.dart';
import 'package:snackbar_app/bmi.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Snack Bar',
        ),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => snackBarFucnction(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.black,
              ),
              child: const Text(
                'SnackBar Button',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
                  BmiCalc bmiCalc = BmiCalc(45, 170);
                  String result = bmiCalc.clacAction();
                  bmiSnacbar(context, result);
            },
            child: const Text('BMI 계산'),
          ),
        ],
      ),
    );
  }

  // --- Founctions ---
  snackBarFucnction(context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Elevated Button 1 clicked.',
        ),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 2),
      ),
    );
  }

  bmiSnacbar(context, String result) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(result),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 1),
      ),
    );
  }


  bmiAction(n1, n2) {
    BmiCalc bmiCalc = BmiCalc(n1, n2);
    print(bmiCalc.clacAction());
  }

}// END