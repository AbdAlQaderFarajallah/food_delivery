import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyanAccent,
      height: 320,
      child: PageView.builder(
        itemCount: 5,
        itemBuilder: (context, position) {
          return _pageItem(position);
        },
      ),
    );
  }

  Widget _pageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xFF69c5df),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/photo-3.jpeg'),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 140,
            margin: const EdgeInsets.only(bottom: 15, left: 40, right: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
