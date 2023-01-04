import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => new _Login();
}

class _Login extends State<Login> {
  TextEditingController controllerusername = new TextEditingController();
  TextEditingController controllerpassword = new TextEditingController();
  var lightGreenColor = 0xff48D8A4;
  var darkGreenColor = 0xff276367;
  var darkBlueColor = 0xff182e3c;
  var bgGreenColor = 0xffDFCDCD;
  var whiteWithLightBlueColor = 0xffCDF3FF;
  bool show_pass = true;

  void error(BuildContext context, String error) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(error),
        action: SnackBarAction(
            label: 'OK', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(darkBlueColor),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            new Column(
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.arrow_back),
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          backgroundColor: Color(lightGreenColor)),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image(
                    image: AssetImage("images/logo.png"),
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "تسجيل دخول",
                      style: TextStyle(
                          fontFamily: "ElMessiri",
                          fontSize: 30,
                          color: Colors.white),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(darkGreenColor)),
                  padding: EdgeInsets.all(30),
                  height: 200,
                  child: Column(
                    children: [
                      TextField(
                        controller: controllerusername,
                        decoration: new InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  15,
                                ),
                                borderSide: BorderSide(color: Colors.white)),
                            filled: true,
                            fillColor: Color(bgGreenColor).withOpacity(0.23),
                            contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontFamily: "ElMessiri",
                            ),
                            labelText: "اسم المستخدم"),
                      ),

                      //-----------------------------------------------
                      SizedBox(
                        height: 40,
                      ),
                      TextField(
                        controller: controllerpassword,
                        obscureText: show_pass,
                        decoration: new InputDecoration(
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    show_pass = !show_pass;
                                  });
                                },
                                child: show_pass
                                    ? const Icon(Icons.visibility_off)
                                    : const Icon(Icons.visibility)),
                            filled: true,
                            fillColor: Color(bgGreenColor).withOpacity(0.23),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontFamily: "ElMessiri",
                            ),
                            labelText: "كلمة المرور"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 40,
                  width: 250,
                  child: new ElevatedButton(
                    onPressed: () {},
                    child: new Text(
                      "تسجيل دخول",
                      style: TextStyle(
                          fontFamily: "ElMessiri", color: Colors.white),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      )),
                      backgroundColor:
                          MaterialStateProperty.all(Color(darkGreenColor)),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'اعادة تعيين كلمة المرور',
                    style: TextStyle(fontFamily: "Cairo"),
                  ),
                  style: TextButton.styleFrom(
                    foregroundColor: Color(lightGreenColor),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'حساب جديد',
                        style: TextStyle(fontFamily: "Cairo"),
                      ),
                      style: TextButton.styleFrom(
                        foregroundColor: Color(lightGreenColor),
                      ),
                    ),
                    Text(
                      'لاتمتلك حساب؟ ',
                      style:
                          TextStyle(color: Colors.white, fontFamily: "Cairo"),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
