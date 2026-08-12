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
  final box = GetStorage(); // GetStorage 인스턴스를 생성하여 로컬 저장소에 접근

  @override
  Widget build(BuildContext context) {
    final index = box.read(
      'keyIndex',
    ); // ?? widget.selectedIndex;   // 로컬 저장소에서 선택된 포켓몬의 인덱스를 읽어오거나, 위젯의 selectedIndex를 사용
    final selected = widget.list[index]; // 선택된 포켓몬 객체를 가져옴

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
                  '도감 번호 : ${selected.pokeNum}',
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
