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
  final box = GetStorage();   // GetStorage 인스턴스를 생성하여 로컬 저장소에 접근

  @override
  Widget build(BuildContext context) {
    final index = box.read('keyIndex');// ?? widget.selectedIndex;  // 로컬 저장소에서 선택된 포켓몬의 인덱스를 읽어오거나, 위젯의 selectedIndex를 사용
    final selected = widget.list[index];                         // 선택된 포켓몬 객체를 가져옴

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
