import 'package:flutter/material.dart';
import 'package:portfolio_v1_02/providers/theme_provider.dart';
import 'package:provider/provider.dart';

import 'routes/app_routes.dart';
import 'utils/themes/theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (BuildContext context, ThemeProvider value, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: value.getThemeMode,
          theme: AppTheme.lightTheme,
          highContrastTheme: ThemeData(),
          highContrastDarkTheme: ThemeData(),
          darkTheme: AppTheme.darkTheme,
          title: 'Pulkit Birla',
          routes: AppRoutes.routes,
          initialRoute: AppRoutes.alert,
        );
      },
    );
  }
}
