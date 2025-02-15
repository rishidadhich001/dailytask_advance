import 'package:dailytask_advance/controllers/dark_provider.dart';
import 'package:dailytask_advance/controllers/step_provider.dart';
import 'package:dailytask_advance/utils/theme_manager.dart';
import 'package:dailytask_advance/views/Personal_stepper.dart';
import 'package:dailytask_advance/views/dark_light_page.dart';
import 'package:dailytask_advance/views/stepper_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers:[
          ChangeNotifierProvider(create: (context) => HomeProvider(),),
          ChangeNotifierProvider(create: (context) => StepProvider(),),
        ],
      builder: (context, child) =>  MaterialApp(
        darkTheme:ThemeManager.darkTheme,
        theme:ThemeManager.lightTheme,
        themeMode:  Provider.of<HomeProvider>(context).isDark?ThemeMode.dark:ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: AccountDetail(),
      ),
    );
  }
}
