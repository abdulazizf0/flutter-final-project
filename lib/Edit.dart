import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  // const MyHomePage({super.key, required this.title});

  // final String title;

  @override
  _Edit createState() => _Edit();
}

class _Edit extends State<Edit> {
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
            Column(
              children: [
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
                  height: 60,
                ),
                Text(
                  "تعديل",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontFamily: "ElMessiri",
                      fontSize: 30,
                      color: Colors.white),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(darkGreenColor)),
                  padding: EdgeInsets.all(30),
                  height: 270,
                  child: Column(
                    children: [
                      TextField(
                        controller: controllerusername,
                        decoration: new InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  15,
                                ),
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
                                color: Colors.white, fontFamily: "ElMessiri"),
                            labelText: "اسم المستخدم"),
                      ),

                      //-----------------------------------------------
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        controller: controllerwmil,
                        decoration: new InputDecoration(
                            filled: true,
                            fillColor: Color(bgGreenColor).withOpacity(0.23),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            labelStyle: TextStyle(
                                color: Colors.white, fontFamily: "ElMessiri"),
                            labelText: "الايميل"),
                      ),

                      //------------------pasword----------------------
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
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
                              color: Colors.white, fontFamily: "ElMessiri"),
                          labelText: "كلمة المرور",
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 40,
                  width: 250,
                  child: new ElevatedButton(
                    onPressed: () {},
                    child: new Text(
                      "تعديل",
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
