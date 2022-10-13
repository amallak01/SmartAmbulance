import 'package:smart_ambulance/pages/home/home.dart';
import 'package:smart_ambulance/pages/auth/bloc/auth_bloc.dart';
import 'package:smart_ambulance/ui/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  late AuthBloc bloc;
  void initState() {
    bloc = AuthBloc();
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => bloc,
      child: MaterialApp(
        title: 'Smart Ambulance',
        theme: CityTheme.theme,
        home: HomePage(),
     ),
    );
  }
}
