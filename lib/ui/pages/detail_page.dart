import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_dex/ui/widgets/pokemon_information.dart';
import 'package:poke_dex/ui/widgets/pokemon_type_name,.dart';
import 'package:poke_dex/ui_helper/ui_helper.dart';

import '../../constants/constants.dart';
import '../../data/entitity/poke_dex.dart';

class DetailPage extends StatelessWidget {
  final PokeDex pokemon;

  const DetailPage({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return ScreenUtil().orientation == Orientation.portrait
        ? _buildPortraitBody(context)
        : _buildLandScapeBody(context);
  }

  Scaffold _buildPortraitBody(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UIHelper.getDefaultpadding(),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios),
                color: Colors.white,
                iconSize: 18.w,
              ),
            ),
            PokemonTypeName(pokemon: pokemon),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      child: Image.asset(
                        Constants.ballUrl,
                        fit: BoxFit.fitHeight,
                      ),
                      right: 0,
                      top: 0,
                      height: 0.15.sh,
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        top: 0.12.sh,
                        child: PokemonInformation(pokemon: pokemon)),
                    Positioned(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Hero(
                          tag: pokemon.id!,
                          child: CachedNetworkImage(
                            imageUrl: pokemon.img!,
                            fit: BoxFit.fitHeight,
                            height: 0.25.sh,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Scaffold _buildLandScapeBody(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: UIHelper.getDefaultpadding(),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  iconSize: 18.w,
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PokemonTypeName(pokemon: pokemon),
                          Expanded(
                            child: Hero(
                              tag: pokemon.id!,
                              child: CachedNetworkImage(
                                imageUrl: pokemon.img!,
                                fit: BoxFit.fitHeight,
                                height: 0.4.sh,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: UIHelper.getDefaultpadding(),
                            child: PokemonInformation(pokemon: pokemon)
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),),
      ),

    );
  }
}