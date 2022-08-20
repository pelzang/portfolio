import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProject extends StatefulWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  projetCard(lang, title, description, star) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 220,
      child: Card(
        child: Container(
          margin: EdgeInsets.only(left: 20, top: 30, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                description,
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 18,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    star,
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      )),
                ],
              )
            ],
          ),
        ),
        color: Color(0xff262628),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1e1e1e),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text('Projects'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 20, top: 10),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              projetCard('FIGMA', 'Click to View', ' My Designs', '10'),
              projetCard('FIGMA', 'DRIVE', 'Water Project', '9'),
              projetCard('UI/UX', 'Boder Management', 'BMS', '9'),
              projetCard('Designer', 'SELISE', 'Healthcare management', '8'),
              projetCard('Designer', 'SELISE', 'Recruitment Portal', '8'),
              projetCard('UI/UX', 'NDI', 'NDI App', '8'),
              projetCard('Designer', 'DHI', 'PMS', '8'),
              projetCard('Adobe XD', 'ECMS(Website)', 'Designer', '7'),
              projetCard('DRIBBLE', 'Click to View', 'My Desings', '10')
            ],
          ),
        ),
      ),
    );
  }
}
