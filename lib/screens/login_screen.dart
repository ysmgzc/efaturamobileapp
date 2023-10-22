import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/constants/globals.dart';
import 'package:efaturamobileapp/home_screen/home_page_screen.dart';
import 'package:efaturamobileapp/models/token_model.dart';
import 'package:efaturamobileapp/screens/forgot_password_screen.dart';
import 'package:efaturamobileapp/screens/sign_up_screen.dart';
import 'package:efaturamobileapp/services/token_services.dart';
import "package:flutter/material.dart";
import 'package:shared_preferences/shared_preferences.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController uyeNoKontrol = TextEditingController();
  TokenModel? _tokenModel;

    @override
  void initState() {
    _tokenFonk();
    super.initState();
    _loadUyeNo();
  }
_loadUyeNo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      uyeNoKontrol.text = prefs.getString('member_number') ?? '';
    });

  // tokenModel= await TokenServices.tokenGive();
  // token=tokenModel.data!.token.toString();

  }
   _tokenFonk() async {
_tokenModel= await TokenServices.tokenData();
setState(() {
  token=_tokenModel!.data!.token.toString()??"";
});
 }
  _saveUyeNo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('member_number', uyeNoKontrol.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
           image: DecorationImage(
            image:const AssetImage("assets/images/newgif.gif"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
          Colors.white.withOpacity(0.7), 
          BlendMode.dstATop,
        ),
          ),
        ),
        child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.12,),
                Text(
                  'E-Fatura',
                  style: TextStyle(
                      color:const Color(0xff74A2C3),
                      fontSize: MediaQuery.of(context).size.width*0.1,
                      fontWeight: FontWeight.bold,
                      shadows:const [BoxShadow(color: Colors.white, offset: Offset(1,2),blurRadius: 3 ),],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.08,),
                  Container(
                width: MediaQuery.of(context).size.width * 0.76,
                alignment: Alignment.center,
                child: TextFormField(
                  controller: uyeNoKontrol,
                  style: const TextStyle(
                    height: 1.5,
                  ),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, top: 3),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(top: 17),
                      child: Icon(
                        Icons.assignment_ind, 
                        color: kIconColor,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: kBorderColor),   
                    ),  
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kBorderColor),
                    ),
                    label: Center(
                      child: Text("Üye Numarası"),
                    ), 
                    labelStyle: kHintTextStyle,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                Container(
                  width: MediaQuery.of(context).size.width*0.76,
                  alignment: Alignment.center,
                  child: TextFormField(
                    style:const TextStyle(
                            height: 1.5,
                            ),
                    decoration:const InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 3),
                       prefixIcon: Padding(
                         padding:  EdgeInsets.only(top: 17),
                         child: Icon(
                              Icons.person,
                              color: kIconColor,
                                  ),
                       ),
                  enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: kBorderColor),   
                      ),  
                   focusedBorder: UnderlineInputBorder(
                    
                      borderSide: BorderSide(color: kBorderColor) 
                      ),
                    label: Center(
                    child: Text("Kullanıcı"),
                  ), 
                  labelStyle: kHintTextStyle,
                  
                    ),
                  ),
                  
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                  width: MediaQuery.of(context).size.width*0.76,
                  alignment: Alignment.center,
                  child: TextFormField(
                    obscureText: true,
                    style:const TextStyle(
                            height: 1.5,
                            ),
                    decoration:const InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 3),
                       prefixIcon: Padding(
                         padding: EdgeInsets.only(top: 17),
                         child: Icon(
                              Icons.lock_outline,
                              color: kIconColor,
                                  ),
                       ),
                  enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: kBorderColor),   
                      ),  
                   focusedBorder: UnderlineInputBorder(
                    
                      borderSide: BorderSide(color: kBorderColor) 
                      ),
                    label: Center(
                    child: Text("Şifre"),
                  ), 
                  labelStyle: kHintTextStyle,
                  
                    ),
                  ),
                  
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                width: MediaQuery.of(context).size.width * 0.76,
                alignment: Alignment.center,
                child: DropdownButtonFormField<String>(
                  icon: const SizedBox.shrink(),
                  decoration:const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, top: 3),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(top: 17),
                      child: Icon(
                        Icons.unfold_more,
                        color: kIconColor,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: kBorderColor),   
                    ),  
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kBorderColor),
                    ),
                    label: Center(
                      child: Text("Yıl"),
                    ),
                    labelStyle: kHintTextStyle,
                  ),
                  items: ["2020", "2021", "2022", "2023"]
                      .map((label) => DropdownMenuItem(
                            child: Text(label),
                            value: label,
                          ))
                      .toList(),
                  onChanged: (value) {
                    print(value);
                  },
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                 Container(
                width: MediaQuery.of(context).size.width * 0.76,
                alignment: Alignment.center,
                child: DropdownButtonFormField<String>(
                  icon: const SizedBox.shrink(),
                  decoration:const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, top: 3),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(top: 17),
                      child: Icon(
                        Icons.unfold_more,
                        color: kIconColor,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: kBorderColor),   
                    ),  
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kBorderColor),
                    ),
                    label: Center(
                      child: Text("Dönem"),
                    ),
                    labelStyle: kHintTextStyle,
                  ),
                  items: ["2020", "2021", "2022", "2023"]
                      .map((label) => DropdownMenuItem(
                            child: Text(label),
                            value: label,
                          ))
                      .toList(),
                  onChanged: (value) {
                    print(value);
                  },
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  alignment: Alignment.center,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     GestureDetector(
                onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                             const ForgotPassword(),
                        ),
                      );
                    },
                child:const Text(
                  "Şifremi Unuttum",
                  style: TextStyle(color: Colors.grey,decoration: TextDecoration.underline,fontSize:kInputFontSize ),
                ),
              )
                 
                  ],
                              ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                GestureDetector(
                  onTap: () {
                    _saveUyeNo();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                            const  HomePageScreen(),
                        ),
                      );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.4,
                    padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.02,),
                    decoration:const BoxDecoration(
                      color: kButtonColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [BoxShadow(color: Colors.black26,
                      offset: Offset(3, 3),
                      blurRadius: 5,
                      )]
                    ),
                    child: Center(
                      child: Text('Giriş Yap',
                      style: TextStyle(color: kTextColor,
                      fontSize: MediaQuery.of(context).size.width*0.05),),),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.055,),
                GestureDetector(
                  onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                            const  SignUp(),
                        ),
                      );
                    },
                  child: RichText(
                    textAlign: TextAlign.center,
                    text:const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Hesabınız yok mu? ',
                        style: TextStyle(
                          color: Colors.grey, 
                         fontSize: kInputFontSize,
                        )
                      ),
                      TextSpan(
                        text: 'Kaydol',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: kInputFontSize,
                          fontWeight: FontWeight.bold,
                        )
                      )
                    ]
                  
                  ), 
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}