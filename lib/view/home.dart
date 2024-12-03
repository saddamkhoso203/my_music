import 'package:flutter/material.dart';
import 'package:my_music/const/color.dart';
import 'package:my_music/const/text-style.dart';
import 'package:my_music/controller/player_controller.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});



  @override
  Widget build(BuildContext context) {

    var controller = Get.put(PlayerController());

    return Scaffold(
      backgroundColor: bgDarkColor,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: whiteColor,))
        ],
      leading: const Icon(Icons.sort_rounded, color: whiteColor,),
        title: Text(
          "My Music",
          style: ourStyle(
            family: bold,
            size: 18
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 100,
          itemBuilder: (BuildContext context, int index){
          return Container(
            margin: const EdgeInsets.only(bottom: 4),
          
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              ),
              tileColor: bgColor,
              title: Text("Music Name", style: ourStyle(
                family: bold,
                size: 15
              ),),
              subtitle: Text("Artist Name", style: ourStyle(
                family: regular,
                size: 12,
            )),
            leading: const Icon(Icons.music_note,color: whiteColor, size: 32,),
            trailing: const Icon(Icons.play_arrow, color: whiteColor,size: 36,),
            ));
        }),
      ),
    );
  }
}
