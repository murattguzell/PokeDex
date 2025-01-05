import 'package:poke_dex/data/entitity/poke_dex.dart';

class PokemonResponse{
  List<PokeDex> pokemons;

  PokemonResponse({required this.pokemons});
  factory PokemonResponse.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["pokemon"] as List;

    var pokemons = jsonArray
        .map((JsonArrayNesnesi) => PokeDex.fromJson(JsonArrayNesnesi))
        .toList();
    return PokemonResponse(pokemons: pokemons);
  }
}