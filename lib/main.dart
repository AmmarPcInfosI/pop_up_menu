import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PopUp Menu'),
           actions: [
              PopupMenuButton(
                itemBuilder: (context) {
                  return ["Setting", "Quit"].map((e) {
                        return PopupMenuItem(
                          child: Text(e),
                          onTap: () {
                            print(e);
                          },
                        );
                      }).toList();
                },
              )
            ],
        ),
      ),
    );
  }
}
