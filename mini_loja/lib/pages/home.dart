import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mini_loja/widgets/item_produto.dart';
import 'package:mini_loja/widgets/mobile_appBar.dart';
import 'package:mini_loja/widgets/web_appBar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _ajustarVisualizacao(double largura) {
    int colunas = 0;
    if (largura <= 600) {
      colunas = 2;
    } else if (largura <= 960) {
      colunas = 4;
    } else {
      colunas = 8;
    }
    return colunas;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final largura = constraints.maxWidth;
      final alturaBarra = AppBar().preferredSize.height;

      return Scaffold(
        appBar: largura < 600
            ? PreferredSize(
                child: MobileAppBar(),
                preferredSize: Size(largura, alturaBarra))
            : PreferredSize(
                child: WebAppBar(),
                preferredSize: Size(largura, alturaBarra),
              ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: GridView.count(
            crossAxisCount: _ajustarVisualizacao(largura),
            children: [
              ItemProduto(descricao: 'Produto teste', preco: '2.500', imagem: 'p1.jpg' ),
              ItemProduto(descricao: 'Produto teste', preco: '2.500', imagem: 'p2.jpg' ),
              ItemProduto(descricao: 'Produto teste', preco: '2.500', imagem: 'p3.jpg' ),
              ItemProduto(descricao: 'Produto teste', preco: '2.500', imagem: 'p4.jpg' ),
              ItemProduto(descricao: 'Produto teste', preco: '2.500', imagem: 'p5.jpg' ),
              ItemProduto(descricao: 'Produto teste', preco: '2.500', imagem: 'p6.jpg' ),
            ],
          ),
        ),
      );
    });
  }
}
