import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:flutter/src/painting/border_radius.dart';

import 'package:music/common/app_constants.dart';

class ConfirmButton extends StatelessWidget{
  String text;
  final VoidCallback? onTap;
  ConfirmButton({
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context){
    return Container(
      child: Text(
        this.text,
        style: TextStyle(
          color: ColorConstants.colorWhite,
          fontWeight: FontWeight.w700,
          fontSize: 18,
          fontFamily: 'Quicksand',
        )),
      alignment: Alignment.center,
      width: 236,
      height: 48,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff58CC02),
            Color(0xff23AC38),
          ]
        ),
        // border: Border.all(
        //   width: 0,
        // ),
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Color(0xff209B32),
            spreadRadius: 0,
            // blurRadius: 7,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
    );
  }
}

class BoxButton extends StatelessWidget {
  Color iconColor;
  IconData icon;
  Color backgroundColor;
  final VoidCallback? onTap;
  BoxButton({
    required this.iconColor,
    required this.icon,
    required this.backgroundColor,
    this.onTap,
});

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Icon(
          this.icon,
          color: this.iconColor,
          size: 25,
        ),
        alignment: Alignment.center,
        width: 264,
        height: 48,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: this.backgroundColor,
          // border: Border.all(
          //   width: 0,
          // ),
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              spreadRadius: 0,
              // blurRadius: 7,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}

class CharBox extends StatelessWidget {
  String text;
  CharBox({
    required this.text,
});
  @override
  Widget build(BuildContext context){
    return Container(
      child: Text(
          this.text,
          style: TextStyle(
            color: Color(0xff56CCF2),
            fontWeight: FontWeight.w700,
            fontSize: 120,
            fontFamily: 'Quicksand',
            height: 1,
          )),
      alignment: Alignment.center,
      width: 160,
      height: 160,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ColorConstants.colorWhite,
        border: Border.all(
          width: 1,
          color: ColorConstants.borderColor,
        ),
        borderRadius: BorderRadius.circular(16),

      ),
    );
  }
}

class TextRequirement extends StatelessWidget{
  String text;
  TextRequirement({
    required this.text,
});
  @override
  Widget build(BuildContext context){
    return Text(
      this.text,
      style: TextStyle(
        color: ColorConstants.textRequirementColor,
        fontWeight: FontWeight.w700,
        fontSize: 18,
        fontFamily: 'Quicksand',

      ),
    );
  }
}

// class HintBox extends StatelessWidget{
//   String JpChar;
//   String Phonetic;
//   String Description;
//   HintBox({
//     required this.JpChar,
//     required this.Phonetic,
//     required this.Description,
// });
//   @override
//   Widget build(BuildContext context){
//     return Container(
//
//     )
//   }
// }