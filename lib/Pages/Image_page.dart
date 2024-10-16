import 'package:flutter/material.dart';
import 'json.dart';
import 'package:share_plus/share_plus.dart';
class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => _PostsState();
}
class _PostsState extends State<Posts> {
  List<one> listone = [
    one(
        text: " @PlayStation.13h",
        images: 'assets/images/ps.jpeg',
        text2: "The PlayStation Plus Monthly Games for May are:",
        text3: "⚽ EA Sports FC 24👟⚔️ Ghostrunner 2🦊 Tunic🏄 ",
        images2: "assets/images/prof1.jpg"),
    one(
        text: " @googledevs.May 1",
        images: 'assets/images/twit2.jpeg',
        text2: "🔊 Gemini 1.5 allowing you files directly into",
        text3: " your prompts.",
        images2: "assets/images/prof2.jpg"),
    one(
        text: " @linuxopsys.May 1",
        images: 'assets/images/twit3.jpeg',
        text2: "What's stopping you from using Linux🐧.",
        text3: "Linux",
        images2: "assets/images/prof3.jpg"),
    one(
        text: " @googlecloud.Apr 30 ",
        images: 'assets/images/twit4.jpeg',
        text2: "📣 Announcing a new collaboration with@SuiNetwork,",
        text3: " AI-powered applications ↓",
        images2: "assets/images/prof4.jpg"),
    one(
        text: " @uxdesigncc.Apr 30",
        images: 'assets/images/twit5.jpeg',
        text2: "Maintaining a design system in Figma.",
        text3: "Machine Learning",
        images2: "assets/images/prof5.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: ListView.builder(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                            backgroundImage:
                                AssetImage(listone[index].images2)),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(listone[index].text),
                            ],
                          ),
                          Text(listone[index].text2),
                          Text(listone[index].text3),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 250,
                    width: 450,
                    child: Image(
                        // width: MediaQuery.of(context).size.width / 1.2,
                        // height: 380,
                         image: AssetImage(listone[index].images)),
                  ),
                 const IconButton(onPressed: shareContent, icon:Icon(Icons.share)),
                ],
              );
            },
            itemCount: listone.length,
            shrinkWrap: true),
      ),
    );
  }
}

void shareContent() {
  Share.shareUri(Uri(path: "https://github.com/BhaveshYennam76"));
}