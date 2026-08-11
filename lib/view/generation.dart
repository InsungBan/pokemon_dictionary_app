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