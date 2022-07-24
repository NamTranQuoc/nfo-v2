class PopularFilterListData {
  PopularFilterListData({
    this.titleTxt = '',
    this.isSelected = false,
  });

  String titleTxt;
  bool isSelected;

  static List<PopularFilterListData> popularFList = <PopularFilterListData>[
    PopularFilterListData(
      titleTxt: 'Miễn phí giao hàng',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Hỏa tốc',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Chính hãng',
      isSelected: true,
    ),
    PopularFilterListData(
      titleTxt: 'Giày',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Áo',
      isSelected: false,
    ),
  ];

  static List<PopularFilterListData> accomodationList = [
    PopularFilterListData(
      titleTxt: 'All',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Apartment',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Home',
      isSelected: true,
    ),
    PopularFilterListData(
      titleTxt: 'Villa',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Hotel',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Resort',
      isSelected: false,
    ),
  ];
}
