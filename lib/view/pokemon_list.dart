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
  int keyIndex = Get.arguments;   // 현재 세대의 인덱스를 저장
  final box = GetStorage();       // GetStorage 인스턴스를 생성하여 로컬 저장소에 접근

  @override
  void initState() {
    super.initState();
    box.write('keyIndex', 0);
  }

  @override
  Widget build(BuildContext context) {
    final currentPokemonList = widget.pokemonList[keyIndex];    // 현재 세대의 포켓몬 리스트를 가져옴

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
          final selectedPokemon = currentPokemonList[index];  // 현재 세대의 포켓몬 리스트에서 선택된 포켓몬 객체를 가져옴

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
