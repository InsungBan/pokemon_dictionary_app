import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
  late List<GenerationList> generationList;
  late List<List> pokemonList;
  late List<PokemonClass> firstGenList;
  late List<PokemonClass> secondGenList;
  String userId = Get.arguments;

  @override
  void initState() {
    super.initState();
<<<<<<< Updated upstream
=======
    userId = box.read('p_userId');

    firstGenList = [
      PokemonClass(pokemonImage: 'images/f.jpg', pokemonName: '프리져'),
      PokemonClass(pokemonImage: 'images/gen1_1.png', pokemonName: '이상해씨'),
      PokemonClass(pokemonImage: 'images/gen1_2.png', pokemonName: '파이리'),
      PokemonClass(pokemonImage: 'images/gen1_3.png', pokemonName: '꼬부기'),
    ];
    secondGenList = [
      PokemonClass(pokemonImage: 'images/a.jpg', pokemonName: '엔테이'),
      PokemonClass(pokemonImage: 'images/gen2_1.png', pokemonName: '치코리타'),
      PokemonClass(pokemonImage: 'images/gen2_2.png', pokemonName: '브케인'),
      PokemonClass(pokemonImage: 'images/gen2_3.png', pokemonName: '리아코'),
    ];
    thirdGenList = [
      PokemonClass(pokemonImage: 'images/l.jpg', pokemonName: '레쿠쟈'),
      PokemonClass(pokemonImage: 'images/gen3_1.png', pokemonName: '나무지기'),
      PokemonClass(pokemonImage: 'images/gen3_2.png', pokemonName: '아차모'),
      PokemonClass(pokemonImage: 'images/gen3_3.png', pokemonName: '물짱이'),
    ];
    fourthGenList = [
      PokemonClass(pokemonImage: 'images/pr.jpg', pokemonName: '펄기아'),
      PokemonClass(pokemonImage: 'images/gen4_1.png', pokemonName: '모부기'),
      PokemonClass(pokemonImage: 'images/gen4_2.png', pokemonName: '불꽃숭이'),
      PokemonClass(pokemonImage: 'images/gen4_3.png', pokemonName: '팽도리'),
    ];
    fiveGenList = [
      PokemonClass(pokemonImage: 'images/ls.jpg', pokemonName: '레시라무'),
      PokemonClass(pokemonImage: 'images/gen5_1.png', pokemonName: '주리비얀'),
      PokemonClass(pokemonImage: 'images/gen5_2.png', pokemonName: '뚜꾸리'),
      PokemonClass(pokemonImage: 'images/gen5_3.png', pokemonName: '수댕이'),
    ];
    sixGenList = [
      PokemonClass(pokemonImage: 'images/ev.jpg', pokemonName: '이벨타르'),
      PokemonClass(pokemonImage: 'images/gen6_1.png', pokemonName: '도치마론'),
      PokemonClass(pokemonImage: 'images/gen6_2.png', pokemonName: '푸호꼬'),
      PokemonClass(pokemonImage: 'images/gen6_3.png', pokemonName: '개구마르'),
    ];
    sevenGenList = [
      PokemonClass(pokemonImage: 'images/sol.jpg', pokemonName: '솔가레오'),
      PokemonClass(pokemonImage: 'images/gen7_1.png', pokemonName: '나몰빼미'),
      PokemonClass(pokemonImage: 'images/gen7_2.png', pokemonName: '냐오불'),
      PokemonClass(pokemonImage: 'images/gen7_3.png', pokemonName: '누리공'),
    ];
    eightGenList = [
      PokemonClass(pokemonImage: 'images/in.jpg', pokemonName: '무한다이노'),
      PokemonClass(pokemonImage: 'images/gen8_1.png', pokemonName: '나몰빼미'),
      PokemonClass(pokemonImage: 'images/gen8_2.png', pokemonName: '냐오불'),
      PokemonClass(pokemonImage: 'images/gen8_3.png', pokemonName: '누리공'),
    ];
    nineGenList = [
      PokemonClass(pokemonImage: 'images/cash.jpg', pokemonName: '타부자고'),
      PokemonClass(pokemonImage: 'images/gen9_1.png', pokemonName: '나오하'),
      PokemonClass(pokemonImage: 'images/gen9_2.png', pokemonName: '뜨아거'),
      PokemonClass(pokemonImage: 'images/gen9_3.png', pokemonName: '꾸왁스'),
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

>>>>>>> Stashed changes
    generationList = [
      GenerationList(
        generationImage: 'images/gen1.png', 
        generationText: '관동지방',
      ),
      GenerationList(
        generationImage: 'images/gen2.png', 
        generationText: '성도지방',
      ),
      GenerationList(
        generationImage: 'images/gen3.png', 
        generationText: '호연지방',
      ),
      GenerationList(
        generationImage: 'images/gen4.png', 
        generationText: '신오지방',
      ),
      GenerationList(
        generationImage: 'images/gen5.png', 
        generationText: '하나지방',
      ),
      GenerationList(
        generationImage: 'images/gen6.png', 
        generationText: '칼로스지방',
      ),
      GenerationList(
        generationImage: 'images/gen7.png', 
        generationText: '알로라지방',
      ),
      GenerationList(
        generationImage: 'images/gen8.png', 
        generationText: '가라르지방',
      ),
      GenerationList(
        generationImage: 'images/gen9.png', 
        generationText: '팔데아지방',
      ),
    ];

<<<<<<< Updated upstream
    pokemonList=[
      firstGenList=[
        PokemonClass(
          pokemonImage: 'images/fatcat.png', 
          pokemonName: '귀요미 고양이',
        ),
        PokemonClass(
          pokemonImage: 'images/fatcat2.png', 
          pokemonName: '귀여운 뚱냥이',
        ),
      ],
      secondGenList=[
        PokemonClass(
          pokemonImage: 'images/background.png', 
          pokemonName: '귀요미 몬스터볼',
        ),
        PokemonClass(
          pokemonImage: 'images/fatcat2.png', 
          pokemonName: '귀여운 뚱냥이',
        ),
      ],
    ];
=======
    // pokemonList=[
    //   firstGenList=[
    //     PokemonClass(
    //       pokemonImage: 'images/f.jpg', 
    //       pokemonName: '프리져',
    //     ),
    //     PokemonClass(
    //       pokemonImage: 'images/f.jpg', 
    //       pokemonName: '프리져',
    //     ),
    //   ],
    //   secondGenList=[
    //     PokemonClass(
    //       pokemonImage: 'images/a.jpg', 
    //       pokemonName: '엔테이',
    //     ),
    //   ],
    //   thirdGenList=[
    //     PokemonClass(
    //       pokemonImage: 'images/l.jpg', 
    //       pokemonName: '레쿠쟈',
    //     ),
    //   ],
    //   fourthGenList=[
    //     PokemonClass(
    //       pokemonImage: 'images/pr.jpg', 
    //       pokemonName: '펄기아',
    //     ),
    //   ],
    //   fiveGenList=[
    //     PokemonClass(
    //       pokemonImage: 'images/ls.jpg', 
    //       pokemonName: '레시라무',
    //     ),
    //   ],
    //   sixGenList=[
    //     PokemonClass(
    //       pokemonImage: 'images/ev.jpg', 
    //       pokemonName: '이벨타르',
    //     ),
    //   ],
    //   sevenGenList=[
    //     PokemonClass(
    //       pokemonImage: 'images/sol.jpg', 
    //       pokemonName: '솔가레오',
    //     ),
    //   ],
    //   eightGenList=[
    //     PokemonClass(
    //       pokemonImage: 'images/in.jpg', 
    //       pokemonName: '무한다이노',
    //     ),
    //   ],
    //   nineGenList=[
    //     PokemonClass(
    //       pokemonImage: 'images/cash.jpg', 
    //       pokemonName: '타부자고',
    //     ),
    //   ],
    // ];
>>>>>>> Stashed changes

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$userId님의 전국도감',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 100,
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: generationList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ), 
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(() => PokemonList(list: generationList, pokemonList: pokemonList,), arguments: index);
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
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      generationList[index].generationText,
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}