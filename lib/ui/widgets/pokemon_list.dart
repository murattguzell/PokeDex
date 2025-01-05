import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_dex/data/entitity/poke_dex.dart';
import 'package:poke_dex/ui/cubit/pokemon_cubit.dart';
import 'package:poke_dex/ui/widgets/pokemon_list_item.dart';
import 'package:poke_dex/ui_helper/ui_helper.dart';

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
   context.read<PokemonCubit>().getPokemons();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build methodu çalıştı");
    return Scaffold(
      body: BlocBuilder<PokemonCubit,List<PokeDex>>(
          builder: (context, pokemonList) {
            if (pokemonList.isNotEmpty) {
              return GridView.builder(
                itemCount: pokemonList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: UIHelper.getCrossAxisCount()),
                itemBuilder: (context, index) {
                  debugPrint("item builder methodu çalıştı");
                  var currentPokemon = pokemonList[index];
                  return PokemonListItem(pokemon: currentPokemon);
                },
              );
            } else if (pokemonList.isEmpty) {
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
