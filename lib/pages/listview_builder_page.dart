import 'package:flutter/material.dart';
import 'package:prototipo_lista_feed/pages/item_exemplo.dart';

class ListViewBuilderPage extends StatefulWidget {
  @override
  _ListViewBuilderPageState createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {
  final ScrollController controller = ScrollController();

  var scrollTypeRunner = true;

  @override
  Widget build(BuildContext context) {
    // Altura da tela menos o appbar e menos o TextFormField
    final heightItem = MediaQuery.of(context).size.height - 155;
    AppBar appBar = AppBar(
      title: Text('Scroll Controller'),
      actions: [
        Switch(
          activeColor: Colors.white,
          value: scrollTypeRunner,
          onChanged: (val) {
            setState(() {
              scrollTypeRunner = !scrollTypeRunner;
            });
          },
        )
      ],
    );
    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Pesquisar',
                  suffixIcon: Icon(Icons.search)),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: !scrollTypeRunner ? PageScrollPhysics() : null,
              controller: controller,
              itemCount: 50,
              itemBuilder: (BuildContext context, int index) {
                return ItemExemplo(heightItem);
              },
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   mini: true,
      //   child: Icon(Icons.arrow_upward_rounded),
      //   onPressed: () {
      //     controller.animateTo(
      //       0,
      //       duration: Duration(seconds: 1),
      //       curve: Curves.easeIn,
      //     );
      //   },
      // ),
    );
  }
}
