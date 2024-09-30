import 'package:untitled1/Models/anime.dart';
import 'package:untitled1/widgets/card_anime.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  var animes = [
    Anime("Oshi no ko", "Obra prima", "ok.jpg"),
    Anime("Tokyo Ghoul", "Luta de Ghouls", "tk.jpeg"),
    Anime("Jujutsu Kaisen", "Dor e sofrimento", "jjk.jpeg"),
    Anime("Dragon Ball Z", "Porradaria louca", "dbz.jpeg"),
    Anime("Death Note", "Caderno do tinhoso e luta de intelectos", "dn.jpeg"),
    Anime("Cavaleiros do Zodiaco", "Dispensa explicações", "cdz.jpeg"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anime App"),
      ),
      body: ListView.builder(
          itemCount: animes.length,
          itemBuilder: (BuildContext context, int index) {
            return CardAnime(
                nome: animes[index].nome,
                descricao: animes[index].descricao,
                imagem: animes[index].imagem);
          }),
    );
  }
}
