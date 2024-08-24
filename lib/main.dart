import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app_admin/Application/Widget%20Blocs/Color%20Widget/color_bloc.dart';
import 'package:shopping_app_admin/Application/Widget%20Blocs/Visible%20Widget/visible_bloc.dart';
import 'package:shopping_app_admin/Presentation/Screens/Home/hompage.dart';

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
          create: (context) => VisibleBloc(),
        ),
        BlocProvider(
          create: (context) => ColorBloc(),
        ),
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}
