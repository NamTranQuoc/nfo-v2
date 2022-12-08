class Product {
  Product(
    this.types, {
    this.id = '',
    this.name = '',
    this.price = 0,
    this.evaluate = 0,
    this.image = '',
    this.numberOfSold = 0,
    this.description = '',
    this.total = 0,
  });

  String id;
  String name;
  int price;
  double evaluate;
  String image;
  int numberOfSold;
  int total;
  List<String> types;
  String description;

  static List<Product> featured = [
    Product(['36', '37', '38', '39'],
        id: 'Giày chạy bộ cực nhanh Abc',
        name: 'Giày chạy bộ cực nhanh Abc',
        price: 900000,
        evaluate: 3.4,
        image:
            "https://firebasestorage.googleapis.com/v0/b/nfo-app.appspot.com/o/products%2F1.png?alt=media",
        numberOfSold: 3,
        description:
            'Hub type C USB C10 /C8/C6/C5/C4 JVJ cổng chuyển đổi chia cổng Type-C sang các loại cổng USB 3.0 SD, TF, 4K HDMI (TÙY CÁC MÃ Hub tương ứng SHOP có sẵn) cho MacBook laptop - Bảo hành 2 năm chính hãng',
        total: 10),
    Product(['37', '38', '39'],
        id: 'Giày thể thao nam Xyz',
        name: 'Giày thể thao nam Xyz',
        price: 777000,
        evaluate: 4.9,
        image:
            "https://firebasestorage.googleapis.com/v0/b/nfo-app.appspot.com/o/products%2F2.png?alt=media",
        numberOfSold: 5,
        description: 'Chất liệu bên trong: Grade + đế Cao su'
            '\nChiều cao thân giày: Cổ thấp'
            '\nChiều cao gót: Gót cao vừa',
        total: 20),
    Product(['S', 'M'],
        id: 'Áo Dalas màu xanh trơn có chữ',
        name: 'Áo Dalas màu xanh trơn có chữ',
        price: 888000,
        evaluate: 4.6,
        image:
            "https://firebasestorage.googleapis.com/v0/b/nfo-app.appspot.com/o/products%2F3.png?alt=media",
        numberOfSold: 2,
        description: 'Thương hiệu giày GOLDSNEAKER'
            '\nHàng được đóng gói trong hộp carton có xốp để giữ form giày'
            '\nThời gian nhận hàng : Hồ Chí Minh 1-2 ngày',
        total: 15),
  ];

  static List<Product> products = [
    Product(['36', '37', '38', '39'],
        id: 'Giày chạy bộ cực nhanh Abc',
        name: 'Giày chạy bộ cực nhanh Abc',
        price: 900000,
        evaluate: 3.4,
        image:
            "https://firebasestorage.googleapis.com/v0/b/nfo-app.appspot.com/o/products%2F1.png?alt=media",
        numberOfSold: 3,
        description: 'Thương hiệu giày GOLDSNEAKER'
            '\nHàng được đóng gói trong hộp carton có xốp để giữ form giày'
            '\nThời gian nhận hàng : Hồ Chí Minh 1-2 ngày'),
    Product(['40', '41'],
        id: 'Giày thể thao nam Xyz',
        name: 'Giày thể thao nam Xyz',
        price: 777000,
        evaluate: 4.9,
        image:
            "https://firebasestorage.googleapis.com/v0/b/nfo-app.appspot.com/o/products%2F2.png?alt=media",
        numberOfSold: 5,
        description: 'Chất liệu bên trong: Grade + đế Cao su'
            '\nChiều cao thân giày: Cổ thấp'
            '\nChiều cao gót: Gót cao vừa'),
    Product(['3,5', '4', '4,5', '5'],
        id: 'Áo Dalas màu xanh trơn có chữ',
        name: 'Áo Dalas màu xanh trơn có chữ',
        price: 888000,
        evaluate: 4.6,
        image:
            "https://firebasestorage.googleapis.com/v0/b/nfo-app.appspot.com/o/products%2F3.png?alt=media",
        numberOfSold: 2,
        description:
            'Nhấn theo dõi Shop để cập nhật các thông tin mới nhất về sản phẩm và khuyến mại.'
            '\nCám ơn quý khách hàng đã ủng hộ!'),
    Product(['37', '38', '39'],
        id: 'Giày chạy bộ cực nhanh Abc',
        name: 'Giày chạy bộ cực nhanh Abc',
        price: 900000,
        evaluate: 3.4,
        image:
            "https://firebasestorage.googleapis.com/v0/b/nfo-app.appspot.com/o/products%2F4.png?alt=media",
        numberOfSold: 3,
        description:
            '- Tận dụng tối đa các mã miễn phí vận chuyển, mã giảm giá của Shopee và mã giảm giá của Shop. '
            '\n- Theo dõi hành trình giao hàng, nếu có vấn đề phát sinh như thu phí sai, sai số điện thoại, địa chỉ nhận hàng hay thời gian vận chuyển quá lâu hãy báo lại shop nhé.'),
    Product(['S', 'M', 'L'],
        id: 'Giày thể thao nam Xyz',
        name: 'Giày thể thao nam Xyz',
        price: 777000,
        evaluate: 4.9,
        image:
            "https://firebasestorage.googleapis.com/v0/b/nfo-app.appspot.com/o/products%2F5.png?alt=media",
        numberOfSold: 5,
        description:
            '+ Chấp nhận đổi hàng trong các trường hợp hàng bị lỗi, không đúng mẫu, không vừa size '
            '\n+ Hỗ trợ đổi size và đổi mẫu trong vòng 30 ngày kể từ khi nhận sản phẩm. '
            '\n+ Thời hạn bảo hành: 12 tháng kể từ ngày mua sản phẩm. Trường hợp được bảo hành: bung keo, hở đế, đứt chỉ '
            '\n+ Hỗ trợ phí vận chuyển để khách hàng đổi sản phẩm mới nếu vì lý do lỗi kĩ thuật'),
    Product(['S', 'M', 'L', 'XL'],
        id: 'Áo Dalas màu xanh trơn có chữ',
        name: 'Áo Dalas màu xanh trơn có chữ',
        price: 888000,
        evaluate: 4.6,
        image:
            "https://firebasestorage.googleapis.com/v0/b/nfo-app.appspot.com/o/products%2F6.png?alt=media",
        numberOfSold: 2,
        description:
            '- Nên vệ sinh giày vào ban ngày hạn chế vệ sinh giày vào buổi tối'
            '\n- Không để giày ngâm nước quá lâu hoặc mang giày khi đi trời mưa.'
            '\n- Định kỳ vệ sinh giày, không sử dụng thuốc tẩy để giặt '
            '\n- Quấn khăn giấy kín quanh giày và đem đi phơi khô dưới ánh mặt trời hoặc bóng râm. '
            '\n- Trong thời gian dài không mang, nên vệ sinh giày sạch sẽ và gói giày lại bằng giấy.'),
  ];

  static Product auctionCurrent = Product(['40', '41'],
      id: 'Giày thể thao nam Xyz',
      name: 'Giày thể thao nam Xyz',
      price: 777000,
      evaluate: 4.9,
      image:
          "https://firebasestorage.googleapis.com/v0/b/nfo-app.appspot.com/o/products%2F2.png?alt=media",
      numberOfSold: 5,
      description: 'Chất liệu bên trong: Grade + đế Cao su'
          '\nChiều cao thân giày: Cổ thấp'
          '\nChiều cao gót: Gót cao vừa');
}
