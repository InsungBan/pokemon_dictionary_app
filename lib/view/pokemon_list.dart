import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
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
  final box = GetStorage();

  @override
  void initState() {
    super.initState();
    box.write('keyIndex', 0);
  }

  @override
  Widget build(BuildContext context) {
    final currentPokemonList = widget.pokemonList[keyIndex];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          widget.list[keyIndex].generationText,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: Colors.red[400],
      ),
      body: ListView.builder(
        itemCount: currentPokemonList.length,
        itemBuilder: (context, index) {
          final selectedPokemon = currentPokemonList[index];

          return GestureDetector(
            onTap: () {
              box.write('keyIndex', index);
              Get.to(
                () => PokemonDetail(
                  list: widget.pokemonList[keyIndex],
                  selectedIndex: index,
                ),
                arguments: index,
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
