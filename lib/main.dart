import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shopping_app_admin/Application/Theme%20Bloc/theme_bloc_bloc.dart';
import 'package:shopping_app_admin/Core/theme.dart';
import 'package:shopping_app_admin/Presentation/Login/login.dart';
import 'package:shopping_app_admin/Presentation/Screens/Home/hompage.dart';

import 'Application/RadioButton/radio_button_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RadioButtonBloc(),
        ),
        BlocProvider(
          create: (context) => ThemeBlocBloc(),
        ),
      ],
      child: BlocBuilder<ThemeBlocBloc, ThemeBlocState>(
        builder: (context, state) {
          return MaterialApp(
              darkTheme: kdarkMode,
              theme: state.isTrue ? kdarkMode : klightMode,
              debugShowCheckedModeBanner: false,
              home: const HomePage());
        },
      ),
    );
  }
}
