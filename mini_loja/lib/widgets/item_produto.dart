import 'package:flutter/material.dart';

class ItemProduto extends StatelessWidget {
  String? descricao;
  String? preco;
  String? imagem;

  ItemProduto({this.descricao, this.preco, this.imagem});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
        color: Colors.white
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(5),
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Image.asset(
              "images/${imagem!}",
              fit: BoxFit.contain,
            ),
          ),
          Text(descricao!),
          Text('R\$ ${preco!}')
        ],
      ),
    );
  }
}
