import 'dart:math';

import 'package:flutter/material.dart';

class ItemExemplo extends StatelessWidget {
  final double height;
  ItemExemplo(this.height);

  final descriptions = [
    'Nike PRO Model',
    'Adidas SB',
    'Newton Running',
    'Asics Runner XS',
    'Converse Allstar',
    'Vans Old Skool',
    'Vans SK8',
  ];
  final references = [
    '3215454123',
    '3215456489',
    '2156454566',
    '1231564564',
    '5456452154',
  ];
  final photos = [
    'https://cdnv2.moovin.com.br/rainhacalcados/imagens/produtos/det/tenis-feminino-malibu-shoes-para-caminhada-r1905-4394e797ec555fb2fa79a7900237e4ca.png',
    'https://cdn.vox-cdn.com/thumbor/XA2qi8vCCuKFYs1cAwRtXF0-ZZw=/0x0:2000x2000/1800x1800/filters:focal(1000x1000:1001x1001)/cdn.vox-cdn.com/uploads/chorus_asset/file/21918871/Steelers1.png',
    'https://cdn.pixabay.com/photo/2013/07/12/18/20/shoes-153310__340.png',
    'https://static.nike.com/a/images/t_default/3df7160f-4d72-4254-bb2e-39626055f7f6/air-zoom-tempo-next-mens-running-shoe-Jp0gJk.png',
    'https://static.nike.com/a/images/t_default/d732f882-4c80-43c5-a40d-a12ccefafa8b/lebron-witness-5-basketball-shoe-XJrPgC.png',
    'https://cdn.shopify.com/s/files/1/0071/6698/4310/products/2020-WOS-Bocco-LateralResized_480x480.png?v=1593021482',
    'https://i.redd.it/2o166afjwtr11.png',
  ];
  final _random = new Random();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: height,
      child: Column(
        children: [
          // Bloco da foto
          Expanded(
            flex: 3,
            child: Image.network(
              photos[_random.nextInt(photos.length)],
            ),
          ),
          // Bloco de informações e botão de add
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: [
                  // Bloco de informações
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Divider(),
                        SizedBox(height: 8),
                        Text(
                          descriptions[_random.nextInt(descriptions.length)],
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Ref.: ${references[_random.nextInt(references.length)]}',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'R\$999,99',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Bloco botão add
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: IconButton(
                          iconSize: 30,
                          color: Theme.of(context).accentColor,
                          icon: Icon(Icons.add_shopping_cart_outlined),
                          onPressed: () {}),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
