
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';







class CustomSnack{
  static init(BuildContext context,{
    required Size size, 
    required String title, 
    required String text,
    Color? backgrounds,
    Color? color,
    double? borderRadius,
    IconData? icons,
    String? assetsImage,
    bool backgroundImage = true,
    String? titleFontFamily,
    Color? titleColor,
    double? titleSize,
    FontWeight? titleFontWeight,
    String? textFontFamily,
    Color? textColor,
    double? textSize,
    FontWeight? textFontWeight,
    Color? iconColor,
    bool degradeIcon = true,
    double? iconWidth,
    bool alignCenter = true,
    TextAlign? textAlign
    }){
     final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: CustomSnackLocal(
        size: size, 
        text: text, 
        title: title, 
        backgroundImage: backgroundImage, 
        backgrounds: backgrounds, 
        color: color, 
        borderRadius: borderRadius, 
        icons: icons, 
        assetsImage: assetsImage,
        titleFontFamily: titleFontFamily,
        titleColor: titleColor,
        titleSize: titleSize,
        titleFontWeight: titleFontWeight,
        textFontFamily: textFontFamily,
        textColor: textColor,
        textSize: textSize,
        textFontWeight: textFontWeight,
        iconColor: iconColor, 
        degradeIcon: degradeIcon,
        iconWidth: iconWidth,
        alignCenter: alignCenter,
        textAlign: textAlign
      )
      
    );
    ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(snackBar);
  }
}







class CustomSnackLocal extends StatefulWidget {
  const CustomSnackLocal({
    super.key, 
    required this.size, 
    required this.text, 
    required this.title, 
    this.backgrounds, 
    this.color, 
    this.borderRadius, 
    this.icons, 
    this.assetsImage, 
    required this.backgroundImage,
    this.textColor,
    this.textFontFamily,
    this.textFontWeight,
    this.textSize,
    this.titleColor,
    this.titleFontFamily,
    this.titleFontWeight,
    this.titleSize,
    this.iconColor,
    required this.degradeIcon,
    this.iconWidth,
    this.textAlign,
    required this.alignCenter
  });

  final Size size;
  final String title;
  final String text;
  final Color? backgrounds;
  final Color? color;
  final double? borderRadius;
  final IconData? icons;
  final String? assetsImage;
  final bool backgroundImage;

  final String? titleFontFamily;
  final Color? titleColor;
  final double? titleSize;
  final FontWeight? titleFontWeight;

  final String? textFontFamily;
  final Color? textColor;
  final double? textSize;
  final FontWeight? textFontWeight;

  final Color? iconColor;
  final bool degradeIcon;
  final double? iconWidth;

  final bool alignCenter;
  final TextAlign? textAlign;

  @override
  State<CustomSnackLocal> createState() => _CustomSnackLocalState();
}

class _CustomSnackLocalState extends State<CustomSnackLocal> {
  bool stateScreen = true;
  _close(){
    setState(() {
      stateScreen = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height,
      width: widget.size.width - 40,
      child:  Visibility(
        visible: stateScreen,
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                child: Row(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 25, 0, 30),
                            child: Container(
                              width: widget.size.width - 60,
                              decoration: BoxDecoration(
                                color: widget.backgrounds ?? const Color.fromARGB(255, 172, 13, 2),
                                borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
                                image: widget.backgroundImage == true ? DecorationImage(
                                  image: AssetImage(widget.assetsImage ?? 'packages/custom_snackbar/assets/background01.png'), 
                                  fit: BoxFit.fill, 
                                )
                                : null,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                                child: Column(
                                  crossAxisAlignment: widget.alignCenter ? CrossAxisAlignment.center : CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.title,
                                      style: TextStyle(
                                        fontSize: widget.titleSize,
                                        fontWeight: widget.titleFontWeight,
                                        color: widget.titleColor,
                                        fontFamily: widget.titleFontFamily
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      widget.text,
                                      textAlign: widget.textAlign,
                                      style: TextStyle(
                                        fontSize: widget.textSize,
                                        fontWeight: widget.textFontWeight,
                                        color: widget.textColor,
                                        fontFamily: widget.textFontFamily
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: widget.iconWidth ?? widget.size.width - 120,
                            child: SizedBox(
                              height: 50,
                              width: 50,
                              child: Stack(
                                children: [
                                  SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: Center(child: SvgPicture.asset(
                                      "packages/custom_snackbar/assets/tes.svg",
                                      color: widget.color ?? const Color.fromARGB(255, 133, 9, 0),
                                    ),
                                  )),
                                  Visibility(
                                    visible: widget.degradeIcon,
                                    child: SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Center(
                                        child: Image.asset("packages/custom_snackbar/assets/deg_mensseger.png")
                                      )
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 50,
                                    child: Center(
                                      child: Icon(
                                        widget.icons ?? Icons.account_circle_rounded, 
                                        color: widget.iconColor ?? Colors.white,
                                      )
                                    )
                                  )
                                ],
                              )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 30, 0, 0),
                            child: InkWell(
                              onTap: _close,
                              child: Icon(
                                Icons.clear_outlined, size: 15,
                                color: widget.titleColor,
                              )
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
              ),
            ],
          )
      )
    );
  }
}
