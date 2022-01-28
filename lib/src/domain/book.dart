class Book {
  String? title;
  String? subtitle;
  String? authors;
  String? publisher;
  String? isbn10;
  String? isbn13;
  String? pages;
  String? year;
  String? rating;
  String? description;
  String? price;
  String? image;
  String? url;
  Map<String, String>? pdf;

  Book(
      {this.title,
      this.subtitle,
      this.authors,
      this.publisher,
      this.isbn10,
      this.isbn13,
      this.pages,
      this.year,
      this.rating,
      this.description,
      this.price,
      this.image,
      this.url,
      this.pdf});
}
