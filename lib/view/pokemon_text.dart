import 'package:flutter/material.dart';

class PokemonText extends StatefulWidget {
  const PokemonText({super.key});

  @override
  State<PokemonText> createState() => _PokemonTextState();
}

class _PokemonTextState extends State<PokemonText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('pokemon Text'),
      ),
    );
  }
}