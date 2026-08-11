import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_dictionary_app/model/generation_list.dart';

class PokemonList extends StatefulWidget {
  final List<GenerationList> list;
  final List<List> pokemonList;
  const PokemonList({super.key, required this.list, required this.pokemonList});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  // Property
  int keyIndex = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.list[keyIndex].generationText,
        ),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: ListView.builder(
        itemCount: widget.pokemonList[keyIndex].length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              //
            },
            child: Card(
              child: Row(
                children: [
                  Image.asset(
                    widget.pokemonList[keyIndex][index].pokemonImage,
                    width: 100,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    widget.pokemonList[keyIndex][index].pokemonName,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}