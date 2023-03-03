import 'package:flutter/material.dart';

class ResponsidadeMediaQuery extends StatefulWidget {
  const ResponsidadeMediaQuery({super.key});

  @override
  State<ResponsidadeMediaQuery> createState() => _ResponsidadeMediaQueryState();
}

class _ResponsidadeMediaQueryState extends State<ResponsidadeMediaQuery> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsividade'),

      ),
      body: Container(
        width: largura,
        height: altura,
        color: Colors.red,
      ),
    );
  }
}