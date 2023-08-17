import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class impoetFild extends StatefulWidget {

  final TextEditingController controller;
  final String title;
  final String hintText;
  final IconData? iconData;

  const impoetFild({super.key, required this.controller, required this.title, required this.hintText, this.iconData, required IconData IconData});

  @override
  State<impoetFild> createState() => _impoetFildState();
}

class _impoetFildState extends State<impoetFild> {


  static const Color containercolor = Color(0xffF5F8FB);
  static const Color taxtBlack = Color(0xff232323);
  static const Color taxtLight = Color(0xff717171);
  static const Color clearButtoncolor = Color(0xffFF7511);


  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title, style: const TextStyle(color: taxtBlack , fontSize: 15,fontWeight: FontWeight.w700)),
        const SizedBox(height: 5),
        TextFormField(
          controller: widget.controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: taxtLight),
            suffixIcon: widget.iconData != null ? Icon(widget.iconData, color: taxtBlack):Text(""),
            filled: true,
            fillColor: containercolor,
            border: OutlineInputBorder(
              borderSide: const BorderSide(width: 0, color: Colors.transparent),
              borderRadius: BorderRadius.circular(5),
            ),
            enabledBorder:  OutlineInputBorder(
              borderSide: const BorderSide(width: 0, color: Colors.transparent),
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 0, color: Colors.transparent),
              borderRadius: BorderRadius.circular(5),
            ),
          ),

          onFieldSubmitted: (value){
            //Null check
            if(value.isEmpty){
              widget.controller.text = "0.00";
            }
            widget.controller.text = value.toString();
            setState(() {

            });
          },


          onSaved: (value){
            widget.controller.text = value.toString();
            setState(() {

            });
          },

          validator: (value){
            if(value == null || value.isEmpty){
              return "Please Enter the valid amount";
            }
            return null;
          },
        ),
      ],
    );
  }
}
