// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VeiculoStruct extends BaseStruct {
  VeiculoStruct({
    String? tipoveiculo,
    String? placaveiculo,
    String? cavalomecanico,
    String? antt,
  })  : _tipoveiculo = tipoveiculo,
        _placaveiculo = placaveiculo,
        _cavalomecanico = cavalomecanico,
        _antt = antt;

  // "TIPOVEICULO" field.
  String? _tipoveiculo;
  String get tipoveiculo => _tipoveiculo ?? '';
  set tipoveiculo(String? val) => _tipoveiculo = val;
  bool hasTipoveiculo() => _tipoveiculo != null;

  // "PLACAVEICULO" field.
  String? _placaveiculo;
  String get placaveiculo => _placaveiculo ?? '';
  set placaveiculo(String? val) => _placaveiculo = val;
  bool hasPlacaveiculo() => _placaveiculo != null;

  // "CAVALOMECANICO" field.
  String? _cavalomecanico;
  String get cavalomecanico => _cavalomecanico ?? '';
  set cavalomecanico(String? val) => _cavalomecanico = val;
  bool hasCavalomecanico() => _cavalomecanico != null;

  // "ANTT" field.
  String? _antt;
  String get antt => _antt ?? '';
  set  antt(String? val) => _antt = val;
  bool hasantt() => _antt != null;


  static VeiculoStruct fromMap(Map<String, dynamic> data) => VeiculoStruct(
        tipoveiculo: data['TIPOVEICULO'] as String?,
        placaveiculo: data['PLACAVEICULO'] as String?,
        cavalomecanico: data['CAVALOMECANICO'] as String?,
        antt: castToType<String>(data['ANTT']),
      );

  static VeiculoStruct? maybeFromMap(dynamic data) =>
      data is Map ? VeiculoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'TIPOVEICULO': _tipoveiculo,
        'PLACAVEICULO': _placaveiculo,
        'CAVALOMECANICO': _cavalomecanico,
        'ANTT': _antt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'TIPOVEICULO': serializeParam(
          _tipoveiculo,
          ParamType.String,
        ),
        'PLACAVEICULO': serializeParam(
          _placaveiculo,
          ParamType.String,
        ),
        'CAVALOMECANICO': serializeParam(
          _cavalomecanico,
          ParamType.String,
        ),
        'ANTT': serializeParam(
          _antt,
          ParamType.String,
        ),
      }.withoutNulls;

  static VeiculoStruct fromSerializableMap(Map<String, dynamic> data) =>
      VeiculoStruct(
        tipoveiculo: deserializeParam(
          data['TIPOVEICULO'],
          ParamType.String,
          false,
        ),
        placaveiculo: deserializeParam(
          data['PLACAVEICULO'],
          ParamType.String,
          false,
        ),
        cavalomecanico: deserializeParam(
          data['CAVALOMECANICO'],
          ParamType.String,
          false,
        ),
        antt: deserializeParam(
          data['ANTT'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VeiculoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VeiculoStruct &&
        tipoveiculo == other.tipoveiculo &&
        placaveiculo == other.placaveiculo &&
        cavalomecanico == other.cavalomecanico &&
        antt == other.antt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([tipoveiculo, placaveiculo, cavalomecanico, antt]);
}

VeiculoStruct createVeiculoStruct({
  String? tipoveiculo,
  String? placaveiculo,
  String? cavalomecanico,
  String? antt,
}) =>
    VeiculoStruct(
      tipoveiculo: tipoveiculo,
      placaveiculo: placaveiculo,
      cavalomecanico: cavalomecanico,
      antt: antt,
    );
