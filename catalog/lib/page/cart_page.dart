//import 'package:catalog/Theme/theme.dart';
import 'package:catalog/model/cart.dart';
//import 'package:catalog/model/catalog.dart';
import 'package:flutter/material.dart';
import 'package:pay/pay.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(child: Text("Cart")),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatefulWidget {
  @override
  __CartTotalState createState() => __CartTotalState();
}

class __CartTotalState extends State<_CartTotal> {
  final _cart = CartModel();

  final paymentItems = <PaymentItem>[];
  @override
  void initState() {
    paymentItems.add(PaymentItem(
        amount: _cart.totalPrice.toString(),
        label: "SmartCatalog",
        status: PaymentItemStatus.final_price));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 12, right: 12, bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "\$${_cart.totalPrice}",
            style: TextStyle(fontSize: 35),
          ),
          //  SizedBox(
          //  height: 40,
          //  width: 130,
          //  child:// ElevatedButton(
          //     style: ButtonStyle(
          //       backgroundColor:
          //           MaterialStateProperty.all(MyTheme.darkBluishColor),
          //       shape: MaterialStateProperty.all(StadiumBorder()),
          //     ),
          //     onPressed: () {
          //       ScaffoldMessenger.of(context).showSnackBar(
          //           SnackBar(content: Text("buying not supported")));
          //     },
          //     child: Text('BUY')),
          //),
          GooglePayButton(
            paymentConfigurationAsset: 'gpay.json',
            paymentItems: paymentItems,
            onPaymentResult: (data) {
              print(data);
            },
            height: 50,
            width: 130,
            type: GooglePayButtonType.order,
          ),
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({Key key}) : super(key: key);

  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty
        ? Center(
            child: Text(
              "Cart is Empty",
              style: TextStyle(fontSize: 30),
            ),
          )
        : ListView.builder(
            itemCount: _cart.items?.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.check),
              title: Text(_cart.items[index].name),
              trailing: IconButton(
                icon: Icon(Icons.remove_circle_outline_sharp),
                onPressed: () {
                  _cart.remove(_cart.items[index]);
                  setState(() {});
                },
              ),
            ),
          );
  }
}
