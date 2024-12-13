import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final translator = GoogleTranslator();
  Translation? translation;
  Translation? translation2;
  Translation? translation3;
  Translation? translation4;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    translate();
  }

  void translate() async {
    final translator = GoogleTranslator();
    await translator
        .translate("What is type of your case?", to: 'ur')
        .then((result) => translation = result);
    await translator
        .translate("Answer here", to: 'ur')
        .then((result) => translation2 = result);
    await translator
        .translate("In which city do you live in?", to: 'ur')
        .then((result) => translation3 = result);

    await translator
        .translate("How much can you pay for fees?", to: 'ur')
        .then((result) => translation4 = result);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  "Fill these requirements",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      width: 280,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "What is type of your case?",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              textAlign: TextAlign.right,
                              "${translation?.text}",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      alignment: Alignment.centerRight,
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.play_circle,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          Text("Play"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: double.infinity,
                child: TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.mic),
                    label: Container(
                      alignment: Alignment.centerRight,
                      child: Text("${translation2?.text}"),
                    ),
                    border: OutlineInputBorder(),
                    focusColor: Colors.black,
                    focusedBorder: OutlineInputBorder(),
                  ),
                  style: TextStyle(),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      width: 280,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "In which city do you live in?",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              textAlign: TextAlign.right,
                              "${translation3?.text}",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      height: 70,
                      width: 70,
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.play_circle,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          Text("Play"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: double.infinity,
                child: TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.mic),
                    label: Container(
                      alignment: Alignment.centerRight,
                      child: Text("${translation2?.text}"),
                    ),
                    border: OutlineInputBorder(),
                    focusColor: Colors.black,
                    focusedBorder: OutlineInputBorder(),
                  ),
                  style: TextStyle(),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      width: 280,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "How much can you pay for fees?",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              textAlign: TextAlign.right,
                              "${translation4?.text}",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      height: 70,
                      width: 70,
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.play_circle,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          Text("Play"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: double.infinity,
                child: TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Container(
                      alignment: Alignment.centerRight,
                      child: Text("${translation2?.text}"),
                    ),
                    suffixIcon: Icon(Icons.mic),
                    border: OutlineInputBorder(),
                    focusColor: Colors.black,
                    focusedBorder: OutlineInputBorder(),
                  ),
                  style: TextStyle(),
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CupertinoColors.darkBackgroundGray,
                    foregroundColor: Colors.yellowAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  child: Text("Search"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
