import 'package:chat_vibe/Pages/Auth/LoginForm.dart';
import 'package:chat_vibe/Pages/Auth/SignupForm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Authpage extends StatelessWidget {
  const Authpage({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isLogin = true.obs;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/Images/ChatVibe.png",
                  width: 80,
                  height: 80,
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Chat Vibe",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: 50),
            Obx(
              () => Container(
                height: 70,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          isLogin.value = true;
                        },
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: isLogin.value
                                ? Theme.of(context).colorScheme.primaryContainer
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "Login",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(
                                    color: isLogin.value
                                        ? Colors.white
                                        : Theme.of(context)
                                            .colorScheme
                                            .primaryContainer,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          isLogin.value = false;
                        },
                        child: Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: isLogin.value
                                ? Colors.transparent
                                : Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "Signup",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(
                                    color: isLogin.value
                                        ? Theme.of(context)
                                            .colorScheme
                                            .primaryContainer
                                        : Colors.white,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Obx(() => Container(
                  // height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  child: isLogin.value ? LoginForm() : SignupForm(),
                )),
          ],
        ),
      ),
    );
  }
}
