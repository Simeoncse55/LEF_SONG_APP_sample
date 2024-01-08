import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../DataModels/hymnsdata.dart';

import '../songlyrics/hymnslyrics.dart';
   class FavoriteList extends StatefulWidget {
     const FavoriteList({super.key});

     @override
     State<FavoriteList> createState() => _FavoriteListState();
   }

   class _FavoriteListState extends State<FavoriteList> {
     @override
     Widget build(BuildContext context) {
       return Scaffold(

         backgroundColor: Color(0xFF602A19),
         appBar: AppBar(
           centerTitle: true,
           backgroundColor: Color(0xFF602A19),
           elevation: 0,
           title: Text('My Favorites',style: GoogleFonts.poppins(
               fontSize: 20, fontWeight: FontWeight.w600
           ),),

         ),

       );
     }

     }


