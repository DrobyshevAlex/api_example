import 'package:freezed_annotation/freezed_annotation.dart';

class PagedResource<T> {
  PagedResource({required Iterable<T> data, this.nextPageKey})
      : data = UnmodifiableListView(data);
  final UnmodifiableListView<T> data;
  final int? nextPageKey;
}
