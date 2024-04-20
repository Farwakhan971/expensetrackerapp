import 'package:flutter/material.dart';

import '../Screens/add.dart';
import '../Screens/home.dart';


class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int index_color = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Add_Screen()));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.indigoAccent,
        foregroundColor: Colors.white, // Set button color to white
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: SizedBox(height: 0), // Set the height to 0 to hide all icons
      ),
    );
  }
}

