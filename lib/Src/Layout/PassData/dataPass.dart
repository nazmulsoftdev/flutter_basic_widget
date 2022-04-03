import 'package:app6/Src/Layout/PassData/dataGet1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dataPass extends StatefulWidget {
  const dataPass({Key? key}) : super(key: key);

  @override
  State<dataPass> createState() => _dataPass1State();
}

class _dataPass1State extends State<dataPass> {
  List<String> imageLogo = [
    'html.png',
    'css.png',
    'sass.png',
    'bootstrap.png',
    'react.png',
    'nodejs.png'
  ];

  List<String> nameTitle = [
    'HTML',
    'CSS',
    'SASS',
    'BOOTSTRAP',
    'REACT JS',
    'NODE JS'
  ];

  List<String> nameDis = [
    'HTML tutorial or HTML 5 tutorial provides basic and advanced concepts of HTML. Our HTML tutorial is developed for beginners and professionals. In our tutorial, every topic is given step-by-step so that you can learn it in a very easy way. If you are new in learning HTML, then you can learn HTML from basic to a professional level and after learning HTML with CSS and JavaScript you will be able to create your own interactive and dynamic website. But Now We will focus on HTML only in this tutorial.',
    'CSS tutorial or CSS 3 tutorial provides basic and advanced concepts of CSS technology. Our CSS tutorial is developed for beginners and professionals. The major points of CSS are given below',
    'Sass is a preprocessor scripting language that is interpreted or compiled into Cascading Style Sheets. SassScript is the scripting language itself. Sass consists of two syntaxes.',
    'Bootstrap tutorial provides basic and advanced concepts of Bootstrap. Our Bootstrap tutorial is designed for beginners and professionals Bootstrap is the popular HTML, CSS and JavaScript framework for developing a responsive and mobile friendly website',
    'Our JavaScript Tutorial is designed for beginners and professionals both. JavaScript is used to create client-side dynamic pages. JavaScript is an object-based scripting language which is lightweight and cross-platform',
    'React is a free and open-source front-end JavaScript library for building user interfaces based on UI components. It is maintained by Meta and a community of individual developers and companies.',
    'Node.js tutorial provides basic and advanced concepts of Node.js. Our Node.js tutorial is designed for beginners and professionals both. Node.js is a cross-platform environment and library for running JavaScript applications which is used to create networking and server-side applications'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                  height: 500,
                  child: ListView.builder(
                    itemCount: nameTitle.length,
                    physics: ScrollPhysics(),
                    itemBuilder: (_, index) {
                      return Container(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>dataGet1(myImage: imageLogo[index],myTitle: nameTitle[index],myDis: nameDis[index],)),);
                          },
                          child: Card(
                            elevation: 5,
                            child: ListTile(
                              title: Text(nameTitle[index]),
                              subtitle: Text(nameDis[index].substring(0, 60)),
                              leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    "assets/images/" +
                                        imageLogo[index].toString(),
                                    width: 30,
                                  )),
                              trailing: Icon(Icons.code),
                            ),
                          ),
                        ),
                      );
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
