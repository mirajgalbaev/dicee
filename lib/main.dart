// ignore_for_file: unnecessary_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, non_constant_identifier_names, unused_import, unnecessary_new, unused_local_variable

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            elevation: 0,
            title: Text(
              'Dicee',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
            backgroundColor: Colors.red,
            centerTitle: true,
          ),
          body: DicePage(),
        ),
      ),
    );

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 3;
  int rightDice = 1;
  void OnClicked(args) {
    setState(
      () {
        var random = new Random();
        leftDice = random.nextInt(6) + 1;
        rightDice = random.nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  OnClicked('');
                },
                child: Image.asset(
                  'assets/dice$leftDice.png',
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  OnClicked('');
                },
                child: Image.asset('assets/dice$rightDice.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
