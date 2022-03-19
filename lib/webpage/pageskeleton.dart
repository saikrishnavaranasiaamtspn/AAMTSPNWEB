import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pract/webpage/Header.dart';
import 'package:pract/cubit/body_cubit.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  ScrollController _controller = new ScrollController();

  void _scrollToTop() {
    _controller.jumpTo(_controller.position.minScrollExtent);
  }

  int x = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BodyCubit>(
      create: (context) => BodyCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          SingleChildScrollView(
              controller: _controller,
              child: BlocBuilder<BodyCubit, BodyInitial>(
                builder: (context, state) {
                  x++;
                  if (x > 1) {
                    _scrollToTop();
                  }

                  return state.a;
                },
              )),
          appbar(),
        ]),
      ),
    );
  }
}
