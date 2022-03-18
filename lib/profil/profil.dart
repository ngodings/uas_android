import 'package:flutter/material.dart';
import 'package:uas_android/profil/field.dart';
import 'package:uas_android/profil/gambar.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color(0xFF20525C),
        elevation: 0.0,
        title: const Text(
          'Profil',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18.0,
            letterSpacing: 1.2,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: const [
              CircularPict(
                imagepath: "images/gantengku.jpg",
                icons: Icon(
                  Icons.camera,
                  color: Color(0xFF015D67),
                ),
              ),
              SizedBox(height: 20),
              RoundedLinePress(
                text: 'Nama Developer',
                icons: Icon(Icons.person),
              ),
              RoundedLinePress(
                  text: 'NPM', icons: Icon(Icons.person_pin_sharp)),
              RoundedLinePress(
                text: 'Kelas',
                icons: Icon(Icons.book),
              ),
              RoundedLinePress(
                text: 'Kontak',
                icons: Icon(Icons.phone),
              ),
              RoundedLinePress(
                text: 'Alamat',
                icons: Icon(Icons.home_filled),
              )
            ],
          ),
        ),
      ),
    );
  }
}
