class BookStoreRoutePath {
  final String? isbn;
  final bool isUnknown;

  BookStoreRoutePath.home()
      : isbn = null,
        isUnknown = false;

  BookStoreRoutePath.detail(this.isbn) : isUnknown = false;

  BookStoreRoutePath.unknown()
      : isbn = null,
        isUnknown = true;

  bool get isHomePage => isbn == null;

  bool get isDetailPage => isbn != null;
}
