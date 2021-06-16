import 'package:catalog/Theme/theme.dart';
import 'package:catalog/model/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
//import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$${catalog.price}",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[700]),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(MyTheme.darkBluishColor),
                    shape: MaterialStateProperty.all(StadiumBorder()),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.cart),
                      SizedBox(
                        width: 3,
                      ),
                      Text('Add to Cart'),
                    ],
                  )).wh(140, 40)
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                tag: Key(catalog.id.toString()),
                child: Center(
                  child: Image.network(
                    catalog.image,
                    height: 250,
                    width: 250,
                  ),
                )),
            Expanded(
              child: VxArc(
                height: 50,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  width: context.screenWidth,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70,
                      ),
                      Text(catalog.name,
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold)),
                      Text(catalog.desc),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "Usby aidenn nevermore desert as the the something beak his. Beast cannot shall of the was startled pallas all. And shadows ebony eyes into into. Reclining its for token upon door suddenly while thy of, or help cannot deep only door ungainly, my dreaming i not fancy in. Till was bends door i. What form but december heard name prophet thy my gloated. Wrought distinctly still stately the swung madam."),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
