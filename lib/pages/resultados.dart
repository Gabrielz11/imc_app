import 'package:flutter/material.dart';

class ResultadosPage extends StatelessWidget {
  const ResultadosPage({
    super.key,
    required this.resultado,
    required this.classificacao,
  });

  final String resultado;
  final String classificacao;

  // Sempre use caminhos de assets sem "../"
  String get _imagemOrganizada {
    final result = double.tryParse(resultado) ?? 0.0;

    if (result < 18.6) return "assets/imc_06.png";
    if (result < 25.0) return "assets/imc_05.png";
    if (result < 30.0) return "assets/imc_04.png";
    if (result < 35.0) return "assets/imc_03.png";
    if (result < 40.0) return "assets/imc_02.png";
    return "assets/imc_01.png";
  }

  String get _textoOrganizado {
    final result = double.tryParse(resultado) ?? 0.0;

    if (result < 18.6) {
      return "Procure um médico. Algumas pessoas têm um baixo peso por características "
          "do seu organismo e tudo bem. Outras podem estar enfrentando problemas, "
          "como a desnutrição. É preciso saber qual é o caso.";
    }
    if (result < 25.0) {
      return "Que bom que você está com o peso normal! E o melhor jeito de continuar "
          "assim é mantendo um estilo de vida ativo e uma alimentação equilibrada.";
    }
    if (result < 30.0) {
      return "Ele é, na verdade, uma pré-obesidade e muitas pessoas nessa faixa já "
          "apresentam doenças associadas, como diabetes e hipertensão. Importante "
          "rever hábitos e buscar ajuda antes de entrar na faixa da obesidade pra valer.";
    }
    if (result < 35.0) {
      return "Sinal de alerta! Chegou na hora de se cuidar, mesmo que seus exames "
          "sejam normais. Vamos dar início a mudanças hoje! Cuide de sua alimentação. "
          "Você precisa iniciar um acompanhamento com nutricionista e/ou endocrinologista.";
    }
    if (result < 40.0) {
      return "Mesmo que seus exames aparentem estar normais, é hora de se cuidar, "
          "iniciando mudanças no estilo de vida com o acompanhamento próximo de profissionais de saúde.";
    }
    return "Aqui o sinal é vermelho, com forte probabilidade de já existirem doenças "
        "muito graves associadas. O tratamento deve ser ainda mais urgente.";
  }

  @override
  Widget build(BuildContext context) {
    final imagem = _imagemOrganizada;
    final texto = _textoOrganizado;

    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Row(
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage("assets/imc_logo.png"),
              radius: 18,
              backgroundColor: Colors.transparent,
            ),
            SizedBox(width: 12),
            Text("Resultados"),
          ],
        ),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(imagem, height: 200),
            const SizedBox(height: 24),
            Text(
              "Seu IMC é: $resultado",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 16),
            Card(
              color: Colors.greenAccent,
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      classificacao,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                    leading: SizedBox(
                      width: 33,
                      height: 33,
                      child: Image.asset(imagem, fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      texto,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
