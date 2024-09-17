
import 'package:beautyshop/pages/botton.dart';
import 'package:beautyshop/pages/goggle_fonts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Beauty extends StatelessWidget {
  const Beauty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [BG, BG2],
                ),
              ),
              child: Column(
                children: [
                  Gap(20),
                  Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/image/fell.png"),fit: BoxFit.cover)
                    ),
                  ),
                  Gap(10),
                  Container(
                    width: double.infinity,
                    height: 430,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/image/fe.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "What things do you buy that make you look and feel more beautiful",
                      style:myStyle(20,third),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (builder) => CustomBottomNavBar()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: third, width: 4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Let's Choose", style: myStyle(25, third)),
                          Icon(Icons.arrow_forward, color: third, size: 25),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


