import 'package:flutter/material.dart';
import '../theme/cores.dart';

class DivisorComTexto extends StatelessWidget {
  final String texto;

  const DivisorComTexto({super.key, this.texto = 'ou'});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Row(
        children: [
          const Expanded(
            child: Divider(color: Cores.borda, thickness: 1.13, height: 1.13),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              texto,
              style: const TextStyle(fontSize: 14, color: Cores.textoClaro),
            ),
          ),
          const Expanded(
            child: Divider(color: Cores.borda, thickness: 1.13, height: 1.13),
          )
        ]
      )
    );
  }
}