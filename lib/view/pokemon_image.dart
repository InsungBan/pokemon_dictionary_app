import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pokemon_dictionary_app/model/pokemon_class.dart';

class PokemonImage extends StatefulWidget {
  final List<PokemonClass> list;
  final int selectedIndex;

  const PokemonImage({
    super.key,
    required this.list,
    required this.selectedIndex,
  });

  @override
  State<PokemonImage> createState() => _PokemonImageState();
}

class _PokemonImageState extends State<PokemonImage> {
  // Property
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    final index = box.read('keyIndex') ?? widget.selectedIndex;
    final selected = widget.list[index];

    return Center(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Image.asset(
          selected.pokemonImage,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
