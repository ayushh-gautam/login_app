import 'package:flutter/material.dart';

class welcomePage extends StatelessWidget {
  const welcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Welcome\n you have succesfully\n logged in',
    style: TextStyle(color: Colors.blue[600], fontSize: 20),)),);
  }
}
