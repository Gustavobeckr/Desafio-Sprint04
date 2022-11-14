import 'package:flutter/material.dart';
import 'package:todo_shered_preferences/src/my_app.dart';

import '../widgets/theme_store_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
        actions: [
          AnimatedBuilder(
            animation: themeStore,
            builder: (context, child) {
              return Switch(
                  value: themeStore.isDartTheme,
                  onChanged: (value) {
                    themeStore.shitchTheme();
                  });
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(MyApp.ADD_TODO);
        },
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
