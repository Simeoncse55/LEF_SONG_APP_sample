import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lefi/song list pages/favorites.dart';

 class ChorusesList extends StatefulWidget {
   const ChorusesList({super.key});

   @override
   State<ChorusesList> createState() => _ChorusesListState();
 }

 class _ChorusesListState extends State<ChorusesList> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Color(0xFF602A19),
       appBar: AppBar(
         centerTitle: true,
         backgroundColor: Color(0xFF602A19),
         elevation: 0,
         title: Text('Choruses',style: GoogleFonts.poppins(
             fontSize: 20, fontWeight: FontWeight.w600
         ),),
         actions: [
           Padding(
             padding: const EdgeInsets.only(right:10.0),
             child: InkWell(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => FavoriteList() ));
                 },
                 child: Icon(Icons.favorite_border_rounded)),
           )
         ],
       ),

     );
   }
 }
