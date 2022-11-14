import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/provider/login_provider.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<LoginProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextField(
              controller:  _emailController,
              decoration: InputDecoration(
                hintText: 'email',
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              controller:  _passwordController,
              decoration: InputDecoration(
                hintText: 'password',
              ),
            ),
            SizedBox(height: 15,),

            InkWell(
              onTap: (){
                authProvider.login(_emailController.text, _passwordController.text);
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red
                ),
                child: Center(
                  child:  authProvider.isLoading ? CircularProgressIndicator(color: Colors.white,) : Text('Login',style: TextStyle(color: Colors.white),)),
                )
              ),

          ],
        ),
      ),
    );
  }
}
