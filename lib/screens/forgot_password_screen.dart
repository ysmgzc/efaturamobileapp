import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
                SizedBox(height: MediaQuery.of(context).size.height*0.15,),
                Text(
                  'Şifrenizi mi unuttunuz?',
                  style: TextStyle(
                      color:const Color(0xff74A2C3),
                      fontSize: MediaQuery.of(context).size.width*0.05,
                      fontWeight: FontWeight.bold,
                      shadows:const [BoxShadow(color: Colors.white, offset: Offset(1,2),blurRadius: 3 ),],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                 Text(
                "Lütfen e-postanızı girin. \nHesabınıza girebilmeniz için size bir bağlantı göndereceğiz",
                textAlign: TextAlign.center,
                style: TextStyle(
                  
                      color: Colors.grey,
                      fontSize: MediaQuery.of(context).size.width*0.03,
                      
                      ),
              ),
                SizedBox(height: MediaQuery.of(context).size.height*0.11,),
                Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  alignment: Alignment.center,
                  child: TextFormField(
                    style:const TextStyle(
                            height: 1.5,
                            ),
                    decoration:const InputDecoration(
                      contentPadding:
                      EdgeInsets.only(left: 10, top: 10, bottom: 15),
                       prefixIcon: Padding(
                         padding: EdgeInsets.only(top: 17),
                         child: Icon(
                              Icons.mail_outline,
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
                    child: Text("E-posta"),
                  ), 
                  labelStyle: kHintTextStyle,
                  
                    ),
                  ),
                  
                ),
              SizedBox(height: MediaQuery.of(context).size.height*0.06,),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.4,
                    padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.02,),
                    decoration:const BoxDecoration(
                      color: kButtonColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [BoxShadow(color: Colors.black26,
                      offset: Offset(3, 3),
                      blurRadius: 5,
                      ),],
                    ),
                    child: Center(
                      child: Text('Şifremi Sıfırla',
                      style: TextStyle(color: kTextColor,
                      fontSize: MediaQuery.of(context).size.width*0.05),),),
                  ),
                ),
              ],
            ),
    ),
        ),
        );
    
  }
}