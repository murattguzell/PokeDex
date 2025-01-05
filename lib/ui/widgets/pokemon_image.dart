import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:poke_dex/data/entitity/poke_dex.dart';
import 'package:poke_dex/ui_helper/ui_helper.dart';

import '../../constants/constants.dart';

class PokemonImage extends StatelessWidget {
  final PokeDex pokemon;
  const PokemonImage({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment:Alignment.bottomRight ,
          child: Image.asset(
            Constants.ballUrl,
            width: UIHelper.calculatePokeImgSize(),
            height: UIHelper.calculatePokeImgSize(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemon.id!,
            child: CachedNetworkImage(imageUrl: pokemon.img ?? "",
              errorWidget: (context,url,error)=>Image.asset(Constants.ballUrl),
              width: UIHelper.calculatePokeImgSize(),
              height: UIHelper.calculatePokeImgSize(),
              fit: BoxFit.fitHeight,
              placeholder: (context,url)=> CircularProgressIndicator(
                color: UIHelper.getColorFromType(pokemon.type![0]),
              ),
            ),
          ),
        )
      ],
    );
  }
}
