import 'package:flutter/material.dart';

void main() {
  runApp(MyShoppingListApp());
}

class MyShoppingListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingListScreen(),
    );
  }
}

class ShoppingListScreen extends StatelessWidget {
  final List<ShoppingItem> shoppingItems = [
    ShoppingItem(name: 'Apples', icon: Icons.shopping_basket),
    ShoppingItem(name: 'Bananas', icon: Icons.shopping_basket),
    ShoppingItem(name: 'Milk', icon: Icons.shopping_basket),
    ShoppingItem(name: 'Bread', icon: Icons.shopping_basket),
    ShoppingItem(name: 'Eggs', icon: Icons.shopping_basket),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Handle cart icon tap here
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: shoppingItems.length,
        itemBuilder: (context, index) {
          final item = shoppingItems[index];
          return ListTile(
            leading: Icon(item.icon),
            title: Text(item.name),
            onTap: () {
              // Handle item tap here
            },
          );
        },
      ),
    );
  }
}

class ShoppingItem {
  final String name;
  final IconData icon;

  ShoppingItem({required this.name, required this.icon});
}
