import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_dex/data/entitity/poke_dex.dart';
import 'package:poke_dex/main.dart';
import 'package:poke_dex/ui_helper/ui_helper.dart';

import '../../constants/constants.dart';

class PokemonInformation extends StatelessWidget {
  final PokeDex pokemon;

  const PokemonInformation({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.w)),
        color: Colors.white,
      ),
      child: Padding(
        padding: UIHelper.getDefaultpadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInformationRow("Name", pokemon.name),
            _buildInformationRow("Height", pokemon.height),
            _buildInformationRow("Weight", pokemon.weight),
            _buildInformationRow("Spawn Time", pokemon.spawnTime),
            _buildInformationRow("Weakness", pokemon.weaknesses),
            _buildInformationRow("Pre Evolution", _evolutionListToString(pokemon.prevEvolution)),
            _buildInformationRow("Next Evolution", _evolutionListToString(pokemon.nextEvolution))

          ],
        ),
      ),
    );
  }

  _buildInformationRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: Constants.getPokeInfoLabelTextStyle(),),
        if(value is List && value.isNotEmpty)
          Text(value.join(" , "))
        else
          if(value == null)
            Text("Not available")
          else
            Text(value,style: Constants.getPokeInfoValueTextStyle() ,),
      ],
    );
  }
  String _evolutionListToString(List<Evolution>? evolutions) {
    if (evolutions == null || evolutions.isEmpty) {
      return 'None'; // Eğer evolution yoksa 'None' yaz.
    }
    return evolutions.map((evolution) => evolution.name).join(' , ');
  }

}
