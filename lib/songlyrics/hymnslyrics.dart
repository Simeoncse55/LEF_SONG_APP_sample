import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lefi/DataModels/hymnsdata.dart';

// bg color brown 0xFF602A19

class HymnsLyrics extends StatelessWidget {
  const HymnsLyrics({ required this.hymlyrics, super.key});

  final HymnsData hymlyrics;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,

      child: Scaffold(
        backgroundColor: Color(0xFF602A19),

        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF602A19),
          centerTitle: true,
             title: Text(hymlyrics.songTittle,),
          bottom: const  TabBar(
           indicatorColor: Colors.brown,
            tabs: [
              Tab(text: 'Lyrics',),
              Tab(text: 'Chords',)
            ],
          ),



        ),


        body: TabBarView(
          children: [
           SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  hymlyrics.lyrics, style: GoogleFonts.poppins( fontWeight: FontWeight.bold,color: Colors.white ),
                ),
              ),
            ),



            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  hymlyrics.chords, style: GoogleFonts.poppins( fontWeight: FontWeight.bold,color: Colors.white ),
                ),
              ),
            ),

          ],

        ),


      ),
    );
  }
}
