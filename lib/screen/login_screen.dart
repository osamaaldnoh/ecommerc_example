import 'package:ecommerc_example/screen/type_addmin_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/textfield_widget.dart';

class LoginScreen extends StatelessWidget {

  static const routeName = 'login_screen';


  late final String email,password;
  final GlobalKey<FormState> formKey = GlobalKey();

  void onSave()
  {
    formKey.currentState!.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCEDDEE),
      body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Spacer(),
                Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Color(0xFF475269).withOpacity(0.8),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),


                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onTap: () {},
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: inputDecoration(
                    'Email',
                    Icon(Icons.alternate_email_outlined,
                      color: Color(0xFF475269),
                    ),
                  ),
                  validator: (val)
                  {
                    if(val!.isEmpty)
                    {
                      return 'Please Input your email';
                    }
                    return null;
                  },
                  onChanged: (value)
                  {
                    email = value;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(

                  onTap: () {},
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: inputDecoration(
                    'Password',
                    Icon(Icons.vpn_key_outlined,
                      color: Color(0xFF475269),
                    ),
                  ),
                  validator: (val)
                  {
                    if(val!.isEmpty)
                    {
                      return 'Please Input your Password';
                    }
                    return null;
                  },
                  onChanged: (value)
                  {
                    password = value;
                  },
                ),
                SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25,),
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.pushNamed(context, TypeAddminScreen.routeName);
                      },
                    child: Text('Login',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    color: Color(0xFF475269),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 55,
                    textColor: Color(0xFFF5F9FD),
                    minWidth: double.infinity,
                    splashColor: Color(0xFFCEDDEE),
                  ),
                ),

                Spacer(),
              ],
            ),
          )),
    );
  }
}
