import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset(
            'images/logo.png',
            fit: BoxFit.contain,
          ),
          Expanded(child: Container()),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_rounded)),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.lightBlueAccent),
            child: const Text('Cadastrar'),
          ),
          const SizedBox(
            height: 10,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.yellow),
            child: const Text('Entrar'),
          ),
        ],
      ),
    );
  }
}
