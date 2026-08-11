import 'package:flutter/material.dart';

class PokemonImage extends StatefulWidget {
  const PokemonImage({super.key});

  @override
  State<PokemonImage> createState() => _PokemonImageState();
}

class _PokemonImageState extends State<PokemonImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('pokemon Image'),
      ),
    );
  }
}