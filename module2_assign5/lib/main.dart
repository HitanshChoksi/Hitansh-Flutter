import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double VarFontSize = 20;
  void incrFontSize() async{
    setState(() {
      VarFontSize+=2;
    });
  }

  void decrFontSize() async{
    setState(() {
      VarFontSize-=2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: 
          
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("FONT SIZE",style: TextStyle(fontSize: VarFontSize),),
                Column(
                  
                  children: [
                    
                    FloatingActionButton(onPressed: (){incrFontSize();},child: Text("+"),),
                  ],
                ),
                Column(
                  children: [
                    FloatingActionButton(onPressed: (){decrFontSize();},child: Text("-"),),
                  ],
                )
              ],
            ),
          ),
          
        ),
      ),
    );
  }
}