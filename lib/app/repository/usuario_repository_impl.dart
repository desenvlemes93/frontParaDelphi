import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:exampledelphiflutter/app/entities/usuario.dart';
import 'package:http/retry.dart';

import './usuario_repository.dart';

class UsuarioRepositoryImpl implements UsuarioRepository {
  @override
  Future<List<Usuario>> buscarDadosCliente() async {
    var dataReponse =
        await http.get(Uri.parse('http://192.168.0.105:9000/usuario'));

    var dadosCliente = json.decode(dataReponse.body);

    var teste = dadosCliente['usuarios'] as List;

    print(teste);
    return teste.map<Usuario>((e) => (Usuario.fromMap(e))).toList();

    //return  ;
  }
}
