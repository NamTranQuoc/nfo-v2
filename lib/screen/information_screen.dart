import 'package:flutter/material.dart';
import 'package:project/component/input_custom.dart';
import 'package:project/model/product.dart';

import '../core/parse.dart';
import '../design_course/design_course_app_theme.dart';
import '../fitness_app/fitness_app_theme.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  _InformationScreen createState() => _InformationScreen();
}

class _InformationScreen extends State<InformationScreen>
    with TickerProviderStateMixin {
  final double infoHeight = 364.0;
  AnimationController? animationController;
  Animation<double>? animation;
  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;
  String typeSelect = '';
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController!,
        curve: const Interval(0, 1.0, curve: Curves.fastOutSlowIn)));
    setData();
    super.initState();
  }

  Future<void> setData() async {
    animationController?.forward();
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity1 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity2 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity3 = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double tempHeight = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).size.width / 1.2) +
        24.0;
    return Container(
      color: FitnessAppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                AspectRatio(
                    aspectRatio: 1.2,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
                      child: Image.network(
                        Product.auctionCurrent.image,
                        fit: BoxFit.fill,
                      ),
                    )),
              ],
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width / 1.2) - 24.0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: DesignCourseAppTheme.nearlyWhite,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      topRight: Radius.circular(32.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: DesignCourseAppTheme.grey.withOpacity(0.2),
                        offset: const Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: SingleChildScrollView(
                    child: Container(
                      constraints: BoxConstraints(
                          minHeight: infoHeight,
                          maxHeight: tempHeight > infoHeight
                              ? tempHeight
                              : infoHeight),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 32.0, left: 18, right: 16),
                            child: Text(
                              Product.auctionCurrent.name,
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                                letterSpacing: 0.27,
                                color: DesignCourseAppTheme.darkerText,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, bottom: 8, top: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                const Text(
                                  'Giá khởi điểm',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    letterSpacing: 0.27,
                                    color: DesignCourseAppTheme.darkerText,
                                  ),
                                ),
                                Text(
                                  formatMoney(Product.auctionCurrent.price),
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 22,
                                    letterSpacing: 0.27,
                                    color: DesignCourseAppTheme.nearlyBlue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, bottom: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    height: 64,
                                    width: MediaQuery.of(context).size.width *
                                        0.27,
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 10),
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(13.0),
                                          ),
                                          primary:
                                              DesignCourseAppTheme.nearlyBlue,
                                        ),
                                        child: const Text('Đấu giá',
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              letterSpacing: 0.27,
                                              color: DesignCourseAppTheme
                                                  .nearlyWhite,
                                            )))),
                                InputCustom(
                                  'Giá bạn mua',
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: AnimatedOpacity(
                              duration: const Duration(milliseconds: 500),
                              opacity: opacity2,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, top: 8, bottom: 8),
                                child: Text(
                                  Product.auctionCurrent.description,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 14,
                                    letterSpacing: 0.27,
                                    color: DesignCourseAppTheme.grey,
                                  ),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).padding.bottom,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width / 1.2) - 24.0 - 35,
              right: 35,
              child: ScaleTransition(
                alignment: Alignment.center,
                scale: CurvedAnimation(
                    parent: animationController!, curve: Curves.fastOutSlowIn),
                child: Card(
                  color: DesignCourseAppTheme.nearlyBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0)),
                  elevation: 10.0,
                  child: const SizedBox(
                    width: 60,
                    height: 60,
                    child: Center(
                      child: Icon(
                        Icons.favorite,
                        color: DesignCourseAppTheme.nearlyWhite,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getTimeBoxUI(String txt2) {
    bool isSelect = txt2 == typeSelect;
    return InkWell(
        splashColor: Colors.white24,
        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
        onTap: () {
          setState(() {
            typeSelect = txt2;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: isSelect
                  ? DesignCourseAppTheme.nearlyBlue
                  : DesignCourseAppTheme.nearlyWhite,
              borderRadius: const BorderRadius.all(Radius.circular(16.0)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: DesignCourseAppTheme.grey.withOpacity(0.2),
                    offset: const Offset(1.1, 1.1),
                    blurRadius: 8.0),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 18.0, right: 18.0, top: 12.0, bottom: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    txt2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 14,
                        letterSpacing: 0.27,
                        color: isSelect
                            ? DesignCourseAppTheme.nearlyWhite
                            : DesignCourseAppTheme.grey),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
