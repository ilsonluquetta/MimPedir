import 'package:flutter/material.dart';
import 'package:mimpedir/cad.restaurante.dart';
    class telahome extends StatelessWidget {
      telahome({super.key});

      @override
      Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text("Seja bem vindo Usuário: ")),
            body: Padding(padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Lista de Restaurantes:"),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TelaCadRest()));
                  }, child: Text("Cadastrar Novo Restaurante")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text("Meu restaurante"),
                          Text("Comida Mexicana")
                        ],
                      ),
                      ElevatedButton(onPressed: (){}, child: Text("Excluir")),
                      SizedBox(width: 10),
                      ElevatedButton(onPressed: (){}, child: Text("Editar")),
                      SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
        ),
        );
      }
    }