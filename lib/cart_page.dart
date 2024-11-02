import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          CartItem(),
          CartItem(),
          Divider(),
          ListTile(
            title: Text('Ringkasan Belanja', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('PPN 11%: Rp. 10,000.00'),
                Text('Total Belanja: Rp. 94,000.00'),
                Text('Total Pembayaran: Rp. 104,000.00'),
              ],
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: Text('Checkout'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              minimumSize: Size(double.infinity, 48),
            ),
          ),
        ],
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network('https://example.com/product.jpg', width: 50, height: 50),
      title: Text('Burger King Medium'),
      subtitle: Row(
        children: [
          IconButton(icon: Icon(Icons.remove), onPressed: () {}),
          Text('2'),
          IconButton(icon: Icon(Icons.add), onPressed: () {}),
        ],
      ),
      trailing: IconButton(icon: Icon(Icons.delete), onPressed: () {}),
    );
  }
}