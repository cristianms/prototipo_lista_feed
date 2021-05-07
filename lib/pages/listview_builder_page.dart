import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatefulWidget {
  @override
  _ListViewBuilderPageState createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {
  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    // controller.addListener(_listenScrolling);
  }

  // void _listenScrolling() {
  //   if (controller.position.atEdge) {
  //     print('at edge');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scroll Controller'),
      ),
      body: GestureDetector(
        // onVerticalDragDown: (dragdownDetails) {
        //   print('drag down');
        // },
        // onVerticalDragUpdate: (details) {
        //   int sensivity = 8;
        //   if (details.delta.dy > sensivity) {
        //     print('swipe down');
        //   } else if (details.delta.dy < -sensivity) {
        //     print('swipe up');
        //   }
        // },
        onPanUpdate: (details) {
          int sensivity = 8;
          if (details.delta.dy > sensivity) {
            print('swipe down');
          } else if (details.delta.dy < -sensivity) {
            print('swipe up');
          }
        },
        child: ListView.builder(
          controller: controller,
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
                color: Colors.black38,
              ),
              child: Center(
                child: Text(
                  'item $index',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            );
          },
        ),
        // child: Container(
        //   height: 300,
        //   decoration: BoxDecoration(
        //     border: Border.all(width: 1),
        //     color: Colors.black38,
        //   ),
        //   child: Center(
        //     child: Text(
        //       'item',
        //       style: TextStyle(fontSize: 20),
        //     ),
        //   ),
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_upward_rounded),
        onPressed: () {
          controller.animateTo(
            0,
            duration: Duration(seconds: 1),
            curve: Curves.easeIn,
          );
        },
      ),
    );
  }
}
