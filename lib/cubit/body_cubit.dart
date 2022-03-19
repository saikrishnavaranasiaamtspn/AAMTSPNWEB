import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:pract/Carrer/careerbody.dart';

import 'package:pract/aboutuss/aboutusbody.dart';
import 'package:pract/home/homebody.dart';
import 'package:pract/team/teambody.dart';

part 'body_state.dart';

class BodyCubit extends Cubit<BodyInitial> {
  BodyCubit() : super(BodyInitial(Hombody()));

  void callAboutus() => emit(BodyInitial(Aboutusbody()));

  void callHome() => emit(BodyInitial(Hombody()));

  void callCarrer() => emit(BodyInitial(Carrerbody()));

  void callTeam() => emit(BodyInitial(Teambody()));
}
