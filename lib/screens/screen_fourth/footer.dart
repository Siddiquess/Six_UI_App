import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  static const TextStyle qstnText = TextStyle(
    fontWeight: FontWeight.w500,
    color: Color.fromARGB(221, 49, 48, 48),
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          ListTile(
            title: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Need help ? Get in touch',
                style: qstnText,
              ),
            ),

            // Icon Buttons --------------------
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                outlineButtons(
                  'Live Chat',
                  const Icon(
                    Icons.chat_bubble_outline_outlined,
                    size: 33,
                    color: Color.fromARGB(190, 50, 49, 49),
                  ),
                ),
                outlineButtons(
                  'Phone Call',
                  const Icon(
                    Icons.call,
                    size: 33,
                    color: Color.fromARGB(150, 20, 19, 19),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 2,
          ),

          // Bottom Buttons -------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Select Domain',
                    style: TextStyle(fontSize: 17),
                  )),
              SizedBox(
                  width: 190,
                  height: 45,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue.shade700),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Get Premium',
                        style: TextStyle(fontSize: 17),
                      )))
            ],
          )
        ],
      ),
    );
  }

  outlineButtons(String txt, Widget icon) {
    return SizedBox(
      height: 100,
      width: 160,
      child: OutlinedButton(
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              Text(
                txt,
                style: qstnText,
              )
            ],
          )),
    );
  }
}
