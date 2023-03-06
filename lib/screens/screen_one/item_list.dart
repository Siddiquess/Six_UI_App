import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemListOne {
  Widget icons;
  String items;
  Widget? right;

  ItemListOne({required this.icons, required this.items, this.right});
}

ValueNotifier<bool> isSwitched = ValueNotifier(true);

void switched(value) {
  isSwitched.value = value;
}

List<ItemListOne> itemList = [
  ItemListOne(
      icons: const Icon(Icons.share),
      items: 'Share Dukaan App',
      right: const Icon(Icons.chevron_right)),
  ItemListOne(
      icons: const Icon(Icons.language),
      items: "Change Language",
      right: const Icon(Icons.chevron_right)),
  ItemListOne(
    icons: const Icon(Icons.whatsapp),
    items: 'WhatsApp Chat Support',
    right: ValueListenableBuilder(
        valueListenable: isSwitched,
        builder: (context, changes, child) {
          return CupertinoSwitch(
              value: isSwitched.value, onChanged: ((value) => switched(value)));
          // Switch(value: isSwitched.value, onChanged: ((value) => switched(value)));
        }),
  ),
  ItemListOne(icons: const Icon(Icons.lock_outline), items: 'Privacy Policy'),
  ItemListOne(icons: const Icon(Icons.star_outline), items: 'Rate Us'),
  ItemListOne(icons: const Icon(Icons.logout), items: 'Sign Out')
];
