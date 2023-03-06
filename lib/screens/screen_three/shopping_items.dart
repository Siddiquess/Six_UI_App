import 'package:flutter/cupertino.dart';

class ShoppingItems {
  Image itemImage;
  String orderId;
  String itemRate;
  String orderDate;
  String depositDetail;

  ShoppingItems({
    required this.itemImage,
    required this.orderId,
    required this.itemRate,
    required this.orderDate,
    required this.depositDetail,
  });
}

List<ShoppingItems> tileList = [
  ShoppingItems(
      itemImage: const Image(image: AssetImage('assets/tshirt_1.jpg')),
      orderId: 'Order #1645678',
      itemRate: '₹799',
      orderDate: 'Apr 12, 11:54 AM',
      depositDetail: '₹799 deposited to: 5889987655556000'),
  ShoppingItems(
      itemImage: const Image(image: AssetImage('assets/cup_2.webp')),
      orderId: 'Order #1345678',
      itemRate: '₹395.99',
      orderDate: 'Apr 12, 11:54 AM',
      depositDetail: '₹395.99 deposited to: 5889987655556000'),
  ShoppingItems(
      itemImage: const Image(image: AssetImage('assets/pants_3.webp')),
      orderId: 'Order #1445678',
      itemRate: '₹699',
      orderDate: 'Apr 12, 11:54 AM',
      depositDetail: '₹699 deposited to: 5889987655556000'),
  ShoppingItems(
      itemImage: const Image(image: AssetImage('assets/shoe_9.jpg')),
      orderId: 'Order #1167898',
      itemRate: '₹999',
      orderDate: 'Apr 12, 11:54 AM',
      depositDetail: '₹999 deposited to: 5889987655556000'),
  ShoppingItems(
      itemImage: const Image(image: AssetImage('assets/tshirt_8.webp')),
      orderId: 'Order #1245678',
      itemRate: '₹1200',
      orderDate: 'Apr 12, 11:54 AM',
      depositDetail: '1200 ₹deposited to: 5889987655556000'),
  ShoppingItems(
      itemImage: const Image(image: AssetImage('assets/shirt_5.webp')),
      orderId: 'Order #1643332',
      itemRate: '₹1722.75',
      orderDate: 'Apr 12, 11:54 AM',
      depositDetail: '₹1722.75 deposited to: 5889987655556000'),
  ShoppingItems(
      itemImage: const Image(image: AssetImage('assets/shirt_6.webp')),
      orderId: 'Order #2345678',
      itemRate: '₹1399',
      orderDate: 'Apr 12, 11:54 AM',
      depositDetail: '₹1399 deposited to: 5889987655556000'),
  ShoppingItems(
      itemImage: const Image(image: AssetImage('assets/shirt_7.jpg')),
      orderId: 'Order #1545678',
      itemRate: '₹499',
      orderDate: 'Apr 12, 11:54 AM',
      depositDetail: '₹499 deposited to: 5889987655556000'),
  ShoppingItems(
      itemImage: const Image(image: AssetImage('assets/pants_4.jpg')),
      orderId: 'Order #1045678',
      itemRate: '₹2999',
      orderDate: 'Apr 12, 11:54 AM',
      depositDetail: '₹2999 deposited to: 5889987655556000'),
  ShoppingItems(
      itemImage: const Image(image: AssetImage('assets/shoe_10.webp')),
      orderId: 'Order #1276788',
      itemRate: '₹699',
      orderDate: 'Apr 12, 11:54 AM',
      depositDetail: '₹699 deposited to: 5889987655556000'),
];
