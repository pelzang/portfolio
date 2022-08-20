import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({Key? key}) : super(key: key);

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //to over ride the body slidder
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              //wrape image in containner
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black, Colors.transparent])
                      .createShader(
                          Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'assets/ty.png',
                  height: 400,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.55),
              child: Column(children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Tshering Yangden',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '(tyangden223@gmail.com)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'UX Engineer',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 120,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Hire me'),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white, primary: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.linkedinIn,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                        ))
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
