import 'package:flutter/material.dart';
import 'package:flutter_application_carrot/detail_page.dart';
import 'kongbob_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Kongbobitem> items = [];
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    items.add(Kongbobitem(title: '안팝니다', addr: '우리집', price: 500000000));
    items.add(Kongbobitem(title: '안팝니다', addr: '우리집', price: 10001));
    items.add(Kongbobitem(title: '안팝니다', addr: '우리집', price: 10002));
    items.add(Kongbobitem(title: '안팝니다', addr: '우리집', price: 10003));
    items.add(Kongbobitem(title: '안팝니다', addr: '우리집', price: 10004));
    items.add(Kongbobitem(title: '안팝니다', addr: '우리집', price: 10005));
    items.add(Kongbobitem(title: '안팝니다', addr: '우리집', price: 10006));
    items.add(Kongbobitem(title: '안팝니다', addr: '우리집', price: 10007));

    return MaterialApp(
      home: HomePage(items: items),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.items,
  });

  final List<Kongbobitem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('kongbob market'),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          // 행동 인식
          children: [
            for (var item in items)
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail_page(price: item.price),
                        ));
                  },
                  child: item)
          ],
        ),
      ),
    );
  }
}
