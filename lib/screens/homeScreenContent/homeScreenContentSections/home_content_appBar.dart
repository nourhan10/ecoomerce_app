import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:provider/provider.dart';
// import '../../../providers/language_settings_provider.dart';

class HomeContentAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    // LanguageSettingsProvider languageProvider = Provider.of(context);

    return Container(
      height: height * .1,
      width: width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height * .6,
              margin: EdgeInsets.only(left: 20),
              width: width * .7,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[200]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.search,
                    size: 26,
                    color: Colors.grey[700],
                  ),
                  Text(
                    AppLocalizations.of(context)!.search_here,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              height: height,
              width: width * 0.15,
              margin: EdgeInsets.only(right: 20),
              child: Image.asset(
                "assets/images/blue-logo.png",
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
