import 'package:flutter/material.dart';
import '../theme/cores.dart';
import '../widgets/botao_primario.dart';
import '../widgets/botao_secundario.dart';
import '../widgets/campo_texto_kinesis.dart';
import '../widgets/divisor_com_texto.dart';
import '../widgets/logo_kinesis.dart';
import '../widgets/seletor_perfil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  int _perfilSelecionado = 0;

  @override
  void dispose() {
    _emailController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  void _entrar() {
    debugPrint('Perfil: $_perfilSelecionado | E-mail: ${_emailController.text}');
  }

  void _criarConta() {
    debugPrint('Ir para a tela de cadastro');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Cores.branco,
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 109),
              const Center(child: LogoKinesis()),
              const SizedBox(height: 8),
              Text(
                _perfilSelecionado == 0
                    ? 'Bem-vindo de volta, atleta'
                    : 'Bem-vindo de volta, clube',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                  height: 1.6,
                  color: Cores.textoSecundario,
                ),
              ),
              const SizedBox(height: 40),

              SeletorPerfil(
                opcoes: const ['Sou Atleta/Aluno', 'Sou Clube/Admin'],
                selecionado: _perfilSelecionado,
                aoSelecionar: (indice) {
                  setState(() {
                    _perfilSelecionado = indice;
                  });
                },
              ),
              const SizedBox(height: 24),

              CampoTextoKinesis(
                controller: _emailController,
                dica: 'E-mail',
                icone: Icons.mail_outline,
                tipoTeclado: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),

              CampoTextoKinesis(
                controller: _senhaController,
                dica: 'Senha',
                icone: Icons.lock_outline,
                senha: true,
              ),
              const SizedBox(height: 19),

              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Cores.textoSecundario,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Text(
                    'Esqueci minha senha',
                    style: TextStyle(fontSize: 14, height: 1.43),
                  ),
                ),
              ),
              const SizedBox(height: 40),

              BotaoPrimario(texto: 'Entrar', onPressed: _entrar),
              const SizedBox(height: 24),

              const DivisorComTexto(),
              const SizedBox(height: 24),

              BotaoSecundario(texto: 'Criar nova conta', onPressed: _criarConta),
              const SizedBox(height: 12),

              const Text(
                'Junte-se ao Kinesis gratuitamente',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Cores.textoClaro),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}