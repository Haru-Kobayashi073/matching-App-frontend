import 'package:flutter/material.dart';
import 'package:matching_app/details/user_image.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:matching_app/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxheight =  MediaQuery.of(context).size.height;


    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.search),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Icon(Icons.account_circle_rounded,
              size: 120,
              ),
          ),
            const Text(
              'userName',
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),
              ),
              SizedBox(height: maxheight * 0.05,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                      Text('0',
                      style: TextStyle(fontSize: 20),),
                      Text('フレンド',
                      style: TextStyle(fontSize: 12),),
                    ],
                  ),
                  Column(
                    children: const [
                      Text('0',
                      style: TextStyle(fontSize: 20),),
                      Text('参加サークル',
                      style: TextStyle(fontSize: 12),),
                    ],
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}
