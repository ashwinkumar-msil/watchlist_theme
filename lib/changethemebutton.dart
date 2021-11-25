import 'package:flutter/material.dart';
import 'package:navigation_watchlist/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ChangeThemebutton extends StatelessWidget {
  const ChangeThemebutton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final themeprovider = Provider.of<ThemeProvider>(context);
    return Switch.adaptive(
        value: themeprovider.isDarkmode,
        onChanged: (value) {
          final provider = Provider.of<ThemeProvider>(context, listen: false);
          provider.toggletheme(value);
        });
  }
}
