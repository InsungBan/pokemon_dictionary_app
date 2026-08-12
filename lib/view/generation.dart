import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pokemon_dictionary_app/model/generation_list.dart';
import 'package:pokemon_dictionary_app/model/pokemon_class.dart';
import 'package:pokemon_dictionary_app/view/pokemon_list.dart';

class Generation extends StatefulWidget {
  const Generation({super.key});

  @override
  State<Generation> createState() => _GenerationState();
}

class _GenerationState extends State<Generation> {
  // Property
  late List<GenerationList> generationList;   // GenerationList 객체를 담을 리스트
  late List<List<PokemonClass>> pokemonList;  // PokemonClass 객체를 담을 리스트의 리스트
  late List<PokemonClass> firstGenList;       // 1세대 포켓몬 리스트
  late List<PokemonClass> secondGenList;      // 2세대 포켓몬 리스트
  late List<PokemonClass> thirdGenList;       // 3세대 포켓몬 리스트
  late List<PokemonClass> fourthGenList;      // 4세대 포켓몬 리스트
  late List<PokemonClass> fiveGenList;        // 5세대 포켓몬 리스트
  late List<PokemonClass> sixGenList;         // 6세대 포켓몬 리스트
  late List<PokemonClass> sevenGenList;       // 7세대 포켓몬 리스트
  late List<PokemonClass> eightGenList;       // 8세대 포켓몬 리스트
  late List<PokemonClass> nineGenList;        // 9세대 포켓몬 리스트
  late String userId;                         // 사용자 ID를 저장할 변수
  final box = GetStorage();                   // GetStorage 인스턴스를 생성하여 로컬 저장소에 접근

  @override
  void initState() {
    super.initState();
    userId = box.read('p_userId');

    firstGenList = [
      PokemonClass(pokemonImage: 'images/f.jpg', pokemonName: '프리져', pokeNum: '144'),
      PokemonClass(pokemonImage: 'images/gen1_1.png', pokemonName: '이상해씨', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen1_2.png', pokemonName: '파이리', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen1_3.png', pokemonName: '꼬부기', pokeNum: ''),
    ];
    secondGenList = [
      PokemonClass(pokemonImage: 'images/a.jpg', pokemonName: '엔테이', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen2_1.png', pokemonName: '치코리타', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen2_2.png', pokemonName: '브케인', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen2_3.png', pokemonName: '리아코', pokeNum: ''),
    ];
    thirdGenList = [
      PokemonClass(pokemonImage: 'images/l.jpg', pokemonName: '레쿠쟈', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen3_1.png', pokemonName: '나무지기', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen3_2.png', pokemonName: '아차모', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen3_3.png', pokemonName: '물짱이', pokeNum: ''),
    ];
    fourthGenList = [
      PokemonClass(pokemonImage: 'images/pr.jpg', pokemonName: '펄기아', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen4_1.png', pokemonName: '모부기', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen4_2.png', pokemonName: '불꽃숭이', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen4_3.png', pokemonName: '팽도리', pokeNum: ''),
    ];
    fiveGenList = [
      PokemonClass(pokemonImage: 'images/ls.jpg', pokemonName: '레시라무', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen5_1.png', pokemonName: '주리비얀', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen5_2.png', pokemonName: '뚜꾸리', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen5_3.png', pokemonName: '수댕이', pokeNum: ''),
    ];
    sixGenList = [
      PokemonClass(pokemonImage: 'images/ev.jpg', pokemonName: '이벨타르', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen6_1.png', pokemonName: '도치마론', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen6_2.png', pokemonName: '푸호꼬', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen6_3.png', pokemonName: '개구마르', pokeNum: ''),
    ];
    sevenGenList = [
      PokemonClass(pokemonImage: 'images/sol.jpg', pokemonName: '솔가레오', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen7_1.png', pokemonName: '나몰빼미', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen7_2.png', pokemonName: '냐오불', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen7_3.png', pokemonName: '누리공', pokeNum: ''),
    ];
    eightGenList = [
      PokemonClass(pokemonImage: 'images/in.jpg', pokemonName: '무한다이노', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen8_1.png', pokemonName: '나몰빼미', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen8_2.png', pokemonName: '냐오불', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen8_3.png', pokemonName: '누리공', pokeNum: ''),
    ];
    nineGenList = [
      PokemonClass(pokemonImage: 'images/cash.jpg', pokemonName: '타부자고', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen9_1.png', pokemonName: '나오하', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen9_2.png', pokemonName: '뜨아거', pokeNum: ''),
      PokemonClass(pokemonImage: 'images/gen9_3.png', pokemonName: '꾸왁스', pokeNum: ''),
    ];

    pokemonList = [
      firstGenList,
      secondGenList,
      thirdGenList,
      fourthGenList,
      fiveGenList,
      sixGenList,
      sevenGenList,
      eightGenList,
      nineGenList,
    ];

    generationList = [
      GenerationList(
        generationImage: 'images/gen1.png',
        generationText: '관동지방',
        pokeList: pokemonList[0],
      ),
      GenerationList(
        generationImage: 'images/gen2.png',
        generationText: '성도지방',
        pokeList: pokemonList[1],
      ),
      GenerationList(
        generationImage: 'images/gen3.png',
        generationText: '호연지방',
        pokeList: pokemonList[2],
      ),
      GenerationList(
        generationImage: 'images/gen4.png',
        generationText: '신오지방',
        pokeList: pokemonList[3],
      ),
      GenerationList(
        generationImage: 'images/gen5.png',
        generationText: '하나지방',
        pokeList: pokemonList[4],
      ),
      GenerationList(
        generationImage: 'images/gen6.png',
        generationText: '칼로스지방',
        pokeList: pokemonList[5],
      ),
      GenerationList(
        generationImage: 'images/gen7.png',
        generationText: '알로라지방',
        pokeList: pokemonList[6],
      ),
      GenerationList(
        generationImage: 'images/gen8.png',
        generationText: '가라르지방',
        pokeList: pokemonList[7],
      ),
      GenerationList(
        generationImage: 'images/gen9.png',
        generationText: '팔데아지방',
        pokeList: pokemonList[8],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          '$userId님의 전국도감',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 100,
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Image.asset(
              'images/background.png',
              width: 1000,
              fit: BoxFit.contain,
            ),
            GridView.builder(
              itemCount: generationList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(
                      () => PokemonList(
                        list: generationList,
                        pokemonList: pokemonList,
                      ),
                      arguments: index,
                    );
                  },
                  child: Card(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(20),
                          child: Image.asset(
                            generationList[index].generationImage,
                            width: 115,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          generationList[index].generationText,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
