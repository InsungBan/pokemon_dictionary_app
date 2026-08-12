import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pokemon_dictionary_app/model/pokemon_class.dart';

class PokemonText extends StatefulWidget {
  final List<PokemonClass> list;
  final int selectedIndex;

  const PokemonText({
    super.key,
    required this.list,
    required this.selectedIndex,
  });

  @override
  State<PokemonText> createState() => _PokemonTextState();
}

class _PokemonTextState extends State<PokemonText> {
  // Property
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    final index = box.read('keyIndex') ?? widget.selectedIndex;
    final selected = widget.list[index];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              width: 220,
              height: 60,
              child: Center(
                child: Text(
                  '선택 포켓몬 : ${selected.pokemonName}',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              color: Colors.white,
              width: 320,
              height: 80,
              child: Center(
                child: Text(
                  '도감 번호 : ${index + 1}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
