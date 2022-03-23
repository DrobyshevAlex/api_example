import 'dart:convert';

import 'package:api_example/features/users/data/models/user.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../resources/fetch.dart';

void main() {
  group('fromJson/toJson', () {
    test(
      'should return a valid model',
      () async {
        final jsonMap =
            json.decode(fetchData('user.json')) as Map<String, dynamic>;
        final result = UserModel.fromJson(jsonMap);
        expect(result.id, 1);
      },
    );

    test(
      'should return a JSON map containing the proper data',
      () async {
        final jsonMap =
            json.decode(fetchData('user.json')) as Map<String, dynamic>;
        final result = UserModel.fromJson(jsonMap).toJson();
        expect(result, jsonMap);
      },
    );
  });
}
