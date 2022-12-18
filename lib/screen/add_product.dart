import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../component/common.dart';
import '../design_course/design_course_app_theme.dart';
import '../hotel_booking/hotel_app_theme.dart';
import '../model/category.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  List<String> images = [
    "assets/images/inviteImage.png",
    "assets/images/feedbackImage.png",
    "assets/images/addImage.png",];
  TextEditingController name = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController quantity = TextEditingController();
  TextEditingController category = TextEditingController();

  final List<Map<String, dynamic>> _categories = Category.categories.map((e) => e.toMap()).toList();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double widthImage = (MediaQuery.of(context).size.width / 3) - 30;
    return Container(
      color: HotelAppTheme.buildLightTheme().backgroundColor,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            getAppBarUI(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    listImage(widthImage),
                    textField("Tên sản phẩm", name, type: TextInputType.text),
                    textField("Giá bán", price, type: TextInputType.number),
                    textField("Số lượng", quantity, type: TextInputType.number),
                    textField("Mô tả", description, type: TextInputType.multiline, maxLine: 4),
                    selectField("Ngành hàng", category, _categories)
                  ],
                ),
              ),
            ),
            const Divider(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 48, top: 8),
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  color: DesignCourseAppTheme.nearlyBlue,
                  borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      blurRadius: 8,
                      offset: const Offset(4, 4),
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Center(
                      child: Text(
                        'Thêm',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget listImage(double width) {
    return Column(
      children: buildImage(width),
    );
  }

  List<Widget> buildImage(double width) {
    List<Widget> widgets = [];
    List<Widget> items = [];
    for (var i = 0; i < images.length; i++) {
      items.add(Container(
          width: width,
          height: width,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              border: Border.all(color: Colors.blueAccent)
          ),
          child: AspectRatio(
            aspectRatio: 1.0,
            child: Image.asset(images.elementAt(i)),
          )));
      if (items.length == 3) {
        widgets.add(Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: items,
        ));
        items = [];
      }
    }
    if (items.length != 3) {
      widgets.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items,
      ));
      items = [];
    }
    return widgets;
  }

  Widget getAppBarUI() {
    return Container(
      decoration: BoxDecoration(
        color: HotelAppTheme.buildLightTheme().backgroundColor,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(0, 2),
              blurRadius: 4.0),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top, left: 8, right: 8),
        child: Row(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              width: AppBar().preferredSize.height + 40,
              height: AppBar().preferredSize.height,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.close),
                  ),
                ),
              ),
            ),
            const Expanded(
              child: Center(
                child: Text(
                  'Thêm sản phẩm',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: AppBar().preferredSize.height + 40,
              height: AppBar().preferredSize.height,
            )
          ],
        ),
      ),
    );
  }
}
