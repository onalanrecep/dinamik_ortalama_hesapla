import 'package:dinamik_ortalama_hesapla/constants/app_constants.dart';
import 'package:flutter/material.dart';

class OrtalamaHesaplaPage extends StatefulWidget {
  const OrtalamaHesaplaPage({super.key});

  @override
  State<OrtalamaHesaplaPage> createState() => _OrtalamaHesaplaAppPageState();
}

class _OrtalamaHesaplaAppPageState extends State<OrtalamaHesaplaPage> {
  GlobalKey formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: Text(
              Sabitler.baslikText,
              style: Sabitler.baslikStyle,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: _buildFom(),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text('Ortalama'),
                    color: Colors.yellow,
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                child: Text('Liste buraya gelecek'),
                color: Colors.blue,
              ),
            )
          ],
        ));
  }

  _buildFom() {
    return Form(
      key: formKey,
      child: Column(
        children: [
          _buildTextFormField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
              ),
            ],
          )
        ],
      ),
    );
  }

  _buildTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'Matematik',
          border: OutlineInputBorder(borderRadius: Sabitler.borderRadius),
          filled: true,
          fillColor: Sabitler.anaRenk.shade100.withOpacity(0.3)),
    );
  }
}
