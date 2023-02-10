import 'package:exampledelphiflutter/app/entities/usuario.dart';

abstract class UsuarioRepository {
  Future<List<Usuario>> buscarDadosCliente();
}
