import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:simple_icons/simple_icons.dart';
// import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const ScreenFirestore());
}

class ScreenFirestore extends StatelessWidget {
  const ScreenFirestore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        backgroundColor: Colors.brown[900],
        title: RichText(
          text: TextSpan(
              text: 'Shop',
              style: TextStyle(
                color: Colors.brown[50],
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '(W)',
                  style: TextStyle(
                      color: Colors.orange[800],
                      fontSize: 35,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
                // ignore: prefer_const_constructors
                TextSpan(
                    text: 'ize',
                    style: TextStyle(
                        color: Colors.brown[50],
                        fontSize: 27,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold))
              ]),
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () async {
        //       Uri url = Uri.parse('https://console.firebase.google.com/project/renasya-fb');
        //       if (await canLaunchUrl(url)) {
        //         await launchUrl(url);
        //       }
        //     },
        //     icon: const Icon(
        //       SimpleIcons.firebase,
        //     ),
        //     iconSize: 25,
        //   ),
        //   IconButton(
        //     onPressed: () async {
        //       Uri url = Uri.parse('https://github.com/Renasyaa/renasya_prefb');
        //       if (await canLaunchUrl(url)) {
        //         await launchUrl(url);
        //       }
        //     },
        //     icon: const Icon(SimpleIcons.github),
        //     iconSize: 25,
        //   ),
        // ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () async {
                await FirebaseFirestore.instance
                    .collection('cobasatu')
                    .doc('one')
                    .set({'nama': 'Rere', 'umur': 16, 'film': 'spider', 'lagu': 'oursong'});
              },
              child: const Text('Create'),
            ),
            OutlinedButton(
              onPressed: () async {
                final result = await FirebaseFirestore.instance.collection('cobasatu').get();
                debugPrint(result.toString());
                debugPrint(result.docs.toString());
                debugPrint(result.docs[0].id.toString());
                debugPrint(result.docs[0].data().toString());
                debugPrint(result.docs[0].data().runtimeType.toString());
                debugPrint(result.docs[0].data()['nama']);
              },
              child: const Text('Read'),
            ),
            OutlinedButton(
              onPressed: () async {
                await FirebaseFirestore.instance
                    .collection('cobasatu')
                    .doc('one')
                    .update({'nama': 'Nana', 'umur': 15, 'film': 'man', 'lagu': 'you'});
              },
              child: const Text('Update'),
            ),
            OutlinedButton(
              onPressed: () async {
                await FirebaseFirestore.instance.collection('cobasatu').doc('one').delete();
              },
              child: const Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
