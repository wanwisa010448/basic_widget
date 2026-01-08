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
          title: const Text('Basic Widgets'),
          backgroundColor: Colors.indigo, 
          foregroundColor: Colors.white,  
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // กึ่งกลางแนว
            children: [
            Image.asset(
                  'assets/images/ass1.gif', 
                  width: 150,                   
                  fit: BoxFit.contain, 
                ),
              
              const SizedBox(height: 20), // เว้นระยะห่างนิดหน่อย
              
              const Text(
                'Hello World!',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),

        
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          
            debugPrint('Button Clicked');
          },
          backgroundColor: Colors.orange, // สีปุ่ม
          child: const Text(
            'Click Me',
          
          ),
        ),
      ),
    );
  }
}