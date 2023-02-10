import 'package:exampledelphiflutter/app/entities/usuario.dart';
import 'package:exampledelphiflutter/app/repository/usuario_repository.dart';
import 'package:exampledelphiflutter/app/repository/usuario_repository_impl.dart';
import 'package:get/get.dart';

class UsuarioController {
  var _nome = ''.obs;
  var _idade = ''.obs;
  var _profissao = ''.obs;
  var _cargo = ''.obs;

  var _listaUsuario = [].obs;
  var usuario = Usuario;
  final usuarioRepository = (UsuarioRepositoryImpl());

  String get nome => _nome.value;
  get idade => _idade.value;
  get profissao => _profissao.value;
  get cargo => _cargo.value;
  get listaUsuario => _listaUsuario.value;

  Future<void> buscarRegistro() async {
    var buscaCliente = await usuarioRepository.buscarDadosCliente();

    _listaUsuario.value = buscaCliente;
  }
}
