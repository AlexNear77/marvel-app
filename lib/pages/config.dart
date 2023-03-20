import 'package:flutter/material.dart';
import 'package:password_generator_app/pages/home.dart';

class Configuration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Configuration();
  }
}

class _Configuration extends State<Configuration> {
  /*  ValueNotifier<bool?> _isActiveMin = ValueNotifier<bool>(false);

  void _sendData(bool? data) {
    _isActiveMin.value = data;
  } */

  bool? isActiveMin = false;
  bool? isActiveMay = false;
  bool? isActiveEsp = false;
  bool? isActiveNum = false;

  void onChangedNum(bool? value) {
    setState(() {
      isActiveNum = value;
    });
  }

  void onChangedMin(bool? value) {
    setState(() {
      isActiveMin = value;
    });
  }

  void onChangedMay(bool? value) {
    setState(() {
      isActiveMay = value;
    });
  }

  void onChangedEsp(bool? value) {
    setState(() {
      isActiveEsp = value;
    });
  }

  void sendConfig() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 30),
            child: const Text("Generator Configuration")),
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
        Container(
          child: ElevatedButton(
              onPressed: sendConfig, child: Text("Save Changes")),
          padding: EdgeInsets.only(top: 20),
        ),
      ],
    );
  }
}
