
class Category {
  Category({
    this.id = '',
    this.name = '',
  });

  String id;
  String name;

  static List<Category> categories = [
    Category(
      id: 'Thời trang nam',
      name: 'Thời trang nam',
    ),
    Category(
      id: 'Thời trang nữ',
      name: 'Thời trang nữ',
    ),
    Category(
      id: 'Giày dép nam',
      name: 'Giày dép nam',
    ),
    Category(
      id: 'Giày dép nữ',
      name: 'Giày dép nữ',
    ),
    Category(
      id: 'Trang sức',
      name: 'Trang sức',
    ),
  ];
}
