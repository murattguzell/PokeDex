import 'package:flutter/material.dart';
import 'package:poke_dex/ui_helper/ui_helper.dart';

import '../../constants/constants.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({super.key});

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding: UIHelper.getDefaultpadding(),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  Constants.title,
                  style: Constants.getTitleStyle(),
                )),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              Constants.ballUrl,
              width:UIHelper.AppTitleImageWidth(),
              fit: BoxFit.fitWidth,
            ),
          )
        ],
      ),
    );
  }
}
