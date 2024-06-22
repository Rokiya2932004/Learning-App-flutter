import 'dart:io';

import 'package:flutter/material.dart';
import '../clasess/number.dart';
import '../components/rowCategory.dart';

class numbers extends StatelessWidget{

  final List<Number> nums = [
    Number(sound: 'numbers_sounds/1.mp3', img: 'images/numbers/1.png', EnName: 'One', FName: 'een'),
    Number(sound: 'numbers_sounds/2.mp3',img: 'images/numbers/2.png', EnName: 'Two', FName: 'twee'),
    Number(sound: 'numbers_sounds/3.mp3',img: 'images/numbers/3.png', EnName: 'Three', FName: 'drie'),
    Number(sound: 'numbers_sounds/4.mp3',img: 'images/numbers/4.png', EnName: 'Four', FName: 'vier'),
    Number(sound: 'numbers_sounds/5.mp3',img: 'images/numbers/5.png', EnName: 'Five', FName: 'vijf'),
    Number(sound: 'numbers_sounds/6.mp3',img: 'images/numbers/6.png', EnName: 'Six', FName: 'zes'),
    Number(sound: 'numbers_sounds/7.mp3',img: 'images/numbers/7.png', EnName: 'Seven', FName: 'zeven'),
    Number(sound: 'numbers_sounds/8.mp3',img: 'images/numbers/8.png', EnName: 'Eight', FName: 'acht'),
    Number(sound: 'numbers_sounds/9.mp3',img: 'images/numbers/9.png', EnName: 'Nine', FName: 'negen'),
    Number(sound: 'numbers_sounds/10.mp3',img: 'images/numbers/10.png', EnName: 'Ten', FName: 'tien'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue[600],
      ),
      body:ListView.builder(
        itemCount: nums.length,
        itemBuilder: (context,numb){
          return counter(num : nums[numb]);
        },
      ),

    );
  }

}