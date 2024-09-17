
import 'package:beautyshop/data/detail.dart';
import 'package:beautyshop/pages/goggle_fonts.dart';
import 'package:beautyshop/pages/sucessful.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class Payment extends StatelessWidget {
  Payment({super.key});

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: B,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: BG2, width: 3),
                    ),
                    child: Icon(Icons.arrow_back, color: BG2, size: 33),
                  ),
                ),
                Gap(50),
                Text(
                  'Payment Method',
                  style: myStyle(30,BG2
                  ),
                ),
              ],
            ),
            Gap(30),
            Container(
                width: double.infinity,
                height: 280,
                child: Image(image: AssetImage("assets/image/payment.jpg"),fit: BoxFit.cover,)),
            Gap(30),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Type of Card',
                      labelStyle: style(15,BG2,FontWeight.bold),
                      filled: true,
                      fillColor: BG,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter name of card";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Card Number',
                      labelStyle: style(15,BG2,FontWeight.bold),
                      filled: true,
                      fillColor:BG,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter card number";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Expiration Date',
                            labelStyle: style(15,BG2,FontWeight.bold),
                            filled: true,
                            fillColor: BG,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter  date";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.datetime,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'CVC',
                            labelStyle: style(15,BG2,FontWeight.bold),
                            filled: true,
                            fillColor: BG,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter cvc";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Gap(30),
            ListView.builder(
              itemCount: 1,
              shrinkWrap: true,
              itemBuilder: (context,index){
                return ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false){
                      Get.to(SuccessfulPage(detail1: products[index],));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    backgroundColor: BG2,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Add Card', style: style(20,Colors.white)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
