import 'package:flutter/material.dart';

class fomepage extends StatefulWidget {
  const fomepage({super.key});

  @override
  State<fomepage> createState() => _fomepageState();
}

class _fomepageState extends State<fomepage> {
  int WEIGHT = 50;
  int AGE = 5;
  double height = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.sort_sharp,
          color: Color(0xff9C9DA5),
          size: 30,
        ),
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff0A0D22),
      ),
      backgroundColor: Color(0xff0A0D22),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  children: [
                    Expanded(
                      child: malecard(
                        text: 'male',
                        icon: Icon(
                          Icons.male,
                          size: 90,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 13),
                    Expanded(
                        child: malecard(
                      icon: Icon(
                        Icons.female,
                        size: 90,
                        color: Colors.white,
                      ),
                      text: 'female',
                    )),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff1D1F33),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      children: [
                        Text(
                          'HEIGHT',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w100),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              height.toStringAsFixed(2),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                              ),
                            ),
                            SizedBox(
                              height: 35,
                              child: Text(
                                'cm',
                                style: TextStyle(
                                    color: Color(0xff7F808A), fontSize: 30),
                              ),
                            ),
                          ],
                        ),
                        Slider(
                          value: height,
                          min: 30,
                          max: 200,
                          activeColor: Color(0xffFFFFFF),
                          inactiveColor: Color(0xff7C7D88),
                          thumbColor: Color(0xffEB1555),
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        decoration: BoxDecoration(
                            color: Color(0xff1D1F33),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w100),
                            ),
                            Text(
                              WEIGHT.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      if (WEIGHT > 0) {
                                        WEIGHT--;
                                      }
                                      setState(() {});
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xff1C1F32),
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(15)),
                                    child: Icon(
                                      Icons.remove,
                                      color: Color.fromARGB(255, 242, 242, 248),
                                    )),
                                SizedBox(
                                  width: 30,
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      WEIGHT++;
                                      setState(() {});
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xff1C1F32),
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(15)),
                                    child: Icon(Icons.add, color: Colors.white))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 13),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        decoration: BoxDecoration(
                            color: Color(0xff1D1F33),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w100),
                            ),
                            Text(
                              AGE.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      if (AGE > 0) {
                                        AGE--;
                                      }
                                      setState(() {});
                                    },
                                    style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        backgroundColor: Color(0xff1C1F32),
                                        padding: EdgeInsets.all(15)),
                                    child: Icon(Icons.remove,
                                        color: Colors.white)),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xff1C1F32),
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(15)),
                                  onPressed: () {
                                    AGE++;
                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              height: 66,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffEB1555),
                    shape: ContinuousRectangleBorder()),
                onPressed: () {},
                child: Text(
                  'CALCULATE YOUR BMI',
                  style: TextStyle(color: Color(0xffFFFFFF), fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class malecard extends StatelessWidget {
  const malecard({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff1D1F33),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        icon,
        Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 25),
        )
      ]),
    );
  }
}
