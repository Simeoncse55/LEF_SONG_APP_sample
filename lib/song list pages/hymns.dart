import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:lefi/song%20list%20pages/favorites.dart';
import 'package:lefi/DataModels/hymnsdata.dart';
import 'package:lefi/songlyrics/hymnslyrics.dart';
import 'package:provider/provider.dart';

// bg color brown 0xFF602A19
 class HymnsList extends StatefulWidget {
   const HymnsList({super.key});

   @override
   State<HymnsList> createState() => _HymnsListState();
 }

 class _HymnsListState extends State<HymnsList> {


   @override
   Widget build(BuildContext context) {

   return Scaffold(
       backgroundColor: Color(0xFF602A19),
       appBar: AppBar(
         centerTitle: true,
         backgroundColor: Color(0xFF602A19),
         elevation: 0,
         title: Text('Hymns',style: GoogleFonts.poppins(
           fontSize: 20, fontWeight: FontWeight.w600
         ),),
         actions: [
           Padding(
             padding: const EdgeInsets.only(right:10.0),
             child: InkWell(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => FavoriteList() ));
               },
                 child: Icon(Icons.favorite_rounded, color: Colors.pink,)),
           )
         ],
       ),



       body: ListView.builder(
           itemCount: hym.length,
           itemBuilder: (context, index) {

             final HymnsData hd = hym[index];

                 return Card(
                   child: Column(
                     children: [
                       ListTile(
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) =>HymnsLyrics( hymlyrics: hd,) ));
                         },
                         title: Text(hd.songTittle),
                       )
                     ],
                   ),
                 );


           })


     );
   }
 }
