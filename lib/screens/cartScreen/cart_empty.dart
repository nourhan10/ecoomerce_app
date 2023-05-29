import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/language_settings_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CartEmpty extends StatelessWidget {
  const CartEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    // LanguageSettingsProvider languageProvider = Provider.of(context);
    return Column(
      children: [
        Text(
          AppLocalizations.of(context)!.no_items_in_cart,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.grey[500],
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        Container(
          height: height * 0.63,
          child: Image.asset(
            "assets/images/empty_cart.png",
            scale: 0.8,
          ),
        ),
      ],
    );
  }
}
