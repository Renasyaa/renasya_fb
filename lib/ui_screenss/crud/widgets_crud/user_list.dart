// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:renasya_fb/ui_screenss/crud/ctrl_crud.dart';
import 'package:renasya_fb/ui_screenss/crud/widgets_crud/user_detail.dart';
import 'package:renasya_fb/ui_screenss/crud/widgets_crud/user_input.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

// var id = 'one';

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Create(),
                ),
              );
            },
            // ignore: sort_child_properties_last
            child: Icon(
              Icons.add,
              color: Colors.brown[50],
            ),
            backgroundColor: Colors.brown[700],
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
              heroTag: null,
              onPressed: () {
                setState(() {});
              },
              // ignore: sort_child_properties_last
              child: Icon(
                Icons.refresh_sharp,
                color: Colors.brown[50],
              ),
              backgroundColor: Colors.brown[700]),
          const SizedBox(
            height: 10,
          ),
          // FloatingActionButton(
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => const Create(),
          //       ),
          //     );
          //   },
          //   // ignore: sort_child_properties_last
          //   child: Icon(
          //     Icons.add,
          //     color: Colors.brown[50],
          //   ),
          //   backgroundColor: Colors.brown[700],
          // )
        ],
      ),
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
        //     icon: const Icon(
        //       SimpleIcons.github,
        //     ),
        //     iconSize: 25,
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            FutureBuilder(
              future: getColl(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final length = snapshot.data!.length;
                  return Column(
                    children: [
                      ...List.generate(length, (index) {
                        //* buat final data
                        // final data = userList[index];
                        final id = snapshot.data![index].id;
                        final createAt = snapshot.data![index].createAt;
                        return Card(
                          child: ListTile(
                            tileColor: Colors.brown[900],
                            textColor: Colors.brown[50],
                            title: Text(snapshot.data![index].nama),
                            subtitle: Text(createAt),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Detail(id: id)),
                              );
                            },
                          ),
                        );
                      })
                    ],
                  );
                }
                return const Center(child: Text(''));
              },
            ),
          ],
        ),
      ),
    );
  }
}
