import 'package:flutter/material.dart';

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
  Widget build(BuildContext context) => ContainerTeste('Tenis Nike Model 1');
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ContainerTeste('Tenis Nike Model 2');
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ContainerTeste('Tenis Nike Model 3');
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ContainerTeste('Tenis Nike Model 4');
}

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ContainerTeste('Tenis Nike Model 5');
}

class ContainerTeste extends StatelessWidget {
  final String label;
  ContainerTeste(this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Image.network(
              'https://cdn.dentalspeed.com/produtos/550/tenis-flynit-cinza-em-croche-n-34-comfortflex-13421.png'),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Column(
              children: [
                Divider(),
                Text(
                  label,
                  style: TextStyle(fontSize: 25),
                ),
                Text('R\$999,99', style: TextStyle(fontSize: 15)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
