import 'package:flutter/material.dart';
import 'package:six_ui_app/screens/screen_two/item_list_two.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 229, 230, 231),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                mainAxisExtent: 120,
              ),
              itemCount: cardItems.length,
              itemBuilder: ((context, index) {
                ItemListTwo data = cardItems[index];
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: data.colors,
                              ),
                              child: data.icons,
                            ),
                            if (index == 6)
                              Container(
                                width: 40,
                                height: 22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.green,
                                ),
                                child: Center(
                                    child: Text(
                                  data.newText!,
                                  style: const TextStyle(color: Colors.white),
                                )),
                              ),
                          ],
                        ),
                        SizedBox(
                            width: 110,
                            child: Text(
                              data.texts,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ))
                      ],
                    ),
                  ),
                );
              })),
        ),
      ),
      // bottomNavigationBar: BottomNavBar(),
    );
  }
}
