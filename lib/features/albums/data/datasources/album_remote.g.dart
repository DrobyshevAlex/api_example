// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_remote.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _AlbumRemoteDataSourceImpl implements AlbumRemoteDataSourceImpl {
  _AlbumRemoteDataSourceImpl(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://jsonplaceholder.typicode.com/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<AlbumModel>> getAll({userId, offset, limit}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'userId': userId};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<AlbumModel>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/albums',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => AlbumModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<AlbumModel> get({required id}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<AlbumModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/albums/{id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AlbumModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
