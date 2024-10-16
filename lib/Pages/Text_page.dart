import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'json.dart';

class Simple extends StatefulWidget {
  const Simple({super.key});

  @override
  State<Simple> createState() => _SimpleState();
}

class _SimpleState extends State<Simple> {
  List<one> listone = [
    one(text: " PlayStation ", images:'',text2: "PlayStation (Japanese: プレイステーション, Hepburn:The first PlayStation console was released in Japan in December 1994, and worldwide the following year.[1] The original console in the series was the first console of any type to ship over 100 million units, doing so in under a decade.[2] Its successor, the PlayStation 2, was released in 2000; it is the best-selling home console to date, having reached over 155 million units sold by the end of 2012.[3] Sony's next console, the PlayStation 3, was released in 2006, selling over 87.4 million units by March 2017.[4] Sony's next console, the PlayStation 4, was released in 2013, selling a million units within a day, becoming the fastest selling console in history.[5] The latest console in the series, the PlayStation 5, was released in 2020[6] and sold 10 million units in its first 249 days, unseating its predecessor as the fastest-selling PlayStation console to-date.",text3: "",images2: ""),
    one(text: " Google Developers ", images:'',text2: "Google Developers (previously Google Code)specifically for developers. Google App Engine is a hosting service for web apps. Project Hosting gives users version control for open source code. Google Web Toolkit (GWT) allows developers to create Ajax applications in the Java programming language.(All languages)The site contains reference information for community based developer products that Google is involved with like Android from the Open Handset Alliance and OpenSocial from the OpenSocial Foundation.",text3: "",images2: ""),
    one(text: " Linux ", images:'',text2: "Linux  is a family of open-source Unix-like operating systems  software and libraries, many of which are provided by the GNU Project.Popular Linux distributions[16][17][18] include Debian, Fedora Linux, Arch Linux, and Ubuntu. Commercial distributions include Red Hat Enterprise Linux and SUSE Linux Enterprise. Desktop Linux distributions include a windowing system such as X11 or Wayland and a desktop environment such as GNOME, KDE Plasma or Xfce. Distributions intended for servers may not have a graphical user interface at all or include a solution stack such as LAMP. Many Linux distributions use the word Linux in their name, but the Free Software Foundation uses and recommends the name to emphasize the use and importance of GNU software in many distributions, causing some controversy.[19][20] Because Linux is freely redistributable, anyone may create a distribution for any purpose.[21]",text3: "",images2: ""),
    one(text: " Google Cloud ", images:'',text2: "Google Cloud Platform (GCP) is a suite of cloud Google Cloud Platform provides infrastructure as a service, platform as a service, and serverless computing environments.In April 2008, Google announced App Engine, a platform for developing and hosting web applications in Google-managed data centers, which was the first cloud computing service from the company. The service became generally available in November 2011. Since the announcement of App Engine, Google added multiple cloud services to the platform.",text3: "",images2: ""),
    one(text: " UX Design ", images:'',text2: "User experience design (UX design, UXD, UED, or XD),  Unlike user interface design, which focuses solely on the design of a computer interface, UX design encompasses all aspects of a user's perceived experience with a product or website, such as its usability, usefulness, desirability, brand perception, and overall performance. UX design is also an element of the customer experience (CX), and encompasses all design aspects and design stages that are around a customer's experience.[3]",text3: "",images2: ""),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return Card(
          semanticContainer: true,
          color: Colors.blue,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(listone[index].text,style: TextStyle(fontSize: 25),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text( listone[index].text2,style: TextStyle(fontSize: 15),
                ),
              ),
              const IconButton(onPressed: shareContent3, icon:Icon(Icons.share))
            ],
          ),
        );
      },
shrinkWrap: true,
        itemCount: listone.length,
      ),
    );
  }
}
void shareContent3() {
  Share.shareUri(Uri(path: "https://github.com/BhaveshYennam76"));
}
