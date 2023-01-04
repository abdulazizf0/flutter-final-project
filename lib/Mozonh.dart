import 'package:flutter/material.dart';

class Mozonh extends StatefulWidget {
  // const MyHomePage({super.key, required this.title});
  @override
  _Mozonh createState() => _Mozonh();
}

class _Mozonh extends State<Mozonh> {
  TextEditingController controllerhigh_school = new TextEditingController();
  TextEditingController controller8drat = new TextEditingController();
  TextEditingController controllthcele = new TextEditingController();
  TextEditingController controllerstep = new TextEditingController();
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
          children: [
            new Column(
              children: [
                SizedBox(
                  height: 15,
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
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "حساب النسبة الموزونة",
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
                  child: Column(
                    children: [
                      TextField(
                        controller: controllerhigh_school,
                        decoration: new InputDecoration(
                            border: OutlineInputBorder(
                              // borderSide:
                              //     BorderSide(width: 2, color: Colors.yellow),
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),
                            // focusedBorder: OutlineInputBorder(
                            //     borderSide:
                            //         BorderSide(color: Color(darkGreenColor)),
                            //     borderRadius: BorderRadius.circular(20)),
                            filled: true,
                            fillColor: Color(bgGreenColor).withOpacity(0.23),
                            contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            labelStyle: TextStyle(
                              fontFamily: "ElMessiri",
                              color: Colors.white,
                            ),
                            labelText: "نسبة الثنوي"),
                      ),
                      //-----------------------------------------------
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        controller: controller8drat,
                        decoration: new InputDecoration(
                            filled: true,
                            fillColor: Color(bgGreenColor).withOpacity(0.23),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                            labelStyle: TextStyle(
                              fontFamily: "ElMessiri",
                              color: Colors.white,
                            ),
                            labelText: "نسبة القدرات"),
                      ),
                      //------------------pasword----------------------
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        controller: controllthcele,
                        decoration: new InputDecoration(
                          filled: true,
                          fillColor: Color(bgGreenColor).withOpacity(0.23),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          labelStyle: TextStyle(
                            fontFamily: "ElMessiri",
                            color: Colors.white,
                          ),
                          labelText: "نسبة التحصيلي",
                        ),
                      ),

                      //------------------------confirmPassword--------------------
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                          obscureText: true,
                          controller: controllerstep,
                          decoration: new InputDecoration(
                              filled: true,
                              fillColor: Color(bgGreenColor).withOpacity(0.23),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              contentPadding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              hintStyle: TextStyle(
                                fontFamily: "ElMessiri",
                                color: Colors.white,
                                fontSize: 10,
                              ),
                              hintText:
                                  "فقط للتخصصات الصحية في جامعة الامام STEP نسبة")),
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
                      "حفظ",
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
