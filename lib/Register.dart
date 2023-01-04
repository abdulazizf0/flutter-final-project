import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _Register createState() => _Register();
}

class _Register extends State<Register> {
  TextEditingController controllerusername = new TextEditingController();
  TextEditingController controllerpassword = new TextEditingController();
  TextEditingController controllerwmil = new TextEditingController();
  TextEditingController controllerconfpassword = new TextEditingController();
  var lightGreenColor = 0xff48D8A4;
  var darkGreenColor = 0xff276367;
  var darkBlueColor = 0xff182e3c;
  var bgGreenColor = 0xffDFCDCD;
  var whiteWithLightBlueColor = 0xffCDF3FF;
  var show_pass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(darkBlueColor),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
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
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "إنشاء حساب جديد",
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
                  height: 350,
                  child: Column(children: [
                    TextField(
                      controller: controllerusername,
                      style: TextStyle(
                          fontFamily: "ElMessiri", color: Colors.white),
                      decoration: new InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Color(darkGreenColor))),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(darkGreenColor)),
                              borderRadius: BorderRadius.circular(15)),
                          filled: true,
                          fillColor: Color(bgGreenColor).withOpacity(0.23),
                          contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                          labelText: "اسم المستخدم"),
                    ),
                    //-----------------------------------------------
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: controllerwmil,
                      style: TextStyle(
                          fontFamily: "ElMessiri", color: Colors.white),
                      decoration: new InputDecoration(
                          filled: true,
                          fillColor: Color(bgGreenColor).withOpacity(0.23),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                          labelText: "الايميل"),
                    ),
                    //------------------pasword----------------------
                    SizedBox(
                      height: 30,
                    ),
                    new TextField(
                      controller: controllerpassword,
                      style: TextStyle(
                          fontFamily: "ElMessiri", color: Colors.white),
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
                        ),
                        labelText: "كلمة المرور",
                      ),
                    ),
                    //------------------------confirmPassword--------------------
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: controllerconfpassword,
                      style: TextStyle(
                          fontFamily: "ElMessiri", color: Colors.white),
                      decoration: new InputDecoration(
                          filled: true,
                          fillColor: Color(bgGreenColor).withOpacity(0.23),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                          labelText: "اعادة كلمة المرور"),
                    ),
                  ]),
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
                      "تسجيل حساب جديد",
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
