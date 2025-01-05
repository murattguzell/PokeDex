import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_dex/data/entitity/poke_dex.dart';
import 'package:poke_dex/ui/pages/detail_page.dart';
import 'package:poke_dex/ui/widgets/pokemon_image.dart';
import 'package:poke_dex/ui_helper/ui_helper.dart';

import '../../constants/constants.dart';

class PokemonListItem extends StatelessWidget {
  final PokeDex pokemon;

  const PokemonListItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            (context),
            MaterialPageRoute(
                builder: (context) => DetailPage(
                      pokemon: pokemon,
                    )));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
        elevation: 3,
        shadowColor: Colors.white,
        color: UIHelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: UIHelper.getDefaultpadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pokemon.name!,
                style: Constants.getPokemonNameStyle(),
              ),
              Chip(
                label: Text(
                  pokemon.type![0],
                  style: Constants.getTypeChipStyle(),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: const WidgetStatePropertyAll(Colors.grey),
              ),
              Expanded(child: PokemonImage(pokemon: pokemon))
            ],
          ),
        ),
      ),
    );
  }
}
