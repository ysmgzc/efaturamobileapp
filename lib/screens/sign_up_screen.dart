import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/home_screen/home_page_screen.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {
      bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/newgif.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
            child: Column(
              children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.09,),
                Text(
                  'E-Fatura',
                  style: TextStyle(
                      color: const Color(0xff74A2C3),
                      fontSize: MediaQuery.of(context).size.width*0.1,
                      fontWeight: FontWeight.bold,
                      shadows:const [BoxShadow(color: Colors.white, offset: Offset(1,2),blurRadius: 3 ),],
                  ),
                ),
               SizedBox(height: MediaQuery.of(context).size.height*0.06,),

                signupcontainer(context,Icons.person,"Ad*"),
                signupcontainer(context,Icons.person,"Soyad*"),
                signupcontainer(context,Icons.business_center,"Şirket Adı*"),
                signupcontainer(context,Icons.mail,"E-posta*"),
                signupcontainer(context, Icons.lock_outline,"Şifre*"),
                signupcontainer(context, Icons.lock_outline,"Şifre* (Tekrar)"),
                signupcontainer(context,Icons.phone,"Telefon"),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                  Row(
                   mainAxisAlignment: MainAxisAlignment.end,
         children: [
           Checkbox(      
            checkColor: Colors.white,
           side: MaterialStateBorderSide.resolveWith(
             (states) => const BorderSide(width: 1.0, color: kBorderColor),
              ),
            value: value,
            onChanged: (bool? value) {
            setState(() {
            this.value = value;
             });
             },
             ),
           Container(
              width: MediaQuery.of(context).size.width*0.8,
              alignment: Alignment.center,
               child: Row(
                children: [
               GestureDetector(
            onTap: () {
                /* Navigator.push(
                     context,
                     MaterialPageRoute(
                     builder: (context) =>
                       sozlesme(),
                    ),
                );*/
                    },
                child:const Text(
                  "Üyelik Sözleşmesini Kabul Ediyorum",
                  style: TextStyle(color:  Colors.grey,decoration: TextDecoration.underline,fontSize: kInputFontSize),
                ),
              )
                  ],
                              ),
                ),
         ],
                ),
                 SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                GestureDetector(
                 onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                           const   HomePageScreen(),
                        ),
                      );
                    },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    padding: EdgeInsets.all(
                      MediaQuery.of(context).size.width * 0.02,
                    ),
                    decoration:
                       const BoxDecoration(color: kButtonColor, 
                        borderRadius: BorderRadius.all(Radius.circular(20)), 
                        boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(3, 3),
                        blurRadius: 5,
                      )
                    ]),
                    child: Center(
                      child: Text(
                        'Kaydol',
                        style: TextStyle(color: kTextColor, fontSize: MediaQuery.of(context).size.width * 0.05),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.055,
                ),
                RichText(
                    text:const TextSpan(
                  text: 'Sosyal hesabınızı bağlayabilirsiniz.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                )),
                 SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration:const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        )
                      ],
                      image: DecorationImage(
                            image: AssetImage(
                              'assets/icons/g.png'
                            )
                      )
                    ),
                  ),
                ),
                  SizedBox(
                  width: MediaQuery.of(context).size.width * 0.04,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration:const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        )
                      ],
                      image: DecorationImage(
                            image: AssetImage(
                              'assets/icons/f.png'
                            )
                      )
                    ),
                  ),
                ),
                 SizedBox(
                  width: MediaQuery.of(context).size.width * 0.04,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration:const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        )
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/icons/t.png',
                              
                            )
                            
                      )
                    ),
                  ),
                ),
              ],
             ),
             SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
              ],
            ),
          ),
        ),
    );
  }

  Container signupcontainer(BuildContext context, IconData icon, String text) {
    return Container(
                width: MediaQuery.of(context).size.width * 0.76,
                alignment: Alignment.center,
                child: TextFormField(
                  style: const TextStyle(
                    height: 1.5,
                  ),
                  decoration: InputDecoration(
                    contentPadding:const EdgeInsets.only(left: 10, top: 10, bottom: 15),
                    prefixIcon: Padding(
                      padding:const  EdgeInsets.only(top: 17),
                      child: Icon(
                        icon,
                        color: kIconColor,
                      ),
                    ),
                    enabledBorder:const UnderlineInputBorder(
                      borderSide: BorderSide(color: kBorderColor),
                    ),
                    focusedBorder:const UnderlineInputBorder(borderSide: BorderSide(color: kBorderColor)),
                    label:  Center(
                      child: Text(text),
                    ),
                    labelStyle:kHintTextStyle,
                  ),
                ),
              );
  }
}
