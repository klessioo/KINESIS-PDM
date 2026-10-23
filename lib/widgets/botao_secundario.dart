import 'package:flutter/material.dart';
import '../theme/cores.dart';

class BotaoSecundario extends StatelessWidget {
  final String texto;
  final VoidCallback onPressed;

  const BotaoSecundario({
    super.key,
    required this.texto,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 58,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: Cores.branco,
          foregroundColor: Cores.preto,
          side: const BorderSide(color: Cores.bordaBotao, width: 1.13),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.4),
          )
        ),
        child: Text(
          texto,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        )
      )
    );
  }
}