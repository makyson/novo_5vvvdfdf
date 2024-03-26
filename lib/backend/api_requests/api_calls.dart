import 'dart:convert';

import 'package:novo_5vvv/api.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CreateVeiculoCall {
  static Future<ApiCallResponse> call({
    String? placaCavalo = '',
    String? placaCarreta = '',
    String? tipo = '',
    String? antt,
  }) async {
    final ffApiRequestBody = '''
{
  "PlacaCavalo": "$placaCavalo",
  "PlacaCarreta": "$placaCarreta",
  "Tipo": "$tipo",
  "Antt": "$antt",
  "Ativo": "s"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateVeiculo',
      apiUrl: '${apiteste()}/api-cadastros/veiculo/cadastrar',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? tipoResposta(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.tipo''',
      ));
}




class CreateMotoristaCall {
  static Future<ApiCallResponse> call({
    String? cidade = '',
    String? estado = '',
    String? endereco = '',
    String? telefone = '',
    String? cpf = '',
    String? cnh = '',
    String? nome = '',
  }) async {
    final ffApiRequestBody = '''
{
  "NomeMotorista": "$nome",
  "Cnh": "$cnh",
  "Cpf": "$cpf",
  "Telefone": "$telefone",
  "Cidade": "$cidade",
  "Estado": "$estado",
  "Endereco": "$endereco",
  "Ativo": "s"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateMotorista',
      apiUrl: '${apiteste()}/api-cadastros/motorista/cadastrar',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? tipo(dynamic response) => castToType<String>(getJsonField(
    response,
    r'''$.tipo''',
  ));
  static String? resposta(dynamic response) => castToType<String>(getJsonField(
    response,
    r'''$.resposta''',
  ));
}



class CreateTranspotadoraCall {
  static Future<ApiCallResponse> call({
    String? nome = '',
    String? telefone = '',
    String? cnpj = '',
    String? email = '',
    String? inscricaoestadual,
    String? cidade = '',
    String? estado = '',
    String? endereco = '',
    String? antt,
    String? responsavel = '',
  }) async {
    final ffApiRequestBody = '''
{
  "Nome": "$nome",
  "Telefone": "$telefone",
  "Cnpj": "$cnpj",
  "Email": "$email",
  "IncricaoEstadual": "$inscricaoestadual",
  "Cidade": "$cidade",
  "Estado": "$estado",
  "Endereco": "$endereco",
  "Antt": "$antt",
  "Responsavel": "$responsavel",
  "Ativo": "s"
}''';


    return ApiManager.instance.makeApiCall(
      callName: 'CreateTranspotadora',
      apiUrl: '${apiteste()}/api-cadastros/transportadora/cadastrar',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );

  }



  static String? tipoResposta(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.tipo''',
      )

      );


}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
