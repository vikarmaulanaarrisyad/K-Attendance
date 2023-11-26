import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/splash_screen_event.dart';
import '../state/splash_screen_state.dart';
import 'package:absensi_rfid_flutter/bloc_util.dart';

class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState>
    implements IBlocBase {
  SplashScreenBloc() : super(SplashScreenState()) {
    on<SplashScreenIncrementEvent>((event, emit) async {
      await Future.delayed(Duration(seconds: 5));
      state.counter = true;
      emit(state.copyWith());
    });
  }

  @override
  void initState() {
    //initState event
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }
}
