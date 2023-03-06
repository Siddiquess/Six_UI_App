import 'package:flutter/material.dart';
import 'package:six_ui_app/screens/screen_fourth/features_list.dart';
import 'package:six_ui_app/screens/screen_fourth/footer.dart';
import 'question_list.dart';
import 'youtube_video.dart';



class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  final String headtitle = 'What types of bussiness can use Dukaan \nPremim?';
  static const TextStyle qstnText = TextStyle(
    fontWeight: FontWeight.w500,
    color: Color.fromARGB(221, 49, 48, 48),
  );
  static const TextStyle headWidth = TextStyle(fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar --------------------
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue.shade700,
        title: const Text('Dukaan Premium'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/fifth'),
              icon: const Icon(Icons.arrow_right))
        ],
      ),
      body: Stack(children: [
        // Feature -----------------
        ListView(children: [
          const Padding(
            padding: EdgeInsets.only(top: 200),
            child: ListTile(
              leading: Text(
                'Features',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
          ),
          const ListOne(),
          const Divider(
            thickness: 2,
          ),

          // Youtube Video --------------
          // const Padding(
          //   padding:  EdgeInsets.all(10),
          //   child:  YoutubeVideo(),
          // ),

          const Divider(
            thickness: 2,
          ),

          // Questions -------------------

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Column(
              children: [
                ListTile(
                  title: const Text('Frequenty asked questions'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(headtitle, style: qstnText),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Text(cntnt()),
                      ),
                    ],
                  ),
                  trailing: const Icon(Icons.remove),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17),
                  child: Divider(
                    thickness: 1,
                  ),
                )
              ],
            ),
          ),

          const QustionList(),
          const Divider(thickness: 2),
          const Footer(),
        ]),

        // Container App bar -------------
        Container(color: Colors.white, height: 185),
        Container(color: Colors.blue.shade700, height: 95),

        //  Card ------------------
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
          child: SizedBox(
            height: 190,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(child: Icon(Icons.local_mall)),
                      const SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(top:13.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              'dukaan',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              'PREMIUM',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const Text(
                    'Get Dukaan Premium for just\n₹4,999/year',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'All the advanced features for scrolling your \nbuisiness',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }

  String cntnt() {
    return '''Dukaan caters to a wide verity of sellers. Be it a
small grocery store or a big legecy brand.anyone
who wants to sell their products/service online-
Dukaan is the perfect platfore for you''';
  }
}
