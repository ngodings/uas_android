import 'package:flutter/material.dart';
import 'package:uas_android/lingkaran/hasil_lingkaran.dart';
import 'package:uas_android/persegi/persegi.dart';

class Lingkaran extends StatefulWidget {
  const Lingkaran({Key? key}) : super(key: key);

  @override
  _LingkaranState createState() => _LingkaranState();
}

class _LingkaranState extends State<Lingkaran> {
  final TextEditingController _jarijariController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color(0xFF20525C),
        elevation: 0.0,
        title: const Text(
          'Lingkaran',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18.0,
            letterSpacing: 1.2,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 10),
              buildJariJariField(),
              const SizedBox(height: 10),
              DefaultButton(
                text: "Hasil",
                press: () {
                  String? jari = _jarijariController.text;
                  double doubleJari = double.parse(jari);
                  double hasilLuas = (doubleJari * doubleJari) * 22 / 7;

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HasilLingkaran(
                              luasLingkaran: hasilLuas.toStringAsFixed(2))));
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  TextFormField buildJariJariField() {
    return TextFormField(
      controller: _jarijariController,
      decoration: InputDecoration(
        labelText: "Jari-jari Lingkaran",
        labelStyle: const TextStyle(color: Colors.teal),
        hintText: "Tulis Jari-jari Lingkaran!",
        hintStyle: const TextStyle(color: Colors.grey),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const Icon(Icons.circle),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue, width: 1.0),
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      keyboardType: TextInputType.number,
    );
  }
}
