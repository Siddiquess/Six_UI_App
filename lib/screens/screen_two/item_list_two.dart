import 'package:flutter/material.dart';

class ItemListTwo {
  Icon icons;
  Color colors;
  String texts;
  String? newText;

  ItemListTwo(
      {required this.icons,
      required this.colors,
      required this.texts,
      this.newText});
}

List<ItemListTwo> cardItems = [
  ItemListTwo(
      icons: const Icon(
        Icons.volume_up_outlined,
        color: Colors.white,
      ),
      colors: Colors.orange.shade800,
      texts: 'Marketing Designes'),
  ItemListTwo(
      icons: const Icon(
        Icons.currency_rupee_rounded,
        color: Colors.white,
      ),
      colors: Colors.green.shade600,
      texts: "Online Payments"),
  ItemListTwo(
      icons: const Icon(
        Icons.percent_rounded,
        color: Colors.white,
      ),
      colors: Colors.yellow.shade800,
      texts: 'Discount Coupens'),
  ItemListTwo(
      icons: const Icon(
        Icons.people_alt_outlined,
        color: Colors.white,
      ),
      colors: Colors.green.shade800,
      texts: 'My Customers'),
  ItemListTwo(
      icons: const Icon(
        Icons.qr_code_2_outlined,
        color: Colors.white,
      ),
      colors: Colors.grey.shade800,
      texts: 'Store QR Code'),
  ItemListTwo(
      icons: const Icon(
        Icons.payment_outlined,
        color: Colors.white,
      ),
      colors: Colors.indigo.shade700,
      texts: 'Extra  Charges'),
  ItemListTwo(
      icons: const Icon(
        Icons.format_align_left,
        color: Colors.white,
      ),
      colors: Colors.pink.shade900,
      texts: 'Order \nForm',
      newText: 'New'),
];
