import 'dart:io';

String fetchData(String name) =>
    File('test/resources/$name').readAsStringSync();
