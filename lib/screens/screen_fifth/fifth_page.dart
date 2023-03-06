import 'package:flutter/material.dart';
import 'additional_info.dart';
import 'costomer_detail.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({super.key});

  static const TextStyle boldHeadStyle = TextStyle(fontWeight: FontWeight.bold);
  static const Color greenClr = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order #1688068'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sixth');
              },
              icon: const Icon(Icons.arrow_right))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('May 31, 05:42 PM'),
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 5,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Delivered',
                          style: TextStyle(
                              color: Color.fromARGB(255, 134, 132, 132)),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              const Divider(
                thickness: 1,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('1 ITEM'),
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.receipt,
                      ),
                      label: const Text('RECEIPT')),
                ],
              ),
              // =========================

              ListTile(
                  // Leading ---------------
                  leading: Image.asset('assets/tshirt_1.jpg'),

                  // Title -----------------
                  title: const Text('Explore | Men'),

                  // Subtitle --------------
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('1 piece'),
                      Text(
                        'Size: XL',
                        style: boldHeadStyle,
                      ),
                      Text(
                        '1 X ₹ 799',
                        style: boldHeadStyle,
                      )
                    ],
                  ),
                  //Trailing ------------
                  trailing: const Padding(
                    padding: EdgeInsets.only(top: 38.0),
                    child: Text('₹ 799'),
                  )),

              // ============== Divider ================ //
              const Divider(
                thickness: 1,
              ),

              // ------------- Third Box

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Item Total',
                          style: boldHeadStyle,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Delivery',
                          style: boldHeadStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Grand Total',
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          '₹ 799',
                          style: boldHeadStyle,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Free',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: greenClr),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '₹ 799',
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              //------------ 4th box
              const CustomerDetails(),
              const AdditionalInfo(),

              // =========================
            ],
          ),
        ),
      ),
    );
  }
}
