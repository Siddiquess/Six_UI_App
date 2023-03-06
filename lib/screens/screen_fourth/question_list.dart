import 'package:flutter/material.dart';


class Questions {
  String qstn;
  Questions({required this.qstn});
}

List<Questions> qstnList = [
  Questions(qstn: 'What is your refund policy?'),
  Questions(qstn: 'Will there be an automatic charge after \nthe paid trial?'),
  Questions(qstn: 'What payment method do you offer?'),
  Questions(qstn: 'What happens when my free trial ends?'),
  Questions(qstn: 'What are the terms for the custom domain?'),
];

class QustionList extends StatelessWidget {
  const QustionList({super.key});

  static const TextStyle qstnText = TextStyle(
      fontWeight: FontWeight.w500, color: Color.fromARGB(221, 49, 48, 48));

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Divider(
          thickness: 1,
        ),
      ),
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: qstnList.length,
      itemBuilder: (context, index) {
        final data = qstnList[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: SizedBox(
            height: 45,
            child: ListTile(
              onTap: () {},
              leading: Text(
                data.qstn,
                style: qstnText,
              ),
              trailing: const Icon(Icons.add),
            ),
          ),
        );
      },
    );
  }
}
