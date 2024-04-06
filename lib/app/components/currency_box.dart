import 'package:conversor_moedas/app/model/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  final List<currencyModel> items;
  final TextEditingController controller;
  final Function(currencyModel model) onChanged;

  const CurrencyBox({
    super.key,
    required this.items,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 65,
          child: Expanded(
            child: DropdownButton<currencyModel>(
              iconEnabledColor: Colors.amber,
              underline: Container(
                height: 1,
                color: Colors.amber,
              ),
              items: items
                  .map((currencyModel e) => DropdownMenuItem<currencyModel>(
                        value: e, // Define o valor do item
                        child: Text(e.name),
                      ))
                  .toList(), // Converte o iterável para uma lista
              onChanged: (value) {},
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Expanded(
          child: TextField(
            controller: ,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
