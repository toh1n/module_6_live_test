import 'package:flutter/material.dart';

main(){
  runApp(Module6LiveTest());
}


class Module6LiveTest extends StatelessWidget {
  const Module6LiveTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> shoppingList = [
    "Apples",
    "Bananas",
    "Bread",
    "Eggs",
    "Tomato",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Cart is empty",textAlign: TextAlign.center,))
                );
              },
              icon: Icon(Icons.shopping_cart))
        ],
        backgroundColor: Colors.blue,
        title: Text("My Shopping List"),
        centerTitle: true,
      ),
      body:ListView.builder(
        itemCount: shoppingList.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text("${shoppingList[index]}"),
            leading: Icon(Icons.shopping_bag),

          );
        },
      ),
    );
  }
}
