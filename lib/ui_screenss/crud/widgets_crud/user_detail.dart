import 'package:flutter/material.dart';
import 'package:renasya_fb/ui_screenss/crud/ctrl_crud.dart';
// import 'package:simple_icons/simple_icons.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key, required this.id}) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        backgroundColor: Colors.brown[900],
        title: RichText(
          text: TextSpan(
              text: 'Coff',
              style: TextStyle(
                color: Colors.brown[50],
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '(R)',
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
        //       Uri url = Uri.parse('https://console.firebase.google.com/project/renasya-prefb');
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
      // appBar: AppBar(
      //   title: const Text('Detail'),
      // ),
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: getDoc(id),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Text(
                  'Loading...',
                  style: TextStyle(color: Colors.brown[900], fontWeight: FontWeight.bold, fontSize: 25),
                ),
              );
            }
            if (snapshot.hasData) {
              final x = snapshot.data!;
              // final x = snapshot.data!;
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.brown[900],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.all(10),
                      child: Text(
                        x.nama,
                        style: TextStyle(
                          color: Colors.brown[50],
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.brown[900],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.all(10),
                      child: Text(
                        x.umur.toString(),
                        style: TextStyle(
                          color: Colors.brown[50],
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.brown[900],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.all(10),
                      child: Text(
                        x.film,
                        style: TextStyle(
                          color: Colors.brown[50],
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.brown[900],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: const EdgeInsets.all(10),
                      child: Text(
                        x.lagu,
                        style: TextStyle(
                          color: Colors.brown[50],
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
            return const Text('');
          },
        ),
      ),
    );
  }
}
