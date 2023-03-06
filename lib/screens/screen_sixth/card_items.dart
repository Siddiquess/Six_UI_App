import 'package:flutter/material.dart';

class CardItems {
  Image images;
  String itemName;
  String itemRate;
  bool values;

  CardItems({
    required this.images,
    required this.itemName,
    required this.itemRate,
    required this.values
  });
}

List<CardItems> itemCard = [
  CardItems(
    images: Image.asset('assets/cup_2.webp'),
    itemName: 'Mug | Explore',
    itemRate: '₹799',
    values: true
  ),
  CardItems(
    images: Image.asset('assets/pants_3.webp'),
    itemName: 'Pants | Men',
    itemRate: '₹799',
    values: true
  ),
  CardItems(
    images: Image.asset('assets/pants_4.jpg'),
    itemName: 'Pants | Men',
    itemRate: '₹799',
    values: true
  ),
  CardItems(
    images: Image.asset('assets/shirt_6.webp'),
    itemName: 'Shirts | Men',
    itemRate: '₹799',
    values: true
  ),
  CardItems(
    images: Image.asset('assets/shoe_9.jpg'),
    itemName: 'Shoe | Men',
    itemRate: '₹799',
    values: true
  ),
  CardItems(
    images: Image.asset('assets/tshirt_1.jpg'),
    itemName: 'T-Shirt | Men',
    itemRate: '₹799',
    values: true
  ),
  CardItems(
    images: Image.asset('assets/shirt_5.webp'),
    itemName: 'Shirts | Men',
    itemRate: '₹799',
    values: true
  ),
  CardItems(
    images: Image.asset('assets/tshirt_8.webp'),
    itemName: 'T-Shirt | Men',
    itemRate: '₹799',
    values: true
  ),
  CardItems(
    images: Image.asset('assets/shirt_7.jpg'),
    itemName: 'Shirts | Men',
    itemRate: '₹799',
    values: true
  ),
  CardItems(
    images: Image.asset('assets/shoe_10.webp'),
    itemName: 'Shoe | Men',
    itemRate: '₹799',
    values: true
  ),
];
