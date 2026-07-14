import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        leading: Container(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Column(children: [Icon(Icons.menu)]),
        ),
      ),
      body: Container(
        // width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50)
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image(
                  image: NetworkImage(
                    // 'https://fastly.picsum.photos/id/189/200/300.jpg?hmac=hHje_4JkF5zMl3-XI-og30tFYciyr_jlTaswOXtA_Bo',
                    'https://fastly.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI',
                  ),
                  fit: BoxFit.fill,
                  width: 400,
                  height: 400,
                ),
                Container(

                  color:Colors.amber.withOpacity(0.5),
                  width: 400,
                  // padding: EdgeInsets.only(
                  //   bottom: 10,
                  //   left: 10,
                  //   right: 15,
                  //   top: 10
                  // ),
                  padding: EdgeInsetsDirectional.only(
                    bottom: 10,
                    end: 10,
                    start: 20,
                    top: 10
                  ),
                  child: Text(
                    // style: TextStyle(center),
                    "hello again ",
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
