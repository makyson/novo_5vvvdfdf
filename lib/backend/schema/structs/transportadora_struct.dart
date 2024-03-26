// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransportadoraStruct extends BaseStruct {
  TransportadoraStruct({
    String? nome,
    String? cidade,
    String? estado,
    String? endereco,
    String? telefone,
    String? cep,
    String? cnpj,
    String? email,
    String? dd,
    String? responsavel,
    String? antt,
    String? incriaoestadual,
  })  : _nome = nome,
        _cidade = cidade,
        _estado = estado,
        _endereco = endereco,
        _telefone = telefone,
        _cep = cep,
        _cnpj = cnpj,
        _email = email,
        _dd = dd,
        _responsavel = responsavel,
        _antt = antt,
        _incriaoestadual = incriaoestadual;

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

  // "TELEFONE" field.
  String? _dd;
  String get dd => _dd ?? '+55';
  set dd(String? val) => _dd = val;
  bool hasdd() => _dd != null;

  // "CEP" field.
  String? _cep;
  String get cep => _cep ?? '';
  set cep(String? val) => _cep = val;
  bool hasCep() => _cep != null;

  // "CNPJ" field.
  String? _cnpj;
  String get cnpj => _cnpj ?? '';
  set cnpj(String? val) => _cnpj = val;
  bool hasCnpj() => _cnpj != null;

  // "EMAIL" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "RESPONSAVEL" field.
  String? _responsavel;
  String get responsavel => _responsavel ?? '';
  set responsavel(String? val) => _responsavel = val;
  bool hasResponsavel() => _responsavel != null;

  // "ANTT" field.
  String? _antt;
  String get antt => _antt ?? '';
  set  antt(String? val) => _antt = val;
  bool hasantt() => _antt != null;


  // "incriaoestadual" field.
  String? _incriaoestadual;
  String get incriaoestadual => _incriaoestadual ?? '';
  set  incriaoestadual(String? val) => _incriaoestadual = val;
  bool hasincriaoestadual() => _incriaoestadual != null;







  static TransportadoraStruct fromMap(Map<String, dynamic> data) =>
      TransportadoraStruct(
        nome: data['NOME'] as String?,
        cidade: data['CIDADE'] as String?,
        estado: data['ESTADO'] as String?,
        endereco: data['ENDERECO'] as String?,
        telefone: data['TELEFONE'] as String?,
        cep: data['CEP'] as String?,
        dd: data['dd'] as String?,
        cnpj: data['CNPJ'] as String?,
        email: data['EMAIL'] as String?,
        responsavel: data['RESPONSAVEL'] as String?,
        antt: castToType<String>(data['ANTT']),
        incriaoestadual: castToType<String>(data['incriaoestadual']),
      );

  static TransportadoraStruct? maybeFromMap(dynamic data) => data is Map
      ? TransportadoraStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'NOME': _nome,
        'CIDADE': _cidade,
        'ESTADO': _estado,
        'ENDERECO': _endereco,
        'TELEFONE': _telefone,
        'CEP': _cep,
        'CNPJ': _cnpj,
        'EMAIL': _email,
        'RESPONSAVEL': _responsavel,
        'ANTT': _antt,
        'dd': _dd,
        'incriaoestadual': _incriaoestadual,
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
        'CEP': serializeParam(
          _cep,
          ParamType.String,
        ),
      'dd': serializeParam(
        _dd,
        ParamType.String,
          ),

        'CNPJ': serializeParam(
          _cnpj,
          ParamType.String,
        ),
        'EMAIL': serializeParam(
          _email,
          ParamType.String,
        ),
        'RESPONSAVEL': serializeParam(
          _responsavel,
          ParamType.String,
        ),
        'ANTT': serializeParam(
          _antt,
          ParamType.String,
        ),
        'incriaoestadual': serializeParam(
          _incriaoestadual,
          ParamType.String,
        ),
      }.withoutNulls;

  static TransportadoraStruct fromSerializableMap(Map<String, dynamic> data) =>
      TransportadoraStruct(
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
        dd:  deserializeParam(
        data['dd'],
        ParamType.String,
        false,
      ),
        telefone: deserializeParam(
          data['TELEFONE'],
          ParamType.String,
          false,
        ),
        cep: deserializeParam(
          data['CEP'],
          ParamType.String,
          false,
        ),
        cnpj: deserializeParam(
          data['CNPJ'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['EMAIL'],
          ParamType.String,
          false,
        ),
        responsavel: deserializeParam(
          data['RESPONSAVEL'],
          ParamType.String,
          false,
        ),
        antt: deserializeParam(
          data['ANTT'],
          ParamType.String,
          false,
        ),
        incriaoestadual: deserializeParam(
          data['incriaoestadual'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TransportadoraStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransportadoraStruct &&
        nome == other.nome &&
        cidade == other.cidade &&
        estado == other.estado &&
        endereco == other.endereco &&
        telefone == other.telefone &&
        cep == other.cep &&
        dd == other.dd &&
        cnpj == other.cnpj &&
        email == other.email &&
        responsavel == other.responsavel &&
        antt == other.antt &&
        incriaoestadual == other.incriaoestadual;
  }

  @override
  int get hashCode => const ListEquality().hash([
        nome,
        cidade,
        estado,
        endereco,
        telefone,
        cep,
        dd,
        cnpj,
        email,
        responsavel,
        antt,
        incriaoestadual
      ]);
}

TransportadoraStruct createTransportadoraStruct({
  String? nome,
  String? cidade,
  String? estado,
  String? endereco,
  String? telefone,
  String? cep,
  String? dd,
  String? cnpj,
  String? email,
  String? responsavel,
  String? antt,
  String? incriaoestadual,
}) =>
    TransportadoraStruct(
      nome: nome,
      cidade: cidade,
      estado: estado,
      endereco: endereco,
      telefone: telefone,
      cep: cep,
      dd: dd,
      cnpj: cnpj,
      email: email,
      responsavel: responsavel,
      antt: antt,
      incriaoestadual: incriaoestadual,
    );
