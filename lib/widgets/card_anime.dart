import 'package:flutter/material.dart';

class CardAnime extends StatelessWidget {
  const CardAnime(
      {super.key,
      required this.nome,
      required this.descricao,
      required this.imagem});
  final String nome; // nome do planeta
  final String descricao; // descrição do planeta
  final String imagem; // imagem como um caminho relativo

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150, // altura
      width: double.infinity, // largura (vai ocupar to_do espaço disponível)
      child: GestureDetector(
        onTap: () {
          // Quando eu clicar
          final snackBar = SnackBar(content: Text(nome));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Card(
          elevation: 2, //elevação
          child: SizedBox(
            // o card ficará com o tamanho definido no sized box
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                    child: Image.asset("assets/images/$imagem")),
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      nome,
                      style: const TextStyle(fontSize: 15),
                    ),
                    Text(descricao)
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
