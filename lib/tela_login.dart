import 'tela_home.dart';
import 'package:flutter/material.dart';
import 'usuario.dart';

class telalogin extends StatelessWidget{
  telalogin({super.key});

  Usuario u = Usuario(
    nome: 'admin',
    login: "admin",
    senha: '@senhaforte123',
    codigo: 1
  );

  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Tela de login")),
      body: Padding(padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Usuário'),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(labelText: 'Senha'),
              obscureText: true,
              controller: senhaController,
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              if(u.login == usuarioController.text && u.senha == senhaController.text){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => telahome())
                );
              }else {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Usuário ou senha inválidos!!"))
                );
              }
              ScaffoldMessenger.of(context).showSnackBar(
                 SnackBar(content: Text("Usuário: ${usuarioController.text} Senha: ${senhaController.text}"))
              );
            }, child: const Text('logar'))
          ],
        ),
      )
    );
  }
}