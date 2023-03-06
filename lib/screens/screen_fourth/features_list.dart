import 'package:flutter/material.dart';

class FeaturesList {
  String heading;
  String content;
  Widget avatarIcon;

  FeaturesList({
    required this.heading,
    required this.content,
    required this.avatarIcon,
  });
}

List<FeaturesList> listFeature = [
  FeaturesList(
    heading: 'Custom domine name',
    content:
        'Get your own custom domain and build \nyour brand on the internet.',
    avatarIcon: const Icon(Icons.language),
  ),
  FeaturesList(
    heading: 'Verified seller badge',
    content: 'Get blue verified badge under your \nstore name and build trust.',
    avatarIcon: const Icon(Icons.verified),
  ),
  FeaturesList(
    heading: 'Dukan for PC',
    content: 'Access all the exclusive premium \nfeatures on Dukaan for PC.',
    avatarIcon: const Icon(Icons.laptop),
  ),
  FeaturesList(
    heading: 'Priority support',
    content:
        'Get your questians resolved with our \npriority customer support.',
    avatarIcon: const Icon(Icons.headphones),
  ),
];

class ListOne extends StatelessWidget {
  const ListOne({super.key});
  static const TextStyle headWidth = TextStyle(fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemExtent: 70,
      itemCount: listFeature.length,
      itemBuilder: (context, index) {
        FeaturesList data = listFeature[index];
        return ListTile(
          leading: CircleAvatar(
            radius: 25,
            child: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.white,
              child: data.avatarIcon,
            ),
          ),
          title: Text(
            data.heading,
            style: headWidth,
          ),
          subtitle: Text(data.content),
        );
      },
    );
  }
}
