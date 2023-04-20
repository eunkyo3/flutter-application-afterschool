import 'package:flutter/material.dart';

class Detail_page extends StatelessWidget {
  int price;
  Detail_page({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('detail'),
      ),
      body: Text('$price'),
    );
  }
}
