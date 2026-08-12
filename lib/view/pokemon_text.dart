import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pokemon_dictionary_app/model/detail_list.dart';

class PokemonText extends StatefulWidget {
  final List<DetailList> list;
  const PokemonText({super.key, required this.list});

  @override
  State<PokemonText> createState() => _PokemonTextState();
}

class _PokemonTextState extends State<PokemonText> {
  // Property
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              width: 200,
              height: 60,
              child: Center(
                child: Text(
                  '도감 번호 : ${widget.list[box.read('keyIndex')].pokeNum}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),  
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.white,
              width: 300,
              height: 100,
              child: Center(
                child: Text(
                  widget.list[box.read('keyIndex')].pokeDetail,
                  style: TextStyle(
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