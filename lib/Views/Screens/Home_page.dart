import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';

import 'Global.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? though;
  DateTime currentTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HomePage",
          style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
              color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffF1F2B5),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffF1F2B5),
              Color(0xff135058),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: AnalogClock(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.5, color: Colors.black),
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  width: 250,
                  isLive: true,
                  datetime: currentTime,
                  digitalClockColor: Colors.blue,
                  hourHandColor: Colors.black,
                  minuteHandColor: Colors.black,
                  secondHandColor: Colors.black,
                  numberColor: Colors.green,
                  textScaleFactor: 1.5,
                  tickColor: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Any Thoughts",
                    border: OutlineInputBorder(),
                    label: Text(
                      "Thoughts",
                      style: TextStyle(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  onChanged: (val) {
                    setState(() {
                      though = val;
                      currentTime.hour;
                      currentTime.minute;
                      currentTime.second;
                    });
                  },
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xffF1F2B5),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    Map<String, dynamic> myList = {
                      'thought': though,
                      'hour': currentTime.hour,
                      'min': currentTime.minute,
                      'sec': currentTime.second,
                    };
                    print(myList);
                    Global.allData.addAll([myList]);

                  });
                  Navigator.pushNamed(context, 'deta');
                },
                child: Text(
                  "Mark My Thoughts",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
