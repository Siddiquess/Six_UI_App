
import 'package:flutter/material.dart';
import 'package:six_ui_app/screens/screen_one/item_list.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const Text('Additional information'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/secndbtm');
                },
                icon:const Icon(Icons.arrow_forward))
          ],
        ),
        body: ListView.builder(
            itemCount: itemList.length,
            itemBuilder: ((context, index) {
              final data = itemList[index];
              return ListTile(
                leading: data.icons,
                title: Text(data.items),
                trailing: data.right,
              );
            })),
           
            );
  }
}
