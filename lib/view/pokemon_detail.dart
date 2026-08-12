import 'package:flutter/material.dart';
import 'package:pokemon_dictionary_app/model/pokemon_class.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pokemon_dictionary_app/view/pokemon_image.dart';
import 'package:pokemon_dictionary_app/view/pokemon_text.dart';

class PokemonDetail extends StatefulWidget {
  final List<PokemonClass> list;
  final int selectedIndex;
  const PokemonDetail({super.key, required this.list, required this.selectedIndex});

  @override
  State<PokemonDetail> createState() => _PokemonDetailState();
}

class _PokemonDetailState extends State<PokemonDetail>
    with SingleTickerProviderStateMixin {
  // Property
  late TabController tabController;   // TabController를 사용하여 탭 전환을 관리
  late int selectedIndex;             // 선택된 포켓몬의 인덱스를 저장
  final box = GetStorage();           // GetStorage 인스턴스를 생성하여 로컬 저장소에 접근

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
    box.write('keyIndex', selectedIndex);
    tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: DropdownButton<int>(
          value: selectedIndex,
          underline: const SizedBox(),
          icon: const Icon(Icons.arrow_drop_down),
          isDense: false,
          dropdownColor: Colors.white,
          alignment: Alignment.center,
          items: List.generate(widget.list.length, (index) {
            return DropdownMenuItem<int>(
              value: index,
              child: Text(
                widget.list[index].pokemonName,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }),
          onChanged: (value) {
            if (value == null) return;
            setState(() {
              selectedIndex = value;
              box.write('keyIndex', selectedIndex);
            });
          },
        ),
        centerTitle: true,
        toolbarHeight: 100,
        bottom: TabBar(
          controller: tabController,
          tabs: const [
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
          PokemonImage(list: widget.list, selectedIndex: selectedIndex),
          PokemonText(list: widget.list, selectedIndex: selectedIndex),
        ],
      ),
    );
  }
}
