import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/splash_screen_bloc.dart';
import '../state/splash_screen_state.dart';
import 'package:get_it/get_it.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  SplashScreenBloc bloc = SplashScreenBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<SplashScreenBloc>()) {
      GetIt.I.unregister<SplashScreenBloc>();
    }
    GetIt.I.registerSingleton(bloc);
    bloc.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => bloc.ready(),
    );
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => bloc,
      child: BlocListener<SplashScreenBloc, SplashScreenState>(
        listener: (context, state) {},
        child: BlocBuilder<SplashScreenBloc, SplashScreenState>(
          builder: (context, state) {
            final bloc = context.read<SplashScreenBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    SplashScreenBloc bloc,
    SplashScreenState state,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Image.network(
                "https://play-lh.googleusercontent.com/lSplnnegQJBIP8KmFYNIwsEW5p-SO0tRDJ7DuEOkhdIvfRjAIfA-pT4ee9muIOXb-6NS",
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            "K-Attendance",
            style: TextStyle(fontSize: 28.0, color: Color(0xff209E92)),
            // style: TextStyle(fontSize: 28.0, color: Color(0xff5EB850)),
          ),
          const SizedBox(
            height: 22.0,
          ),
          Text(
            "Aplikasi absensi mobile",
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
