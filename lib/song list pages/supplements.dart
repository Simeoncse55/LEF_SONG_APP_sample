import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lefi/song list pages/favorites.dart';
  class SupplementList extends StatefulWidget {
    const SupplementList({super.key});

    @override
    State<SupplementList> createState() => _SupplementListState();
  }

  class _SupplementListState extends State<SupplementList> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0xFF602A19),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF602A19),
          elevation: 0,
          title: Text('Supplements',style: GoogleFonts.poppins(
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
