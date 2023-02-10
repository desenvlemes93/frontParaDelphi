import 'dart:convert';

class Usuario {
  final String nome;
  final String idade;
  final String profissao;
  final String cargo;
  Usuario({
    required this.nome,
    required this.idade,
    required this.profissao,
    required this.cargo,
  });

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'idade': idade,
      'profissao': profissao,
      'cargo': cargo,
    };
  }

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      nome: map['nome'] ?? '',
      idade: map['idade'] ?? '',
      profissao: map['profissao'] ?? '',
      cargo: map['cargo'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Usuario.fromJson(String source) =>
      Usuario.fromMap(json.decode(source));
}
