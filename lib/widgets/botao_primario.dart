import 'package:flutter/material.dart';
import '../theme/cores.dart';

class BotaoPrimario extends StatelessWidget {
  final String texto;
  final VoidCallback onPressed;

  const BotaoPrimario({
    super.key,
    required this.texto,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Cores.preto,
          foregroundColor: Cores.branco,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.4),
          )
        ),
        child: Text(
          texto,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}