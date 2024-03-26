import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_Motorista')) {
        try {
          final serializedData = prefs.getString('ff_Motorista') ?? '{}';
          _Motorista =
              MotoristaStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_TRANSPOTADORA')) {
        try {
          final serializedData = prefs.getString('ff_TRANSPOTADORA') ?? '{}';
          _TRANSPOTADORA = TransportadoraStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_VEICULO')) {
        try {
          final serializedData = prefs.getString('ff_VEICULO') ?? '{}';
          _VEICULO =
              VeiculoStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  MotoristaStruct _Motorista =
      MotoristaStruct.fromSerializableMap(jsonDecode('{}'));
  MotoristaStruct get Motorista => _Motorista;
  set Motorista(MotoristaStruct value) {
    _Motorista = value;
    prefs.setString('ff_Motorista', value.serialize());
  }

  void updateMotoristaStruct(Function(MotoristaStruct) updateFn) {
    updateFn(_Motorista);
    prefs.setString('ff_Motorista', _Motorista.serialize());
  }

  TransportadoraStruct _TRANSPOTADORA = TransportadoraStruct();
  TransportadoraStruct get TRANSPOTADORA => _TRANSPOTADORA;
  set TRANSPOTADORA(TransportadoraStruct value) {
    _TRANSPOTADORA = value;
    prefs.setString('ff_TRANSPOTADORA', value.serialize());
  }

  void updateTRANSPOTADORAStruct(Function(TransportadoraStruct) updateFn) {
    updateFn(_TRANSPOTADORA);
    prefs.setString('ff_TRANSPOTADORA', _TRANSPOTADORA.serialize());
  }

  VeiculoStruct _VEICULO = VeiculoStruct();
  VeiculoStruct get VEICULO => _VEICULO;
  set VEICULO(VeiculoStruct value) {
    _VEICULO = value;
    prefs.setString('ff_VEICULO', value.serialize());
  }

  void updateVEICULOStruct(Function(VeiculoStruct) updateFn) {
    updateFn(_VEICULO);
    prefs.setString('ff_VEICULO', _VEICULO.serialize());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
