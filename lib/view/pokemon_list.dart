import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_dictionary_app/model/detail_list.dart';
import 'package:pokemon_dictionary_app/model/generation_list.dart';
import 'package:pokemon_dictionary_app/view/pokemon_detail.dart';

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
  late List<DetailList> detailList;

  @override
  void initState() {
    super.initState();
    detailList = [
      DetailList(
        pokeImage: 'images/f.jpg', 
        pokeNum: '144', 
        pokeName: '프리져', 
        pokeDetail: '1세대를 대표하는 전설의 조류',
      ),
      DetailList(
        pokeImage: 'images/a.jpg', 
        pokeNum: '244', 
        pokeName: '앤테이', 
        pokeDetail: '2세대를 대표하는 전설의 강아지',
      ),
      DetailList(
        pokeImage: 'images/l.jpg', 
        pokeNum: '384', 
        pokeName: '레쿠쟈', 
        pokeDetail: '3세대를 대표하는 전설의 용가리',
      ),
      DetailList(
        pokeImage: 'images/pr.jpg', 
        pokeNum: '484', 
        pokeName: '펄기아', 
        pokeDetail: '4세대를 대표하는 공간의 God',
      ),
      DetailList(
        pokeImage: 'images/ls.jpg', 
        pokeNum: '643', 
        pokeName: '레시라무', 
        pokeDetail: '5세대를 대표하는 T발롬',
      ),
      DetailList(
        pokeImage: 'images/ev.jpg', 
        pokeNum: '717', 
        pokeName: '이벨타르', 
        pokeDetail: '6세대를 대표하는 전설의 모기',
      ),
      DetailList(
        pokeImage: 'images/sol.jpg', 
        pokeNum: '791', 
        pokeName: '솔가레오', 
        pokeDetail: '7세대를 대표하는 전설의 고양이',
      ),
      DetailList(
        pokeImage: 'images/in.jpg', 
        pokeNum: '899', 
        pokeName: '무한다이노', 
        pokeDetail: '8세대를 대표하는 무한다이노',
      ),
      DetailList(
        pokeImage: 'images/cash.jpg', 
        pokeNum: '1000', 
        pokeName: '타부자고', 
        pokeDetail: '9세대를 대표하는 전설의 동전',
      ),
    ];
  }

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
              Get.to(() => PokemonDetail(list: detailList,), arguments: keyIndex);
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