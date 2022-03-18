import 'package:flutter/material.dart';
import 'package:uas_android/persegi/hasil_persegi.dart';

class Persegi extends StatefulWidget {
  const Persegi({Key? key}) : super(key: key);

  @override
  _PersegiState createState() => _PersegiState();
}

class _PersegiState extends State<Persegi> {
  final TextEditingController _panjangController = TextEditingController();
  final TextEditingController _lebarController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: const Color(0xFF20525C),
        elevation: 0.0,
        title: const Text(
          'Persegi',
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
              buildPanjangField(),
              const SizedBox(height: 10),
              buildLebarField(),
              const SizedBox(height: 10),
              DefaultButton(
                text: "Hasil",
                press: () {
                  String? lebar = _lebarController.text;
                  String? panjang = _panjangController.text;

                  double doubleLebar = double.parse(lebar);
                  double doublePanjang = double.parse(panjang);
                  double hasilLuas = doubleLebar * doublePanjang;

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HasilPersegi(
                              luasPersegi: hasilLuas.toStringAsFixed(2))));
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  TextFormField buildPanjangField() {
    return TextFormField(
      controller: _panjangController,
      decoration: InputDecoration(
        labelText: "Panjang Persegi",
        labelStyle: const TextStyle(color: Colors.teal),
        hintText: "Tulis panjang persegi!",
        hintStyle: const TextStyle(color: Colors.grey),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const Icon(Icons.book),
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

  TextFormField buildLebarField() {
    return TextFormField(
      controller: _lebarController,
      decoration: InputDecoration(
        labelText: "Lebar Persegi",
        labelStyle: const TextStyle(color: Colors.teal),
        hintText: "Tulis lebar persegi!",
        hintStyle: const TextStyle(color: Colors.grey),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: const Icon(Icons.book),
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

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
          backgroundColor: Colors.teal,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
