import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:poke_dex/data/entitity/poke_dex.dart';

class PokemonApi {
  static const _url =
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

  static Future<List<PokeDex>> getPokemon() async {
    List<PokeDex> list = [];
    var result = await Dio().get(_url);
    var pokemonList = jsonDecode(result.data)["pokemon"];

    if (pokemonList is List) {
      list = pokemonList.map((pokemon) => PokeDex.fromJson(pokemon)).toList();
    } else {
      return [];
    }
    return list;
  }
}
