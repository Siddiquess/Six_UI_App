import 'package:flutter/material.dart';
import 'tab_buttons.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Payments'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/fourth');
                },
                icon: const Icon(Icons.info))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              SizedBox(
                width: 400,
                height: 200,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'Transaction Limit',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        const Text(
                            'A free limit up to which you will recieve \nthe online payments directly in your bank'),

                        // Linear Progress bar --------------------
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TweenAnimationBuilder(
                                tween: Tween(end: 0.75),
                                duration: const Duration(seconds: 5),
                                builder: ((context, value, child) =>
                                    LinearProgressIndicator(
                                      color: Colors.amber,
                                      value: value,
                                      backgroundColor: Colors.black12,
                                    ))),
                            const Text(
                              '36,668 left out of  ₹50,000',
                              style: TextStyle(color: Colors.black45),
                            )
                          ],
                        ),

                        // Elevated Button ------------------------
                        ElevatedButton(
                            onPressed: () {},
                            child: const Text('Increase limit'))
                      ],
                    ),
                  ),
                ),
              ),

              listTiles('Default Method', 'Online Payment',
                  const Icon(Icons.chevron_right)),
              listTiles('Payment Profile', 'Bank Account',
                  const Icon(Icons.chevron_right)),
              const Divider(color: Colors.grey),
              Column(
                children: [
                  listTiles(
                    'Payments Overview',
                    'Life Time',
                    const Icon(Icons.expand_more),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      coloredContainer(
                          'AMOUNT ON HOLD', '₹ 0', Colors.orange.shade800),
                      coloredContainer(
                          'AMOUNT RECEIVED', '₹ 13,332', Colors.green.shade800)
                    ],
                  ),
                ],
              ),

              // Three Buttons -----------------

              const TabButtonPage(),
            ],
          ),
        ));
  }

  listTiles(String leftText, String rightText, Widget rightIcon) {
    return ListTile(
      leading: Text(leftText),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(rightText),
          rightIcon,
        ],
      ),
    );
  }

  coloredContainer(String heading, String amount, Color color) {
    return SizedBox(
      width: 180,
      height: 90,
      child: Card(
        color: color,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                heading,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                amount,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
