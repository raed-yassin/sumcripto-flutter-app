import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        centerTitle: true,
        leading: Container(child: Icon(Icons.menu)),
        title: Container(alignment: Alignment.center, child: Text("SumCripto")),
        actions: [
          IconButton(onPressed: onPressed, icon: Icon(Icons.search)),
          IconButton(onPressed: onPressed, icon: Icon(Icons.notifications)),
        ],
      ),
      body: Container(
        color: Colors.teal,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LogIn",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 40),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.white,
                      onFieldSubmitted: (value) => print(value),
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                        ),
                        labelText: "Email",
                        // hintText: "Enter Your Email"
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        hoverColor: Colors.red,

                        labelStyle: TextStyle(color: Colors.white),
                        focusColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 40),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      onFieldSubmitted: (value) => print(value),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.white,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.white,
                        ),
                        labelText: "Password",
                        // hintText: "Enter Your Email"
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: BorderSide(color: Colors.white, width: 2),
                        ),
                        labelStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: double.infinity,
                      color: Colors.black.withOpacity(.1),
                      child: MaterialButton(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        onPressed: onPressed,
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      
                      children: [
                        SizedBox(width: 5),
                        Text("Don't have an Account?"),
                        SizedBox(width: 1),
                        TextButton(
                          onPressed: () => print("object"),
                          child: Text(
                            'Register Now',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    MaterialButton(
                      padding: EdgeInsets.symmetric(
                        vertical: 20
                      ),
                      onPressed: onPressed, 
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.gpp_good_outlined,color: Colors.white,size: 23,),
                        SizedBox(width: 5,),
                        Text("Google",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18),)
                      ],
                    )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onPressed() {
    print(emailController.text);
    print(passwordController.text);
  }
}
