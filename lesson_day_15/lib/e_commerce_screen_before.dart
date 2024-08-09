import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ECommerceScreen extends StatelessWidget {
  const ECommerceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        ///backgroundColor: Colors.purple,
        appBar: _buildAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: <Widget>[
            _buildToggleBar(context),
            Image.asset('assets/woman_shopping.png', ),
            SizedBox(
              height: 15,
            ),
            DealButtons(),
            _buildProductTile(context)
          ]),
        ));
  }

  Container _buildProductTile(BuildContext context) {
    return Container(
            height: 200,
            color: Theme.of(context).cardColor,
            child: Row(
              children: <Widget>[
                Image.asset(
                  'assets/textiles.png',
                      fit: BoxFit.fitHeight,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Lorem Ipsum",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text('Dolor sit amet, consectetur adipiscing elit. Quisque faucibus.')
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
  }

  Widget _buildToggleBar(BuildContext context) {
    return Row(
            children: <Widget>[
              _buildToggleItem(context, "Recommended", selected: true),
              _buildToggleItem(context,  "Formal Wear"),
              _buildToggleItem(context,  "Casual Wear"),
            //   Padding(
            //     padding: const EdgeInsets.all(8),
            //     child: Text(
            //       "Formal Wear",
            //       style: TextStyle(
            //         color: Colors.white54,
            //         fontSize: 17,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            //   Padding(
            //     padding: const EdgeInsets.all(8),
            //     child: Text(
            //       "Casual Wear",
            //       style: TextStyle(
            //         color: Colors.white54,
            //         fontSize: 17,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            ],
          );
  }

  Widget _buildToggleItem(BuildContext context, String text,
      {bool selected = false}) {
    return Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                text,
                style: TextStyle(
                  color: selected
                  ? null
                  : Theme.of(context).textTheme.titleMedium?.color?.withOpacity(0.5),
                  fontSize: 17,
                  fontWeight: selected ? FontWeight.bold : null,
                ),
              ),
            );
  }

  AppBar _buildAppBar() {
    return AppBar(
        //backgroundColor: Colors.purpleAccent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        leading: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Icon(Icons.home),
        ),
        title: Text("Let\'s go shopping!"),
        //elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: Icon(Icons.shopping_cart),
          )
        ],
      );
  }
}

class DealButtons extends StatelessWidget {
  const DealButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            DealButton(color: '', text: ""),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: Container(
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  'Daily Deals',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: <Widget>[
            Expanded(
                child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          'Must buy in summer',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ))),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: Container(
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  'Last Chance',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )),
          ],
        ),
        SizedBox(height: 15),
      ],
    );
  }
}

class DealButton extends StatelessWidget {
  final String text;
  final String color;
  const DealButton({
    super.key,
    required this.color,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: 80,
      decoration: BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(
          'Best Sellers',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ));
  }
}
