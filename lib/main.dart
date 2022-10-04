import 'package:busca_cep/core/custom_theme/custom_theme.dart';
import 'package:busca_cep/features/presenter/pages/homepage/search_cep_homepage.dart';
import 'package:busca_cep/features/presenter/pages/saved_districts/saved_districts_page.dart';
import 'package:busca_cep/injector/injector.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Injector.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search Cep',
      theme: CustomTheme.themeData(),
      initialRoute: '/',
      routes: {
        '/': (context) => const SearchCepHomepage(),
        '/districts': (context) => SavedDistrictsPage(),
      },
    );
  }
}
