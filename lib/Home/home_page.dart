// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields, unused_field, unused_local_variable, unused_element

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePageFull extends StatefulWidget {
  const HomePageFull({Key? key}) : super(key: key);

  @override
  State<HomePageFull> createState() => _HomePageFullState();
}

class _HomePageFullState extends State<HomePageFull> {
  var _frase = ["Frase 1 ", "frase 2 ", "frase 3"];
  var _fraseGerada = "Clique Abaixo para gerar a frase";
  void _gerarFrease() {
    var random = Random().nextInt(_frase.length);
    setState(() {
      _fraseGerada = _frase[random];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Frase do dia",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Lottie.network(
                  "https://assets8.lottiefiles.com/packages/lf20_xou0igfb.json"),
              Text(_fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      color: Colors.blue)),
              ElevatedButton(onPressed: _gerarFrease, child: Text("Nova Frase"))
            ]),
      ),
    );
  }
}
