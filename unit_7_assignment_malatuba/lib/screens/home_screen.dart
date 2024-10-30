import 'package:flutter/material.dart';

import 'package:unit_7_assignment_malatuba/screens/about_me.dart';

class HomScreen extends StatelessWidget {
  const HomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gesture and Navigation"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("This is supposed to be a Home Screen"),
          const SizedBox(height: 20),
          
          // INSERT CODE BELOW
          ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const About_Me()));
              },
              child: const Text("About Me")
          )
        ],
      ),
    );
  }
}