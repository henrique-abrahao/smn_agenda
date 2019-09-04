import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class MyCarrosselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200.0,
        width: 350.0,
        child: Carousel(
          images: [
            Image.asset('assets/logo.png'),
            Image.asset('assets/image1jpg.jpg'),
            Image.asset('assets/image2jpeg.jpg')
          ],
          boxFit: BoxFit.fill,
          dotSize: 4.0,
          dotSpacing: 15.0,
          dotColor: Colors.white70,
          indicatorBgPadding: 5.0,
          dotBgColor: Colors.purple.withOpacity(0.5),
          borderRadius: true,
        ));
  }
}
