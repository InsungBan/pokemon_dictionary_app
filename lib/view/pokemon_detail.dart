import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pokemon_dictionary_app/model/detail_list.dart';
import 'package:pokemon_dictionary_app/view/pokemon_image.dart';
import 'package:pokemon_dictionary_app/view/pokemon_text.dart';

class PokemonDetail extends StatefulWidget {
  final List<DetailList> list;
  const PokemonDetail({super.key, required this.list});

  @override
  State<PokemonDetail> createState() => _PokemonDetailState();
}

class _PokemonDetailState extends State<PokemonDetail> with SingleTickerProviderStateMixin{
  // Property
  late TabController tabController;
  // late int keyIndex = Get.arguments;
  final box = GetStorage();

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 2, 
      vsync: this,
    );
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.list[box.read('keyIndex')].pokeName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          ),
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: Colors.red[400],
        bottom: TabBar(
          labelColor: Colors.white,
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.image),
            ),
            Tab(
              icon: Icon(Icons.text_format),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          PokemonImage(list: widget.list),
          PokemonText(list: widget.list,),
        ],
      ),
    );
  }
}