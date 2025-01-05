import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_dex/data/entitity/poke_dex.dart';
import 'package:poke_dex/data/repo/pokemon_dao_repository.dart';

class PokemonCubit extends Cubit<List<PokeDex>>{
  PokemonCubit():super(<PokeDex>[]);

  var prepo = PokemonRepository();
  Future<void> getPokemons() async{
    var list = await prepo.getPokemon();
    emit(list);
  }

}