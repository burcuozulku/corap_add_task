import 'package:add_task/adding_box.dart';
import 'package:add_task/adding_text_field.dart';
import 'package:add_task/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'const.dart';

class AddTask extends StatefulWidget {
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String dropdownValue = "Instagram";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text(
          'GÖREV TİPİ EKLE/GÜNCELLE',
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 19, color: Colors.grey),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          SizedBox(height: 15.0),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Row(
              children: <Widget>[
                SizedBox(width: 20),
                Expanded(
                  child: DropdownButton(
                    isExpanded: true,
                    underline: SizedBox(),
                    value: dropdownValue,
                    items: [
                      'Instagram',
                      'Facebook',
                      'Twitter',
                      'YouTube',
                      'Google',
                      'Tiktok',
                      'Twitch',
                      'Foursquare',
                      'WhatsApp',
                      'Telegram'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value, style: GoogleFonts.poppins()),
                      );
                    }).toList(),
                    onChanged: (String? value1) {
                      setState(() {
                        dropdownValue = value1!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                AddingTextField(maxLines: 1, labeltext: 'Görev Tipi İsmi'),
                SizedBox(height: 5.0),
                AddingTextField(
                    maxLines: 2, labeltext: 'Görev Tipi Açıklaması'),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    AddingBox(
                        text: 'Görev Tipi Birim Ücreti',
                        widht: 200,
                        height: 40,
                        color1: kPrimaryColor,
                        color2: kButtonColor),
                    SizedBox(width: 12.0),
                    AddingBox(
                        text: '10 ÇORAP',
                        widht: 150,
                        height: 40,
                        color1: kPrimaryColor,
                        color2: kButtonColor)
                  ],
                ),
                SizedBox(height: 10.0),
                MaterialButton(
                  padding:
                      EdgeInsets.symmetric(horizontal: 130.0, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  color: Colors.grey[200],
                  child: Text(
                    "Ekle/Güncelle",
                    style: GoogleFonts.poppins(
                        color: Colors.indigoAccent, fontSize: 15),
                  ),
                  onPressed: () {},
                ),
                SizedBox(height: 45.0),
                AddingBox(
                    text: 'Görev Tipleri',
                    widht: 380,
                    height: 45,
                    color1: kButtonColor,
                    color2: kButtonColor),
                SizedBox(height: 7.0),
                AddingBox(
                    text: 'YouTube-YouTube kanalına yorum yap',
                    widht: 350,
                    height: 45,
                    color1: kBoxColor,
                    color2: kBoxColor),
                SizedBox(height: 5.0),
                AddingBox(
                    text: 'Twitter-Twitter hesabı takip et',
                    widht: 350,
                    height: 45,
                    color1: kBoxColor,
                    color2: kBoxColor),
                SizedBox(height: 5.0),
                AddingBox(
                    text: 'Instagram-Instagram mesajı beğen',
                    widht: 350,
                    height: 45,
                    color1: kBoxColor,
                    color2: kBoxColor),
                SizedBox(height: 5.0),
                AddingBox(
                    text: 'Instagram-Instagram mesajı yorumla',
                    widht: 350,
                    height: 45,
                    color1: kBoxColor,
                    color2: kBoxColor)
              ],
            ),
          )
        ]),
      ),
    );
  }
}
