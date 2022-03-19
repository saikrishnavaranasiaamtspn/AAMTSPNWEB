import 'package:flutter/cupertino.dart';

class Journz extends StatefulWidget {
  const Journz({Key? key}) : super(key: key);

  @override
  _JournzState createState() => _JournzState();
}

class _JournzState extends State<Journz> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(127, 62, 59, 1),
              Color.fromRGBO(196, 196, 196, 0)
            ]),
      ),
    );
  }
}
