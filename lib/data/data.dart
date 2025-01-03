import 'package:flutter/material.dart';

List<Map<String, dynamic>> transactionData = [
  {
    'icon': const Icon(Icons.fastfood, color: Colors.white,),
    'color': Colors.yellow[700],
    'name': 'Food',
    'totalAmount': '- 50.00',
    'date': 'Today',
  },
  {
    'icon': const Icon(Icons.shopping_cart, color: Colors.white,),
    'color': Colors.purple,
    'name': 'Shopping',
    'totalAmount': '- 100.00',
    'date': 'Today',
  },
  {
    'icon': const Icon(Icons.health_and_safety, color: Colors.white,),
    'color': Colors.green,
    'name': 'Health',
    'totalAmount': '- 90.00',
    'date': 'Yesterday',
  },
  {
    'icon': const Icon(Icons.airplanemode_active, color: Colors.white),
    'color': Colors.blue,
    'name': 'Travel',
    'totalAmount': '- € 250.00',
    'date': 'Yesterday',
  },
];