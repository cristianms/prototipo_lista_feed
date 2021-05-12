import 'package:flutter/material.dart';
import 'package:prototipo_lista_feed/pages/item_eemplo.dart';

class PageViewPage extends StatefulWidget {
  @override
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  final controller = PageController(
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView'),
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Pesquisar',
              ),
            ),
          ),
          Expanded(
            child: PageView(
              controller: controller,
              scrollDirection: Axis.vertical,
              children: [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
                Page5(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ItemExemplo('Tenis Nike Model 1');
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ItemExemplo('Tenis Nike Model 2');
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ItemExemplo('Tenis Nike Model 3');
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ItemExemplo('Tenis Nike Model 4');
}

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ItemExemplo('Tenis Nike Model 5');
}
