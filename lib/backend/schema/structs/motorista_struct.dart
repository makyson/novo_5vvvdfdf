// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MotoristaStruct extends BaseStruct {
  MotoristaStruct({
    String? nome,
    String? cidade,
    String? estado,
    String? endereco,
    String? telefone,
    String? cpf,
    String? cnh,
    String? cep,
    String? dd,
  })  : _nome = nome,
        _cidade = cidade,
        _estado = estado,
        _endereco = endereco,
        _telefone = telefone,
        _cpf = cpf,
        _cnh = cnh,
        _dd = dd,
        _cep = cep;


  // "NOME" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "CIDADE" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  set cidade(String? val) => _cidade = val;
  bool hasCidade() => _cidade != null;

  // "ESTADO" field.
  String? _estado;
  String get estado => _estado ?? '';
  set estado(String? val) => _estado = val;
  bool hasEstado() => _estado != null;

  // "ENDERECO" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  set endereco(String? val) => _endereco = val;
  bool hasEndereco() => _endereco != null;

  // "TELEFONE" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  set telefone(String? val) => _telefone = val;
  bool hasTelefone() => _telefone != null;

  // "CPF" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  set cpf(String? val) => _cpf = val;
  bool hasCpf() => _cpf != null;

  // "CNH" field.
  String? _cnh;
  String get cnh => _cnh ?? '';
  set cnh(String? val) => _cnh = val;
  bool hasCnh() => _cnh != null;

  String? _dd;
  String get dd => _dd ?? '+55';
  set dd(String? val) => _dd = val;
  bool hasdd() => _dd != null;

  // "CEP" field.
  String? _cep;
  String get cep => _cep ?? '';
  set cep(String? val) => _cep = val;
  bool hasCep() => _cep != null;

  static MotoristaStruct fromMap(Map<String, dynamic> data) => MotoristaStruct(
        nome: data['NOME'] as String?,
        cidade: data['CIDADE'] as String?,
        estado: data['ESTADO'] as String?,
        endereco: data['ENDERECO'] as String?,
        telefone: data['TELEFONE'] as String?,
        cpf: data['CPF'] as String?,
        cnh: data['CNH'] as String?,
        cep: data['CEP'] as String?,
        dd: data['dd'] as String?,
      );

  static MotoristaStruct? maybeFromMap(dynamic data) => data is Map
      ? MotoristaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'NOME': _nome,
        'CIDADE': _cidade,
        'ESTADO': _estado,
        'ENDERECO': _endereco,
        'TELEFONE': _telefone,
        'CPF': _cpf,
        'CNH': _cnh,
        'CEP': _cep,
         'dd': _dd,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'NOME': serializeParam(
          _nome,
          ParamType.String,
        ),
        'CIDADE': serializeParam(
          _cidade,
          ParamType.String,
        ),
        'ESTADO': serializeParam(
          _estado,
          ParamType.String,
        ),
        'ENDERECO': serializeParam(
          _endereco,
          ParamType.String,
        ),
        'TELEFONE': serializeParam(
          _telefone,
          ParamType.String,
        ),
        'CPF': serializeParam(
          _cpf,
          ParamType.String,
        ),
        'CNH': serializeParam(
          _cnh,
          ParamType.String,
        ),
        'CEP': serializeParam(
          _cep,
          ParamType.String,
        ),
    'dd': serializeParam(
      _dd,
      ParamType.String,
    ),
      }.withoutNulls;

  static MotoristaStruct fromSerializableMap(Map<String, dynamic> data) =>
      MotoristaStruct(
        nome: deserializeParam(
          data['NOME'],
          ParamType.String,
          false,
        ),
        cidade: deserializeParam(
          data['CIDADE'],
          ParamType.String,
          false,
        ),
        estado: deserializeParam(
          data['ESTADO'],
          ParamType.String,
          false,
        ),
        endereco: deserializeParam(
          data['ENDERECO'],
          ParamType.String,
          false,
        ),
        telefone: deserializeParam(
          data['TELEFONE'],
          ParamType.String,
          false,
        ),
        cpf: deserializeParam(
          data['CPF'],
          ParamType.String,
          false,
        ),
        cnh: deserializeParam(
          data['CNH'],
          ParamType.String,
          false,
        ),
        dd: deserializeParam(
          data['dd'],
          ParamType.String,
          false,
        ),
        cep: deserializeParam(
          data['CEP'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MotoristaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MotoristaStruct &&
        nome == other.nome &&
        cidade == other.cidade &&
        estado == other.estado &&
        endereco == other.endereco &&
        telefone == other.telefone &&
        cpf == other.cpf &&
        cnh == other.cnh &&
        dd == other.dd &&
        cep == other.cep;

  }

  @override
  int get hashCode => const ListEquality()
      .hash([nome, cidade, estado, endereco, telefone, cpf, cnh, cep]);
}

MotoristaStruct createMotoristaStruct({
  String? nome,
  String? cidade,
  String? estado,
  String? endereco,
  String? telefone,
  String? cpf,
  String? cnh,
  String? cep,
  String? dd,
}) =>
    MotoristaStruct(
      nome: nome,
      cidade: cidade,
      estado: estado,
      endereco: endereco,
      telefone: telefone,
      cpf: cpf,
      cnh: cnh,
      cep: cep,
      dd: dd,
    );
