import 'package:flutter/material.dart';

class MyWidgetClass extends StatefulWidget {
  const MyWidgetClass({super.key});

  @override
  State<MyWidgetClass> createState() => _MyWidgetClassState();
}

class _MyWidgetClassState extends State<MyWidgetClass> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(child: Container(color: Colors.red,width: 100,)),
                    Expanded(child: Container(color: Colors.green)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
