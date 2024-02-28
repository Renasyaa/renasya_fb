import 'package:flutter/material.dart';
import 'package:renasya_fb/models/users.dart';
import 'package:renasya_fb/ui_screenss/crud/ctrl_crud.dart';
import 'package:renasya_fb/ui_screenss/crud/data_crud.dart';
// import 'package:simple_icons/simple_icons.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    color: Colors.orange[800], fontSize: 35, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
              ),
              // ignore: prefer_const_constructors
              TextSpan(
                  text: 'ize',
                  style: TextStyle(
                      color: Colors.brown[50], fontSize: 27, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold))
            ],
          ),
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
      //   title: const Text('Submit'),
      // ),
      body: Container(
        color: Colors.brown[50],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                onChanged: (value) {
                  setState(() {
                    isShowClear1 = value.isNotEmpty;
                  });
                },
                style: TextStyle(
                  color: Colors.brown[900],
                  fontWeight: FontWeight.bold,
                ),
                controller: ctrl1,
                decoration: InputDecoration(
                  suffixIcon: isShowClear1
                      ? IconButton(
                          onPressed: () {
                            ctrl1.clear();
                            setState(() {
                              isShowClear1 = false;
                            });
                          },
                          icon: Icon(
                            Icons.delete_outlined,
                            color: Colors.brown[900],
                          ),
                        )
                      : null,
                  labelText: 'Nama',
                  labelStyle: const TextStyle(color: Colors.brown),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    isShowClear2 = value.isNotEmpty;
                  });
                },
                style: TextStyle(color: Colors.brown[900], fontWeight: FontWeight.bold),
                controller: ctrl2,
                decoration: InputDecoration(
                  suffixIcon: isShowClear2
                      ? IconButton(
                          onPressed: () {
                            ctrl2.clear();
                            setState(() {
                              isShowClear2 = false;
                            });
                          },
                          icon: Icon(
                            Icons.delete_outlined,
                            color: Colors.brown[900],
                          ),
                        )
                      : null,
                  labelText: 'Umur',
                  labelStyle: const TextStyle(color: Colors.brown),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    isShowClear3 = value.isNotEmpty;
                  });
                },
                style: TextStyle(color: Colors.brown[900], fontWeight: FontWeight.bold),
                controller: ctrl3,
                decoration: InputDecoration(
                  suffixIcon: isShowClear3
                      ? IconButton(
                          onPressed: () {
                            ctrl3.clear();
                            setState(() {
                              isShowClear3 = false;
                            });
                          },
                          icon: Icon(
                            Icons.delete_outlined,
                            color: Colors.brown[900],
                          ))
                      : null,
                  labelText: 'Film',
                  labelStyle: const TextStyle(color: Colors.brown),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    isShowClear4 = value.isNotEmpty;
                  });
                },
                style: TextStyle(color: Colors.brown[900], fontWeight: FontWeight.bold),
                controller: ctrl4,
                decoration: InputDecoration(
                  suffixIcon: isShowClear4
                      ? IconButton(
                          onPressed: () {
                            ctrl4.clear();
                            setState(() {
                              isShowClear4 = false;
                            });
                          },
                          icon: Icon(
                            Icons.delete_outlined,
                            color: Colors.brown[900],
                          ))
                      : null,
                  labelText: 'Lagu',
                  labelStyle: const TextStyle(color: Colors.brown),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 20,
              ),
              // ElevatedButton(
              //     onPressed: () {
              //       ctrl1.clear();
              //       ctrl2.clear();
              //       ctrl3.clear();
              //       ctrl4.clear();
              //     },
              //     style: ElevatedButton.styleFrom(backgroundColor: Colors.brown[900]),
              //     child: Text(
              //       'Clear',
              //       style: TextStyle(color: Colors.brown[50]),
              //     )),
              // const SizedBox(
              //   height: 10,
              // ),
              ElevatedButton(
                onPressed: () async {
                  final id = UniqueKey().toString();
                  final valNama = ctrl1.text;
                  final valUmur = int.parse(ctrl2.text);
                  final valFilm = ctrl3.text;
                  final valLagu = ctrl4.text;

                  final newUser = UserX(
                    // createAt: DateTime.now().toString(),
                    createAt: DateTime.now().toString(),
                    id: id,
                    nama: valNama,
                    umur: valUmur,
                    film: valFilm,
                    lagu: valLagu,
                  );
                  // final data = {'nama': valNama, 'umur': valUmur, 'lagu': valFilm, 'film': valLagu};

                  setState(() {
                    itsLoading = true;
                  });
                  await create(newUser.toMap());
                  setState(() {
                    itsLoading = false;
                  });

                  ctrl1.clear();
                  ctrl2.clear();
                  ctrl3.clear();
                  ctrl4.clear();
                  // ignore: use_build_context_synchronously
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown[900],
                ),
                child: Text(
                  itsLoading ? 'Loading...' : 'Submit',
                  style: TextStyle(
                    color: Colors.brown[50],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
