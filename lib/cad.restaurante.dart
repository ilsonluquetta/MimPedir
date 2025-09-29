import 'package:flutter/material.dart';

class TelaCadRest extends StatelessWidget{
  TelaCadRest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cadastro de Restaurante")),
      body: Padding(padding: const EdgeInsets.all(24),
      child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children:[
           Text("Informações do Restauramte", style: TextStyle()),
           SizedBox(height: 30),
           Align(
            alignment: Alignment.centerLeft,
            child:
            Text("Tipo de Comida")
          ),
            SizedBox(height: 30),

              DropdownButtonFormField(items:[
             DropdownMenuItem(value: 'Japonesa', child: Text('Japonesa')),
             DropdownMenuItem(value: 'Italiana', child: Text('Italiana')),
             DropdownMenuItem(value: 'Mexicana', child: Text('Mexicana')),
         ], onChanged: (value){}),
           SizedBox(height: 10),
           TextFormField(
             decoration: const InputDecoration(hintText: 'Nome do Restaurante'),
             validator: (String? value) {}
           ),
           TextFormField(
               decoration: const InputDecoration(hintText: 'longitude'),
               validator: (String? value) {}),
           TextFormField(
           decoration: const InputDecoration(hintText: 'Latitude'),
           validator: (String? value) {}),
           SizedBox(height: 50),
           ElevatedButton(onPressed: (){}, child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(Icons.save),
               Text("Cadastrar")
             ],
           ))



    ],
    ),
    ),
    );
  }  //Scaffold
}