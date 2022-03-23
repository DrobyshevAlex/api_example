// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_remote.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _CommentsRemoteDataSourceImpl implements CommentsRemoteDataSourceImpl {
  _CommentsRemoteDataSourceImpl(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://jsonplaceholder.typicode.com/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<CommentModel>> getAll({postId, offset, limit}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'postId': postId};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<List<CommentModel>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/comments',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => CommentModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<CommentModel> create(comment) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(comment.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CommentModel>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/comments',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommentModel.fromJson(_result.data!);
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
