import 'package:flutter/material.dart';
import '../theme/cores.dart';

class CampoTextoKinesis extends StatelessWidget {
  final TextEditingController controller;
  final String dica;
  final IconData icone;
  final bool senha;
  final TextInputType tipoTeclado;

  const CampoTextoKinesis({
    super.key,
    required this.controller,
    required this.dica,
    required this.icone,
    this.senha = false,
    this.tipoTeclado = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Cores.fundoCampo,
        borderRadius: BorderRadius.circular(16.4),
        border: Border.all(color: Cores.borda, width: 1.13),
      ),
      child: Row(
        children: [
          Icon(icone, size: 20, color: Cores.icone),
          const SizedBox(width: 13),
          Expanded(
            child: TextField(
              controller: controller,
              obscureText: senha,
              keyboardType: tipoTeclado,
              cursorColor: Cores.preto,
              style: const TextStyle(fontSize: 16, color: Cores.textoCampo),
              decoration: InputDecoration.collapsed(
                hintText: dica,
                hintStyle: const TextStyle(fontSize: 16, color: Cores.textoDica),
              )
            )
          )
        ]
      )
    );
  }
}