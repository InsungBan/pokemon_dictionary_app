import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_dictionary_app/model/generation_list.dart';
import 'package:pokemon_dictionary_app/model/pokemon_class.dart';
import 'package:pokemon_dictionary_app/view/pokemon_detail.dart';

class PokemonList extends StatefulWidget {
  final List<GenerationList> list;
  final List<List<PokemonClass>> pokemonList;
  const PokemonList({super.key, required this.list, required this.pokemonList});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  // Property
  int keyIndex = Get.arguments;

  @override
  Widget build(BuildContext context) {
    final currentPokemonList = widget.pokemonList[keyIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.list[keyIndex].generationText,
        ),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: ListView.builder(
        itemCount: currentPokemonList.length,
        itemBuilder: (context, index) {
          final selectedPokemon = currentPokemonList[index];

          return GestureDetector(
            onTap: () {
              Get.to(
                () => PokemonDetail(
                  list: currentPokemonList,
                  selectedIndex: index,
                ),
              );
            },
            child: Card(
              child: Row(
                children: [
                  Image.asset(
                    selectedPokemon.pokemonImage,
                    width: 100,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    selectedPokemon.pokemonName,
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