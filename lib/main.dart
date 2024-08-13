import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app_admin/Application/First%20Time/first_time_bloc.dart';
import 'package:shopping_app_admin/Application/Theme%20Bloc/theme_bloc_bloc.dart';
import 'package:shopping_app_admin/Core/theme.dart';
import 'package:shopping_app_admin/Presentation/Login/login.dart';

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
        BlocProvider(
          create: (context) => FirstTimeBloc(),
        ),
      ],
      child: BlocBuilder<ThemeBlocBloc, ThemeBlocState>(
        builder: (context, state) {
          return MaterialApp(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              darkTheme: kdarkMode,
              theme: state.isTrue ? kdarkMode : klightMode,
              debugShowCheckedModeBanner: false,
              home: const LoginPage());
        },
      ),
    );
  }
}
