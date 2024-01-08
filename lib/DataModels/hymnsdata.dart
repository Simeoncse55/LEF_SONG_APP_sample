import 'package:flutter/material.dart';

class HymnsData {

  int id ;
  String songTittle ;
  String lyrics;
  String chords;


  HymnsData(this.id, this.songTittle, this.lyrics, this.chords );
}

 List<HymnsData> hym = [
  HymnsData(1, 'Joy to the World',
"""Joy to the world, the Lord is come!
Let earth receive her King;
Let every heart prepare Him room,
And heaven and nature sing,
And heaven and nature sing,
And heaven, and heaven, and nature sing.

Joy to the world, the Savior reigns!
Let men their songs employ;
While fields and floods, rocks, hills, and plains
Repeat the sounding joy,
Repeat the sounding joy,
Repeat, repeat, the sounding joy.

He rules the world with truth and grace
And makes the nations prove
The glories of His righteousness
And wonders of His love
And wonders of His love
And wonders, wonders, of His love

Joy to the world, the Lord is come
Let Earth receive her King
Let every heart prepare Him room
And Heaven and nature sing
(And Heaven and nature sing)
And Heaven and nature sing
(And Heaven and nature sing)
And Heaven, and Heaven, and nature sing
And Heaven, and Heaven, and nature sing

Joy to the world, the Lord is come
Let Earth receive her King
Let every heart prepare Him room
And Heaven and nature sing
(And Heaven and nature sing)
And Heaven and nature sing
(And Heaven and nature sing)
And Heaven, and Heaven, and nature sing
And Heaven, and Heaven, and nature sing


""",
"""
C          G                  C
Joy to the world, the Lord is come
F         C           G
Let earth receive her King
C               G       C
Let every heart prepare Him room
F              G      C
And heaven and nature sing
F                G   C
And heaven and nature sing
F       C  G  C
And heaven, and heaven, and nature sing

C  G  C
Joy to the world, the Savior reigns
F       C     G
Let men their songs employ
C   G  C
While fields and floods, rocks, hills, and plains
F         G       C
Repeat the sounding joy
F          G   C
Repeat the sounding joy
F       C  G  C
Repeat, repeat, the sounding joy

Am   E7     Am   E7
No more let sins and sorrows grow
Am     E7   Am    E7
Nor thorns infest the ground
Am       E7   Am  E7
He comes to make His blessings flow
Am    G      C
Far as the curse is found
Am    G      C
Far as the curse is found
Am    G      C
Far as, far as, the curse is found

C  G  C
He rules the world with truth and grace
F         C       G
And makes the nations prove
C   G  C
The glories of His righteousness
F         G         C
And wonders of His love
F          G   C
And wonders of His love
F       C  G  C
And wonders, wonders, of His love
  """),

  HymnsData(2, 'Silent night',

      "Silent night, holy night,"
      "All is calm, all is bright,"
      "Round yon Virgin Mother and Child."
          " Holy Infant so tender and mild,"
          " Sleep in heavenly peace,"
          "Sleep in heavenly peace.",

      'silent night chords'

  ),

  HymnsData(3, 'O come all ye faithful',


      "O come, all ye faithful,"
          "Joyful and triumphant,"
          "O come ye, O come ye to Bethlehem;"
          "Come and behold Him,"
          "Born the King of angels;"
          ""
          "O come, let us adore Him,"
          "O come, let us adore Him,"
          "O come, let us adore Him,"
          "Christ the Lord.",

    'o come all ye faithful chords'

  )


];