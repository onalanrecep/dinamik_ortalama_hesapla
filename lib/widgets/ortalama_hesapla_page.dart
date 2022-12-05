import 'package:dinamik_ortalama_hesapla/constants/app_constants.dart';
import 'package:flutter/material.dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  const OrtalamaHesaplaPage({super.key});

  @override
  State<OrtalamaHesaplaPage> createState() => _OrtalamaHesaplaAppPageState();
}

class _OrtalamaHesaplaAppPageState extends State<OrtalamaHesaplaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          Sabitler.baslikText,
          style: Sabitler.baslikStyle,
        ),
      ),
      body: Center(
        child: Text('Merhaba'),
      ),
    );
  }
}
