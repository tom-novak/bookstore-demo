class PagedData<T> {
  final int page;
  final int total;
  final T data;

  PagedData({
    required this.page,
    required this.total,
    required this.data,
  });
}
