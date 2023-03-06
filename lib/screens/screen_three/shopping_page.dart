import 'package:flutter/material.dart';
import 'package:six_ui_app/screens/screen_three/shopping_items.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemBuilder: ((context, index) {
        final data = tileList[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: data.itemImage,
              title: Text(data.orderId,
                  style: const TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text(data.orderDate),
              trailing: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    data.itemRate,
                    style: const TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: Colors.green,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Successful',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
            ),
            Text(
              data.depositDetail,
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            )
          ],
        );
      }),
      separatorBuilder: ((context, index) => const Divider(
            thickness: 1,
          )),
      itemCount: tileList.length,
    );
  }
}
