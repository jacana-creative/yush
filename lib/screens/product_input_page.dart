import 'package:flutter/material.dart';
import 'package:yush/components/round_icon_button.dart';

class ProductInputPage extends StatefulWidget {
  const ProductInputPage({Key? key}) : super(key: key);

  @override
  _ProductInputPageState createState() => _ProductInputPageState();
}

class _ProductInputPageState extends State<ProductInputPage> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: ListTile(
                  title: Text('Baguette'),
                  subtitle: Text('Bread & Pastries'),),
              ),
              RoundIconButton(
                icon: Icons.remove,
                onPressed: _increment,
              ),
              Text('$_counter'),
              RoundIconButton(
                icon: Icons.add,
                onPressed: _decrement,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
