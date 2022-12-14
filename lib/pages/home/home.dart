import 'package:smart_ambulance/pages/auth/auth_page.dart';
import 'package:smart_ambulance/pages/auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: AuthPage(),
    );
  }
}