import 'package:busca_cep/core/custom_theme/custom_theme.dart';
import 'package:busca_cep/features/presenter/pages/custom_map/custom_map.dart';
import 'package:busca_cep/features/presenter/pages/homepage/search_cep_homepage.dart';
import 'package:busca_cep/features/presenter/pages/saved_ceps_by_district/saved_ceps_by_district.dart';
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
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search Cep',
      theme: CustomTheme.themeData(),
      initialRoute: '/',
      routes: {
        '/': (context) => const SearchCepHomepage(),
        '/Map': (context) => const CustomMap(),
        '/districts': (context) => SavedDistrictsPage(),
        '/districts/ceps': (context) => SavedCepsByDistrict(),
      },
    );
  }
}
