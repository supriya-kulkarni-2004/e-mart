import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/widgets_common/applogo_widget.dart';
import 'package:e_mart/widgets_common/bg_widget.dart';
import 'package:e_mart/widgets_common/custom_textfield.dart';
import 'package:e_mart/widgets_common/our_button.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Join the $appname".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(hint: nameHint, title: name),
                customTextField(hint: emailHint, title: email),
                customTextField(hint: passwordHint, title: password),
                customTextField(hint: passwordHint, title: retypepassword),
                10.heightBox,
                Row(
                  children: [
                    Checkbox(
                      checkColor: redColor,
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue;
                        });
                      },
                    ),
                    10.widthBox,
                    Expanded(
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                          text: "I agree to the ",
                          style:
                              TextStyle(fontFamily: regular, color: fontGrey),
                        ),
                        TextSpan(
                          text: termAndCondition,
                          style:
                              TextStyle(fontFamily: regular, color: redColor),
                        ),
                        TextSpan(
                          text: " & ",
                          style:
                              TextStyle(fontFamily: regular, color: fontGrey),
                        ),
                        TextSpan(
                          text: privacyPolicy,
                          style:
                              TextStyle(fontFamily: regular, color: redColor),
                        )
                      ])),
                    ),
                  ],
                ),
                20.heightBox,
                ourButton(
                  color: isCheck == true ? redColor : lightGrey,
                  title: signup,
                  textColor: whiteColor,
                  onPress: () {},
                ).box.width(context.screenWidth - 50).make(),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
            10.heightBox,

            //wrappiing into Guesture Detextor of Velocity X
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                alreadyHaveAccount.text.color(fontGrey).make(),
                login.text.color(redColor).make().onTap(() {
                  Get.back();
                }),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
