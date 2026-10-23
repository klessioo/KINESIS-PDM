import 'package:flutter/material.dart';
import '../theme/cores.dart';

class SeletorPerfil extends StatelessWidget {
  final List<String> opcoes;
  final int selecionado;
  final ValueChanged<int> aoSelecionar;

  const SeletorPerfil({
    super.key,
    required this.opcoes,
    required this.selecionado,
    required this.aoSelecionar,
  });

  @override
  Widget build(BuildContext context) {
    final botoes = <Widget>[];
    for (var i = 0; i < opcoes.length; i++) {
      if (i > 0) {
        botoes.add(const SizedBox(width: 4));
      }

      final ativo = i == selecionado;

      botoes.add(
        Expanded(
          child: GestureDetector(
            onTap: () => aoSelecionar(i),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 48,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: ativo ? Cores.preto : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                opcoes[i],
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: ativo ? Cores.branco : Cores.textoSecundario,
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Container(
      height: 56,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Cores.fundoSeletor,
        borderRadius: BorderRadius.circular(16.4),
      ),
      child: Row(children: botoes),
    );
  }
}