import 'package:flutter/material.dart';
import 'package:snake_chase/Game_page.dart';

class Game_over extends StatelessWidget {
  final int score;



  const Game_over({super.key, required this.score,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage("https://img.freepik.com/free-vector/empty-wooden-sign-banner-isolated_1308-99351.jpg"),fit: BoxFit.cover)
              ),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Game Over",style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white,shadows: [
                    BoxShadow(
                      offset: Offset(3, 4),color: Colors.black
                    ),
                  ]),),
                  SizedBox(height: 20,),
                  Text('Your Score is: $score', style: TextStyle(color: Colors.green, fontSize: 25.0,fontWeight: FontWeight.bold)),
                  SizedBox(height: 10,),
                  TextButton(onPressed: (){
                    Navigator.pop(context,GamePage());
                  }, child: Text("<< Continue >>",style: Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 24,fontWeight: FontWeight.bold),)),
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 75,
                          width: 90,
                          child: Image.network("https://clipart-library.com/img/1866448.png",fit: BoxFit.fill,)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
