// ignore_for_file: use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:robbinlaw/themes/theme.dart';
import 'package:robbinlaw/d1/demo-main.dart' as d1;
import 'package:robbinlaw/d2/demo-main.dart' as d2;
import 'package:robbinlaw/d3/demo-main.dart' as d3;
import 'package:robbinlaw/d4/demo-main.dart' as d4;
import 'package:robbinlaw/d5/demo-main.dart' as d5;
import 'package:robbinlaw/d6/demo-main.dart' as d6;
import 'package:robbinlaw/d7/demo-main.dart' as d7;
import 'package:robbinlaw/d8/demo-main.dart' as d8;
import 'package:robbinlaw/d9/demo-main.dart' as d9;

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Root(),
      theme: buildTheme(),
    );
  }
}

class Root extends StatefulWidget {
  @override
  State<Root> createState() => RootState();
}

class RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: PopupMenuButton(
          icon: const Icon(Icons.menu),
          itemBuilder: (BuildContext context) => <PopupMenuEntry>[
            const PopupMenuItem(
              value: 1,
              child: ListTile(
                title: Text('D1 - Stack Widget'),
              ),
            ),
            const PopupMenuDivider(),
            const PopupMenuItem(
              value: 2,
              child: ListTile(
                title: Text('D2 - Custom Fonts'),
              ),
            ),
            const PopupMenuDivider(),
            const PopupMenuItem(
              value: 3,
              child: ListTile(
                title: Text('D3 - Icon Widget'),
              ),
            ),
            const PopupMenuDivider(),
            const PopupMenuItem(
              value: 4,
              child: ListTile(
                title: Text('D4 - Card & ListTile Widgets'),
              ),
            ),
            const PopupMenuDivider(),
            const PopupMenuItem(
              value: 5,
              child: ListTile(
                title: Text('D5 - Lambda Operator'),
              ),
            ),
            const PopupMenuDivider(),
            const PopupMenuItem(
              value: 6,
              child: ListTile(
                title: Text('D6 - '),
              ),
            ),
            const PopupMenuDivider(),
            const PopupMenuItem(
              value: 7,
              child: ListTile(
                title: Text('D7 - '),
              ),
            ),
            const PopupMenuDivider(),
            const PopupMenuItem(
              value: 8,
              child: ListTile(
                title: Text('D8 - '),
              ),
            ),
            const PopupMenuDivider(),
            const PopupMenuItem(
              value: 9,
              child: ListTile(
                title: Text('D9 - '),
              ),
            ),
          ],
          onCanceled: () {
            print("You have canceled the menu.");
          },
          onSelected: (value) {
            if (value == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => d1.Demo(),
                ),
              );
            }
            if (value == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => d2.Demo(),
                ),
              );
            }
            if (value == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => d3.Demo(),
                ),
              );
            }
            if (value == 4) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => d4.Demo(),
                ),
              );
            }
            if (value == 5) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => d5.Demo(),
                ),
              );
            }
            if (value == 6) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => d6.Demo(),
                ),
              );
            }
            if (value == 7) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => d7.Demo(),
                ),
              );
            }
            if (value == 8) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => d8.Demo(),
                ),
              );
            }
            if (value == 9) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => d9.Demo(),
                ),
              );
            }
          },
        ),
        title: const Text('UI Layout Advanced'),
      ),
      body: const Center(),
    );
  }
}
