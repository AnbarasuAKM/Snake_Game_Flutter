import 'package:flutter/material.dart';
import 'package:snake_chase/Game_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Snake Game",style:Theme.of(context).textTheme.caption!.copyWith(fontSize: 30,fontWeight: FontWeight.bold),),
            Image.
          network("https://handsontek.net/images/Teams/Snake/hero.png",fit: BoxFit.cover,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>GamePage()));
              },
              child:
              Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.green
                ),
                child: Center(
                  child: Text("Start Game. . .",textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),),
                ),
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
              },
              child: Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.green
                ),
                child: Center(
                  child: Text(". . .Exit Game",textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

