import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lefi/song%20list%20pages/choruses.dart';
import 'package:lefi/webview.dart';
import 'song list pages/hymns.dart';
import 'song list pages/supplements.dart';
import 'song list pages/favorites.dart';


 class Index extends StatelessWidget {
   const Index({super.key});

   @override
   Widget build(BuildContext context) {

     double height = MediaQuery.of(context).size.height;
     double width = MediaQuery.of(context).size.width;
     return Scaffold(

         backgroundColor: Color(0xFF602A19),
        appBar: AppBar(
          title: Text('Sing Unto the Lord', style: GoogleFonts.poppins(),),

          centerTitle: true,
          backgroundColor: Color(0xFF602A19),
          elevation: 0,
        
          actions: [
            InkWell(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> Web()));
               },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.church_rounded),
                ))
          ],

        ),

       drawer: Drawer(
         child: ListView(
           children: [

             DrawerHeader(
               decoration: BoxDecoration( color: Color(0xFF602A19)),
             child: Text('ZETA'),
             ),
           ],
         ),
       ),

       body: Container(

         height: height, width: width,
         decoration: const BoxDecoration(
         image: DecorationImage(
         image: AssetImage('images/chruch.jpg'),
         fit: BoxFit.cover
     ),),

     child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [

         // title
       //  Text('Sing unto the Lord',style:GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 30, color: Colors.white,)),
         // sub title
        // Text("""My tongue will sing aloud of your righteousness
                                // Psalm 51:14""" , style:GoogleFonts.poppins(fontWeight: FontWeight.w400, color: Colors.white),),



         // grid view
         Padding(
           padding: const EdgeInsets.all(25.0),
           child: GridView(
            physics: const NeverScrollableScrollPhysics(),

             shrinkWrap: true,
           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12,
           ),

           children: [

             // hymns
             InkWell(
               onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const HymnsList()));
               },
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.white.withOpacity(0.2),
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     const Icon(Icons.music_note_rounded, size: 70, color: Colors.white,),
                     Center(
                         child: Text('Hymns' ,style: GoogleFonts.poppins(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)),
                   ],
                 ),
               ),
             ),

          // choruses
             InkWell(
                     onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChorusesList()));
                     },
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.white.withOpacity(0.2),
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     const Icon(Icons.library_music_rounded, size: 70, color: Colors.white,),
                     Center(
                         child: Text('Choruses' ,style: GoogleFonts.poppins(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)),
                   ],
                 ),
               ),
             ),

               // supplemets
             InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> const SupplementList()));
               },
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.white.withOpacity(0.2),
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     const Icon(Icons.queue_music_rounded, size: 70, color: Colors.white,),
                     Center(
                         child: Text('Supplements' ,style:GoogleFonts.poppins(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)),
                   ],
                 ),
               ),
             ),


             // favorite
             InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> const FavoriteList()));
               },
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.white.withOpacity(0.2),
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     const Icon(Icons.favorite_rounded, size: 70, color: Colors.white,),
                     Center(child: Text('Favorite song' ,style:GoogleFonts.poppins(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)),
                   ],
                 ),
               ),
             ),

           ],



             ),
         ),
 Text("""Laymen's Evangelical Fellowship
English Song Book""" ,  textAlign: TextAlign.center, style:GoogleFonts.poppins( color: Colors.white, ),),

       //  Text("Powered by ZETA Technologies " , style:GoogleFonts.poppins( color: Colors.white.withOpacity(0.5)),),

       ],
     ),
       )

     );
   }
 }
