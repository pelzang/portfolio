import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:flutter/src/material/icons.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
//to repeat no. of project or creating funtion to avoid repeated code
  myAchiev(num, Type) {
    return Row(
      children: [
        Text(num, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(Type),
        )
      ],
    );
  }

  mySpec(icon, tech) {
    return Container(
      width: 105,
      height: 115,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white),
              //space bwt logo and text
              SizedBox(
                height: 20,
              ),
              Text(
                tech,
                style: TextStyle(color: Colors.white, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //above slidder
      backgroundColor: Colors.black,
      //to over ride the body slidder
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          color: Colors.black,
          icon: Icon(Icons.menu),
          itemBuilder: (context) => [
            PopupMenuItem(
              child: TextButton(
                child: Text(
                  'Project',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'project');
                },
              ),
              value: 1,
            ),
            PopupMenuItem(
              child: TextButton(
                child: Text(
                  'About Me',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'about');
                },
              ),
              value: 2,
            )
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.

        //image retriver
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 35),
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
                    'assets/tp.png',
                    height: 400,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.49),
                child: Column(children: [
                  Text(
                    'Thinley Pelzang',
                    style: TextStyle(
                        fontFamily: "Soho",
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Software Developer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "Soho",
                    ),
                  )
                ]),
              )
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myAchiev('13', ' Projects'),
                    myAchiev('7', ' Client'),
                    myAchiev('50', ' Messages')
                  ],
                ),
                //Specialized text aligment
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Specialized In',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                //gap bwt specialed and container
                SizedBox(
                  height: 10,
                ),
                //to make container under the specialized section
                //to add more specialization you have to copy below mwntion code
                //and paste below columes to make many rows
                /*  Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(Icons.android, 'Andriod'),
                        mySpec(Icons.android, 'Andriod'),
                        mySpec(Icons.android, 'Andriod')
                      ],
                    ) */

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(Icons.android, 'Andriod'),
                        mySpec(Icons.cloud, 'Kubernetes'),
                        mySpec(Icons.wordpress, 'Wordpress')
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(Icons.web, 'Website'),
                        mySpec(Icons.code, 'coding'),
                        mySpec(Icons.javascript, 'Scripting')
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySpec(Icons.computer, 'Windows'),
                        mySpec(Icons.comment, 'CMD'),
                        mySpec(Icons.gamepad, 'Linux')
                      ],
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
