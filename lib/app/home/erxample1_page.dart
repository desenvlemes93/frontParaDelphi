import 'package:exampledelphiflutter/app/controller/usuario_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Example1Page extends StatefulWidget {
  const Example1Page({super.key});

  @override
  State<Example1Page> createState() => _Example1PageState();
}

class _Example1PageState extends State<Example1Page> {
  var controller = Get.put(UsuarioController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Get.find<UsuarioController>().buscarRegistro();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Buscando informação server Delphi ',
          ),
        ),
        body: ListView.builder(
          itemCount: controller.listaUsuario.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Obx(
                    () {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Nome : ${controller.listaUsuario[index].nome}'),
                          Text(
                              'Idade: ${controller.listaUsuario[index].idade}'),
                          Text(
                              'Profissao: ${controller.listaUsuario[index]?.profissao ?? 'Não tem'}'),
                          Text(
                              'cargo: ${controller.listaUsuario[index].cargo}'),
                        ],
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ));
  }
}
