import 'package:sca/consts/colors.dart';
import 'package:sca/consts/strings.dart';
import 'package:sca/consts/styles.dart';
import 'package:sca/widget_common/applogo_widget.dart';
import 'package:sca/widget_common/custom_textfield.dart';
import 'package:sca/widget_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../widget_common/bg_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: Column(
        children: [
          (context.screenHeight * 0.1).heightBox,
          applogoWidget(),
          15.heightBox,
          "Join the $appname".text.fontFamily(bold).white.size(18).make(),
          20.heightBox,
          Column(
            children: [
              customTextField(title: name, hint: nameHint),
              customTextField(title: email, hint: emailHint),
              customTextField(title: password, hint: passwordHint),
              customTextField(title: password, hint: retypePassword),
              5.heightBox,
              Row(children: [
                Checkbox(
                    activeColor: redColor,
                    checkColor: whiteColor,
                    value: isCheck,
                    onChanged: (newValue) {
                      setState(() {
                        isCheck = newValue;
                      });
                    }),
                10.widthBox,
                Expanded(
                  child: RichText(
                      text: const TextSpan(
                    children: [
                      TextSpan(
                          text: "I agree to the ",
                          style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          )),
                      TextSpan(
                          text: termsAndCond,
                          style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          )),
                      TextSpan(
                          text: " &",
                          style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          )),
                      TextSpan(
                          text: privacyPolicy,
                          style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          )),
                    ],
                  )),
                )
              ]),
              ourButton(
                      color: isCheck == true ? redColor : lightGrey,
                      title: signup,
                      textColor: whiteColor,
                      onPress: () {})
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              10.heightBox,
              //wraping into gesture detector of velocity x
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  alreadyHaveAccount.text.color(fontGrey).make(),
                  login.text.color(redColor).make().onTap(() {
                    Get.back();
                  })
                ],
              )
            ],
          )
              .box
              .white
              .rounded
              .padding(const EdgeInsets.all(16))
              .width(context.screenWidth - 70)
              .shadowSm
              .make()
        ],
      )),
    ));
  }
}
