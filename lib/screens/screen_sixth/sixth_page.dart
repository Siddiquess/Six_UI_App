import 'package:flutter/material.dart';
import 'package:six_ui_app/screens/screen_sixth/card_items.dart';

class SixthPage extends StatelessWidget {
  const SixthPage({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier isSwitched = ValueNotifier(false);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // ============== App Bar and Tab Bar ================ //
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              child: Text(
                'Products',
                style: TextStyle(fontSize: 17),
              ),
            ),
            Tab(
              child: Text(
                'Catagories',
                style: TextStyle(fontSize: 17),
              ),
            )
          ]),
          title: const Text('Catalogue'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),

        // ================ Body ================ //
        body: TabBarView(children: [
          ValueListenableBuilder(
              valueListenable: isSwitched,
              builder: (context, index, child) {
                return Container(
                  color: const Color.fromARGB(240, 239, 242, 243),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ListView.builder(
                        itemCount: itemCard.length,
                        itemBuilder: (context, index) {
                          final data = itemCard[index];
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                              height: 162,
                              // ================== Card =============== //
                              child: Card(
                                child: Column(
                                  children: [
                                    // ============== List Tile =============== //
                                    SizedBox(
                                      height: 90,
                                      child: ListTile(
                                        // Leading ---------------
                                        leading: data.images,

                                        // Title -----------------
                                        title: Text(data.itemName),

                                        // Subtitle --------------
                                        subtitle: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text('1 piece'),
                                            Text(
                                              data.itemRate,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w900),
                                            ),
                                            const Text(
                                              'In stock',
                                              style: TextStyle(
                                                  color: Colors.green),
                                            )
                                          ],
                                        ),
                                        //Trailing ------------
                                        trailing: Column(
                                          children: [
                                            IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.more_vert),
                                            ),

                                            // Switch -----------
                                            SizedBox(
                                                height: 8,
                                                child: Switch(
                                                    value: data.values,
                                                    onChanged: (value) {
                                                      data.values = value;
                                                      isSwitched.value =
                                                          data.values;
                                                      isSwitched
                                                          .notifyListeners();

                                                    
                                                    }))
                                          ],
                                        ),
                                      ),
                                    ),

                                    //  Divider -----------------
                                    const Divider(
                                      thickness: 1,
                                    ),
                                    // Bottom -------------------
                                    TextButton.icon(
                                        style: ButtonStyle(
                                            foregroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.black)),
                                        onPressed: () {},
                                        icon: const Icon(Icons.share_outlined),
                                        label: const Text('Share Product'))
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                );
              }),
          const Center(
              child: Text(
            'Catagories',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ))
        ]),
      ),
    );
  }
}
