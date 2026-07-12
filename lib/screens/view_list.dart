import 'package:flutter/material.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        centerTitle: true,
        leading: Container(child: Icon(Icons.menu)),
        title: Container(alignment: Alignment.center, child: Text("SumCripto")),
        actions: [
          IconButton(onPressed: onPressed, icon: Icon(Icons.search)),
          IconButton(onPressed: onPressed, icon: Icon(Icons.notifications)),
        ],
      ),
      body: Container(
        color: Colors.teal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => item(),
                    // separatorBuilder: (context, index) => SizedBox(height: 10),
                    itemCount: 50,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget item() => Container(
    child: MaterialButton(
      hoverColor: Colors.black.withOpacity(0.1),
      textColor: Colors.white,
      height: 50,
      onPressed: onPressed, 
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            child: Image.network(
              width: 40,
              height: 40,
              'https://fastly.picsum.photos/id/990/200/300.jpg?hmac=6QkvunJPzSUAgkuY7p_hlJq5SmEdhlV01fbh5cMzKgg'
            ),
          ),
          Text("Hello from list view",style: TextStyle(fontWeight: FontWeight.w100,),),
        ],
      )
    ),
  );
  // Widget item() => Text("Hello from list view");

  void onPressed() {
    print("object");
  }
}
