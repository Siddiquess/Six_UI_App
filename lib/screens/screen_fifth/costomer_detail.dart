
import 'package:flutter/material.dart';

class CustomerDetails extends StatelessWidget {
  const CustomerDetails({super.key});
  static const TextStyle boldHeadStyle = TextStyle(fontWeight: FontWeight.bold);
  static TextStyle hashTextClr = TextStyle(color: Colors.grey.shade500);
  static const Color greenClr = Colors.green;
  static const Color blueClr = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ---------- Row 1
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'CUSTEMOR DETAILS',
                style: hashTextClr,
              ),
              
              TextButton.icon(onPressed: (){}, icon:const Icon(Icons.share_outlined,), label: const Text('SHARE'))
             
            ],
          ),

          //---------- Row 2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Siddique',
                    style: boldHeadStyle,
                  ),
                  Text(
                    '+91-9876543321',
                  )
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.call,
                    color: blueClr,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.whatsapp,
                    color: greenClr,
                    size: 30,
                  ),
                ],
              )
            ],
          ),

          //------------- Row 3
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Adress', style: boldHeadStyle),
                  Text('D 1101 Chartered Beverly'),
                  Text('Hills,Nadapuram,Valayam P.O')
                ],
              ),
            ],
          ),

          // -------------- Row 4
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('City', style: boldHeadStyle),
                  Text('Bangalore'),
                ],
              ),
              const SizedBox(
                width: 80,
              ),
              Column(
                children: const [
                  Text('Pincode', style: boldHeadStyle),
                  Text('673517'),
                ],
              )
            ],
          ),

          // -------------- Row 5
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Payment', style: boldHeadStyle),
                  Text('Online'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 40,
                  height: 20,
                  child: ColoredBox(
                    color: Colors.green.shade100,
                    child: const Center(
                      child:  Text('PAID',
                          style: TextStyle(
                              color: greenClr, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              )
            ],
          ),

          const Divider(
            thickness: 1,
          )
        ],
      ),
    );
  }
}
