import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Bem-vindo ao Aplicativo!',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30),
        Image.network(
          'https://th.bing.com/th/id/OIP.q_NB5DIS8zMDqMPY7C31KAHaEK?r=0&o=7rm=3&rs=1&pid=ImgDetMain&o=7&rm=3',
          height: 200,
        ),
      ],
    );
  }
}

class NoticiasPage extends StatelessWidget {
  const NoticiasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> manchetes = [
      'Nova linguagem de programação pode substituir python em 2027',
      'Desenvolvedores criaram uma Inteligência Artificial que resolve bugs automaticamente',
      'Lançamento de nova marca celular que pode substituir todas as outras principais do mercado',
      'Cientistas descobrem novo fóssil de uma espécie desconhecida de dinossauros',
      'Alguns time de futebol sem o apoio de Bets pode enfrentar crises financeiras',
    ];

    return ListView.builder(
      itemCount: manchetes.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: ListTile(
            leading: const Icon(Icons.newspaper, color: Colors.green),
            title: Text(
              manchetes[index],
              style: const TextStyle(fontSize: 16),
            ),
          ),
        );
      },
    );
  }
}

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 70,
          // Link atualizado para uma imagem mais fiável
          backgroundImage: NetworkImage(
              'https://wallpapers.com/images/hd/cristiano-ronaldo-pictures-h4nmsss5mkctpwjw.jpg'),
        ),
        const SizedBox(height: 20),
        const Text(
          'Renan Nunes de Souza',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}