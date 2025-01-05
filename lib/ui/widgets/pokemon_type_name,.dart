import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_dex/data/entitity/poke_dex.dart';

import '../../constants/constants.dart';

class PokemonTypeName extends StatelessWidget {
  final PokeDex pokemon;
  const PokemonTypeName({super.key,required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Text(pokemon.name ?? "",style: Constants.getPokemonNameStyle(),)),
              Text("#${pokemon.num}",style: Constants.getPokemonNameStyle(),),

            ],
          ),
          SizedBox(height: 0.02.sh,),
          Chip(
            label: Text(
              pokemon.type?.join(" , ") ?? "",
              style: Constants.getTypeChipStyle(),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
            color: const WidgetStatePropertyAll(Colors.grey),
          ),
        ],
      ),
    );
  }
}
