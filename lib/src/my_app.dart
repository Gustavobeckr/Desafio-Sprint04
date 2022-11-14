import 'package:flutter/material.dart';
import 'package:todo_shered_preferences/src/presentation/views/add_todo.dart';
import 'package:todo_shered_preferences/src/presentation/views/home_page.dart';
import 'package:todo_shered_preferences/src/presentation/widgets/theme_store_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const HOME_PAGE = '/';
  static const ADD_TODO = '/add_todo';

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: themeStore,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Todo List',
          darkTheme: ThemeData(
            primarySwatch: Colors.blue,
            brightness: Brightness.dark,
          ),
          themeMode: themeStore.themeMode,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: HOME_PAGE,
          routes: {
            HOME_PAGE: (context) => const HomePage(),
            ADD_TODO: (context) => AddTodo(),
          },
        );
      },
    );
  }
}
