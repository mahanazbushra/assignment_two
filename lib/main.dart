import 'package:flutter/material.dart';




main(){//main
  runApp(const MyApp());//application create


}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp( //material app is a predefined class in flutter. Mian or core component of flutter.
        theme: ThemeData(primarySwatch: Colors.yellow),
        darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
        color: Colors.yellowAccent,
        debugShowCheckedModeBanner: false,
        //ctrl+p press to show how many features available in  materialapp

        home:const HomeActivity());

  }
}
class HomeActivity extends StatelessWidget{//this is activity page
  const HomeActivity({super.key});//constructor

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message))


    );

  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        titleSpacing: 10,
        //centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 0,
        backgroundColor: Color(0xFFFFC107),
        foregroundColor: Colors.black,
        actions: [
          IconButton(onPressed: (){MySnackBar("Notification", context);}, icon: const Icon(Icons.add)),
          IconButton(onPressed: (){MySnackBar("Categories", context);}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: (){MySnackBar("Notification", context);}, icon: const Icon(Icons.phone)),//buid in icon


        ],



      ),
      body:  Center( // Center the entire content
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
            SizedBox(height: 10),

            CircleAvatar(
              radius: 80,


              child: Icon(Icons.icecream_outlined,size: 80.5),
            ),
            Text("Ice cream is very delicious right?",
              style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              height: 3,
            ),
            ),
            SizedBox(height: 10),

            CircleAvatar(
              radius: 80,


              child: Icon(Icons.code,size: 80.5,),

            ),
            Text("Programming is not  boring if you love it",style: TextStyle(

              fontSize: 20,
              fontWeight: FontWeight.bold,
              height: 3,
            ),
            ),
            SizedBox(height: 10),
            CircleAvatar(
              radius: 80,
              child: Icon(Icons.water_drop_outlined, size: 80.5),
            ),
            Text (
              "If you submit code directly copy from chatgpt then mark will 0 ",
              style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.w500,
                height: 2,

              ),
            ),
          ],
        )
      ),




          );






  }


}
