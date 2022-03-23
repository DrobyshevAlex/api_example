// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_remote.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _PhotoRemoteDataSourceImpl implements PhotoRemoteDataSourceImpl {
  _PhotoRemoteDataSourceImpl(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://jsonplaceholder.typicode.com/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<PhotoModel>> getAll({albumId, offset, limit}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'albumId': albumId};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<PhotoModel>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/photos',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => PhotoModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<PhotoModel> get({required id}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PhotoModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/photos/{id}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PhotoModel.fromJson(_result.data!);
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
