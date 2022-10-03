import 'package:flutter/material.dart';

class SearchCepHomepage extends StatefulWidget {
  const SearchCepHomepage({super.key});

  @override
  State<SearchCepHomepage> createState() => _SearchCepHomepageState();
}

class _SearchCepHomepageState extends State<SearchCepHomepage> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Busca'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/address-search.jpg'),
            TextField(
              controller: _controller,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Tooltip(
                    message: 'Ver Salvos',
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.save_alt_outlined,
                      ),
                    ),
                  ),
                  Tooltip(
                    message: 'Buscar cep',
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Icon(Icons.search),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
