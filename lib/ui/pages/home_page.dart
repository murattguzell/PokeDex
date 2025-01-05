import 'package:flutter/material.dart';
import 'package:poke_dex/ui/widgets/app_title.dart';

import '../widgets/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          AppTitle(),
          Expanded(child: PokemonList()),
        ],
      ),
    );
  }
}
