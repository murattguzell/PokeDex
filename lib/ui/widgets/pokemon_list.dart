import 'package:flutter/material.dart';
import 'package:poke_dex/data/entitity/poke_dex.dart';
import 'package:poke_dex/services/pokemon_api.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokeDex>> pokemonList;

  @override
  void initState() {
    super.initState();
    pokemonList = PokemonApi.getPokemon();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: pokemonList,
          builder: (context, snapShot) {
            if (snapShot.hasData) {
              List<PokeDex> pokemons = snapShot.data!;
              return ListView.builder(
                itemCount: pokemons.length,
                itemBuilder: (context, index) {
                  var currentPokemon = pokemons[index];
                  return ListTile(
                    title: Text(currentPokemon.name!),
                  );
                },
              );
            } else if (snapShot.hasError) {
              return const Center(child: Text("hata çıktı"));
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
