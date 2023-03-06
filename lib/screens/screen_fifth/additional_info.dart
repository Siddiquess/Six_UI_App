import 'package:flutter/material.dart';

class AdditionalInfo extends StatelessWidget {
  const AdditionalInfo({super.key});
  static const TextStyle boldHeadStyle = TextStyle(fontWeight: FontWeight.bold);
  static  TextStyle hashTextClr = TextStyle(color: Colors.grey.shade500);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
      
        children: [
           Text('ADDITIONAL INFORMATION',style: hashTextClr,),
          const SizedBox(height: 20,),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children:const [
               Text('State',style: boldHeadStyle,),
               Text('Kerala')
             ],
           ),
         const  SizedBox(height: 20,),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children:const [
               Text('Email',style: boldHeadStyle,),
               Text('Siddique@gmail.com')
             ],
           ),
         const  SizedBox(height: 20,),
           OutlinedButton(
            style:OutlinedButton.styleFrom(
              side:const BorderSide( color: Colors.blue)
            ),
            onPressed: (){}, child:const Text('Share receipt')),
        ],
      ),
    );
  }
}
