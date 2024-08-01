import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplacePage extends StatelessWidget {
  const SplacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enjoy the",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      Text(
                        "convenience",
                        style: TextStyle(
                            color: Color(0xffFF7F3E),
                            fontSize: 32,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "communicating",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      Text(
                        "easily and for free",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Image.asset(
              "assets/Images/SplaceImage.png",
              width: 280,
              height: 340,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 20),
            Text(
              "Perfect solution of connect with anyone",
              style: TextStyle(color: Color(0xff9E9E9E)),
            ),
            Center(
                child: Text(
              "easily and more secure",
              style: TextStyle(color: Color(0xff9E9E9E)),
            )),
            SizedBox(height: 60),
           
              InkWell(
                onTap: (){
                  Get.toNamed('/authPage');
                },
                child: Container(
                
                  height: 60,
                  width: 280,
                  decoration: BoxDecoration(
                      color: Color(0xffFF7F3E),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "Get Started",
                    style: Theme.of(context).textTheme.headlineMedium,
                  )),
                ),
              ),
            
          ],
        ),
      )),
    );
  }
}
