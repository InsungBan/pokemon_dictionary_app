import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pokemon_dictionary_app/model/detail_list.dart';

class PokemonImage extends StatefulWidget {
  final List<DetailList> list;
  const PokemonImage({super.key, required this.list});

  @override
  State<PokemonImage> createState() => _PokemonImageState();
}

class _PokemonImageState extends State<PokemonImage> {
  // Property
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Image.asset(
            widget.list[box.read('keyIndex')].pokeImage,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}