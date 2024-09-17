
import 'package:beautyshop/pages/goggle_fonts.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool pickAll = false;
  bool isFoundationSelected = false;
  bool isEyeshadowSelected = false;
  bool isPerfumeSelected = false;
  bool isBlushSelected = false;
  bool isFacecareSelected = false;
  bool isTonerSelected= false;
  bool isLipstickSelected = false;
  bool isCosmaticSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: B,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.all(16),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage("assets/images/gowent.png"),fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Text("Select Your Beauty Products", style: myStyle(30,BG2)),
            SizedBox(height: 10),
            Text("Can select more than one", style: style(23, BG2.withOpacity(0.9))),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  pickAll = !pickAll;
                  isFacecareSelected = pickAll;
                  isEyeshadowSelected = pickAll;
                  isPerfumeSelected = pickAll;
                  isBlushSelected= pickAll;
                  isFacecareSelected = pickAll;
                  isTonerSelected= pickAll;
                  isLipstickSelected= pickAll;
                  isCosmaticSelected = pickAll;
                });
              },
              child: Row(
                children: [
                  Card(
                    color: pickAll ? BG2 : BG,
                    child: Container(
                      height: 25,
                      width: 35,
                      decoration: BoxDecoration(
                        border: Border.all(color: BG2, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Text("Select All", style: style(25,BG2)),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildProductContainer(
                  "Foundation",
                  "assets/image/fundation.png",
                  isFoundationSelected,
                      () {
                    setState(() {
                      isFoundationSelected = !isFoundationSelected;
                    });
                  },
                ),
                buildProductContainer(
                  "Eyeshadow",
                  "assets/image/eye.png",
                  isEyeshadowSelected,
                      () {
                    setState(() {
                      isEyeshadowSelected = !isEyeshadowSelected;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildProductContainer(
                  "Blush",
                  "assets/image/blus-removebg-preview.png",
                  isBlushSelected,
                      () {
                    setState(() {
                      isBlushSelected = !isBlushSelected;
                    });
                  },
                ),
                buildProductContainer(
                  "Perfume",
                  "assets/image/perfume.png",
                  isPerfumeSelected,
                      () {
                    setState(() {
                      isPerfumeSelected = !isPerfumeSelected;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildProductContainer(
                  "Face Care",
                  "assets/image/facecare.png",
                  isFacecareSelected,
                      () {
                    setState(() {
                      isFacecareSelected = !isFacecareSelected;
                    });
                  },
                ),
                buildProductContainer(
                  "Lipstick",
                  "assets/image/lipstick-removebg-preview.png",
                  isLipstickSelected,
                      () {
                    setState(() {
                      isLipstickSelected = !isLipstickSelected;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildProductContainer(
                  "Toner",
                  "assets/image/toner-removebg-preview.png",
                  isTonerSelected,
                      () {
                    setState(() {
                      isTonerSelected = !isTonerSelected;
                    });
                  },
                ),
                buildProductContainer(
                  "Cosmetic",
                  "assets/image/cosmatic.png",
                  isCosmaticSelected,
                      () {
                    setState(() {
                      isCosmaticSelected = !isCosmaticSelected;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProductContainer(String title, String imagePath, bool isSelected, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        width: 160,
        decoration: BoxDecoration(
          color: isSelected ? BG2 : B,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: BG2, width: 3),
        ),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 45,
              child: Image.asset(imagePath),
            ),
            Text(title, style: style(18,isSelected ? Colors.white : BG2)),
          ],
        ),
      ),
    );
  }
}
