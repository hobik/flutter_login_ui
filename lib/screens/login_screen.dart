import 'package:basic_flutter_project_ui/components/rounded_button.dart';
import 'package:basic_flutter_project_ui/components/square_box.dart';
import 'package:basic_flutter_project_ui/constant/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/rounded_input_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
              top: 0,
              child: Opacity(
                  opacity: 0.7,
                  child: SvgPicture.asset(
                    "assets/images/wave_purple_up.svg",
                    height: 250,
                    width: 100,
                  ))),
          Column(
            children: [
              SizedBox(
                height: 200,
              ),
              //Image
              SvgPicture.asset(
                "assets/images/welcome.svg",
                height: 100,
              ),
              // SizedBox(
              //   height: 100,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(20),
                    height: 320,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Color(0xffF3F3F5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        RoundedInputField(
                          isEmail: true,
                          isPassword: false,
                          hintText: "E-mail",
                          icon: Icons.mail,
                          onChange: (value) {},
                        ),
                        RoundedInputField(
                          isEmail: false,
                          isPassword: true,
                          hintText: "Password",
                          icon: Icons.lock,
                          onChange: (value) {},
                        ),
                        Text(
                          "Forgot Password ?",
                          style: AppTextStyle.MINI_BOLD_DESCRIPTION_TEXT,
                        ),
                        RoundedButton(
                          text: "LOGIN",
                          press: () {},
                          color: Color(0xFF3F3D56),
                        )
                        //InputText
                        //InputText
                        //Text
                        //Buton
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      indent: 50,
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Or Contunie with",
                          style: AppTextStyle.MINI_DESCRIPTION_TEXT,
                        )),
                    Expanded(
                        child: Divider(
                      endIndent: 50,
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareBox(
                    imagePath: "assets/logo/google.png",
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  SquareBox(
                    imagePath: "assets/logo/apple-logo.png",
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member ?",
                    style: AppTextStyle.MINI_DEFAULT_DESCRIPTION_TEXT,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text("Register now",
                      style: AppTextStyle.MINI_DESCRIPTION_BOLD)
                ],
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
          Positioned(
              bottom: 0,
              child: Opacity(
                  opacity: 0.1,
                  child: SvgPicture.asset(
                    "assets/images/wave-grey_down.svg",
                    height: 300,
                    width: 100,
                  )))
        ],
      ),
    );
  }
}
