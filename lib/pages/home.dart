import 'package:flutter/material.dart';
import 'dart:math';

import 'package:password_generator_app/pages/error.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  dynamic password = '';
  dynamic length = 12;

  bool isActiveMin = false;
  bool isActiveMay = false;
  bool isActiveEsp = false;
  bool isActiveNum = false;

  void onChangedNum(bool? value) {
    setState(() {
      isActiveNum = value!;
    });
  }

  void onChangedMin(bool? value) {
    setState(() {
      isActiveMin = value!;
    });
  }

  void onChangedMay(bool? value) {
    setState(() {
      isActiveMay = value!;
    });
  }

  void onChangedEsp(bool? value) {
    setState(() {
      isActiveEsp = value!;
    });
  }

  void generate() {
    if (!isActiveNum && !isActiveMin && !isActiveMay && !isActiveEsp) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Error1(
            title: 'Required parameters',
            message: 'Its necessary to select at least one parameter.',
            buttonText: 'Close',
            onPressed: () {
              Navigator.of(context).pop();
            },
          );
        },
      );
    }

    final random = Random();

    const lowercaseChars = 'abcdefghijklmnopqrstuvwxyz';
    const uppercaseChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    const numbers = '0123456789';
    const specialChars = '!@#\$%^&*()-_=+[{]}\\|;:\'",.<>/?';

    final chars = List<String>.empty(growable: true);

    if (isActiveMay) {
      chars.addAll(uppercaseChars.split(''));
    }
    if (isActiveMin) {
      chars.addAll(lowercaseChars.split(''));
    }
    if (isActiveNum) {
      chars.addAll(numbers.split(''));
    }
    if (isActiveEsp) {
      chars.addAll(specialChars.split(''));
    }

    setState(() {
      password = List.generate(length, (index) {
        return chars[random.nextInt(chars.length)];
      }).join('');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 30),
              child: const Text("Password Generator")),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: isActiveNum,
                    onChanged: onChangedNum,
                  ),
                  Text("Numbers")
                ],
              ),
              Text("123456789")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: isActiveMin,
                    onChanged: onChangedMin,
                  ),
                  Text("Uppercase")
                ],
              ),
              Text("ABCDEFG")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: isActiveMay,
                    onChanged: onChangedMay,
                  ),
                  Text("Lowercase")
                ],
              ),
              Text("abcdefgh")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: isActiveEsp,
                    onChanged: onChangedEsp,
                  ),
                  Text("Special characters")
                ],
              ),
              Text("%&.?")
            ],
          ),
          ElevatedButton(
            child: Text("Generate Password"),
            onPressed: generate,
          ),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 30),
              child: Text(password)),
        ]);
  }
}
