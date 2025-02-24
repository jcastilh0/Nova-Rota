import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class BuscarNomeCall {
  static Future<ApiCallResponse> call({
    String? uid = 'eq.3c2b9786-a3be-446b-8e60-ba328f09d6e2',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Buscar nome',
      apiUrl: 'https://zxgaggzqnurkcjpdkiwb.supabase.co/rest/v1/users',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inp4Z2FnZ3pxbnVya2NqcGRraXdiIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzIwMjU5NDEsImV4cCI6MjA0NzYwMTk0MX0.qTBterJHuhNz0jLrASjkQLI1iTN7VGvErdfUJ787QZc',
      },
      params: {
        'user_ref': uid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
}

class BuscarEncomendaCall {
  static Future<ApiCallResponse> call({
    String? uid = 'eq.9bf8d444-0223-4281-bf88-58d10194c711',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Buscar Encomenda',
      apiUrl: 'https://zxgaggzqnurkcjpdkiwb.supabase.co/rest/v1/entregas',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inp4Z2FnZ3pxbnVya2NqcGRraXdiIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzIwMjU5NDEsImV4cCI6MjA0NzYwMTk0MX0.qTBterJHuhNz0jLrASjkQLI1iTN7VGvErdfUJ787QZc',
      },
      params: {
        'uuidTesteCli': uid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? codRastreio(dynamic response) => (getJsonField(
        response,
        r'''$[:].cod_rastreio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? dataStatus(dynamic response) => (getJsonField(
        response,
        r'''$[:].data_status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? origemEncomenda(dynamic response) => (getJsonField(
        response,
        r'''$[:].origem''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? destinoEncomenda(dynamic response) => (getJsonField(
        response,
        r'''$[:].destino''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? statusEncomenda(dynamic response) => (getJsonField(
        response,
        r'''$[:].status_encomenda''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class BuscarEncomendaTesteCall {
  static Future<ApiCallResponse> call({
    String? refIdEncomenda = 'eq.245f020a-2556-4e1d-b194-d0487545a4ed',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Buscar encomenda teste',
      apiUrl:
          'https://zxgaggzqnurkcjpdkiwb.supabase.co/rest/v1/rpc/get_entregas_by_cliente',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inp4Z2FnZ3pxbnVya2NqcGRraXdiIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzIwMjU5NDEsImV4cCI6MjA0NzYwMTk0MX0.qTBterJHuhNz0jLrASjkQLI1iTN7VGvErdfUJ787QZc',
      },
      params: {
        'ref_usuario_cli': refIdEncomenda,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
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

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
