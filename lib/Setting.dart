import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  var lightGreenColor = 0xff48D8A4;
  var darkGreenColor = 0xff276367;
  var darkBlueColor = 0xff182e3c;
  var bgGreenColor = 0xffDFCDCD;
  var whiteWithLightBlueColor = 0xffCDF3FF;
  bool state = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(darkBlueColor),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
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
            Text(
              "الإعدادات",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Cairo",
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(darkGreenColor)),
              padding: EdgeInsets.all(10),
              height: 152,
              width: 300,
              child: Column(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image(
                          image: AssetImage("images/businessman1.png"),
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'User',
                            style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 30,
                                color: Colors.white),
                          ),
                          Text(
                            'aa@hotmail.com',
                            style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.edit),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            backgroundColor: Colors.blueAccent),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(darkGreenColor)),
              padding: EdgeInsets.all(20),
              height: 350,
              width: 300,
              child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(bgGreenColor).withOpacity(0.23)),
                      height: 50,
                      width: 250,
                      child: Row(
                        children: [
                          Switch(
                            value: state,
                            onChanged: (state) {},
                            activeColor: Color.fromARGB(255, 50, 241, 47),
                          ),
                          SizedBox(
                            width: 75,
                          ),
                          Text(
                            'الاشعارات',
                            style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/logo_notification.png'))
                        ],
                      )),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(bgGreenColor).withOpacity(0.23)),
                      height: 50,
                      width: 250,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 0,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              )),
                          SizedBox(
                            width: 93,
                          ),
                          Text(
                            'مساعدة',
                            style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/logo_about_.png'))
                        ],
                      )),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(bgGreenColor).withOpacity(0.23)),
                      height: 50,
                      width: 250,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    backgroundColor: Color(darkGreenColor),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(50))),
                                    builder: (context) => (Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.all(10),
                                                  child: ElevatedButton(
                                                    onPressed: () =>
                                                        Navigator.pop(context),
                                                    child: Icon(Icons
                                                        .arrow_upward_rounded),
                                                    style: ElevatedButton.styleFrom(
                                                        shape: CircleBorder(),
                                                        backgroundColor: Color(
                                                            lightGreenColor)),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Container(
                                              height: 300,
                                              width: 400,
                                              child: Padding(
                                                  padding: EdgeInsets.all(20),
                                                  child: Text(
                                                    "نحن طلاب كلية الاتصالات تخصص برمجيات أنشأنا هذ التطبيق لإستهداف خريجين الثانوي لتحديد مسارهم الجامعي   و التخصصات المناسبة لهم  ومعرفة نسب القبول تخصصات الجامعية بالرياض ومعرفة درجاته الموزونة النهائية ومعرفة الطالب الجامعي  معدلة الجامعي",
                                                    style: TextStyle(
                                                      fontFamily: "Cairo",
                                                      fontSize: 20,
                                                      color: Colors.white,
                                                    ),
                                                  )),
                                            ),
                                          ],
                                        )));
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              )),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            'من نحن ؟',
                            style: TextStyle(
                                fontFamily: "Cairo",
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/logo_help.png'))
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
