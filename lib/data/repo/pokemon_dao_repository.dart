import 'dart:convert';

import 'package:poke_dex/data/entitity/poke_dex.dart';
import 'package:dio/dio.dart';
import 'package:poke_dex/data/entitity/pokemon_cevap.dart';

class PokemonRepository{

  List<PokeDex>parsePokemons(String response){
    return PokemonResponse.fromJson(json.decode(response)).pokemons;
  }

Future<List<PokeDex>>getPokemon()async{
  var url = "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
  var response = await Dio().get(url);
  return parsePokemons(response.data.toString());
}

}