// ignore_for_file: prefer_const_constructors

import 'package:conversor_moedas/app/components/currency_box.dart';
import 'package:conversor_moedas/app/controllers/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  late HomeController homeController;

  HomeView({super.key});

  void initState() {
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.only(left: 30, right: 30, bottom: 20, top: 50),
          child: Column(
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(80), // Definindo borda circular
                child: Image.asset('images/assets/logo.png',
                    width: 150, height: 150),
              ),
              SizedBox(
                height: 70,
              ),
              CurrencyBox(items: [homeController.currencies, onChange: (model){} ],),
              SizedBox(
                height: 30,
              ),
              CurrencyBox(),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                child: Text(
                  'Converter',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
