import 'package:flutter/material.dart';

void main() {
  runApp(const LibraryMainApp());
}

class LibraryMainApp extends StatelessWidget {
  const LibraryMainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          LibraryMain(),
        ]),
      ),
    );
  }
}

class LibraryMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 412,
          height: 1132,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.black),
          child: Stack(
            children: [
              Positioned(
                left: 28,
                top: 52,
                child: Container(
                  width: 116,
                  height: 35,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF723F1C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 47,
                top: 62,
                child: SizedBox(
                  width: 79,
                  height: 23,
                  child: Text(
                    'Hi! YNhi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.75,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 18,
                top: 96,
                child: Container(
                  width: 372,
                  height: 36,
                  decoration: ShapeDecoration(
                    color: const Color(0x30D9D9D9),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFF6E3D1E),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 172,
                top: 106,
                child: Text(
                  'Fujii Kaze',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 128),
                    fontSize: 12,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                left: 370,
                top: 51,
                child: Container(width: 28, height: 28, child: Stack()),
              ),
              Positioned(
                left: 28,
                top: 159,
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, 0.00),
                      end: Alignment(0.79, 1.00),
                      colors: [const Color(0xFF723F1C), const Color(0xFFA55B29), const Color(0xFFBF6930), const Color(0xFFF9B78C)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 116,
                top: 159,
                child: SizedBox(
                  width: 322,
                  height: 70,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Favorite Songs\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.25,
                          ),
                        ),
                        TextSpan(
                          text: 'By you',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.90,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 28,
                top: 256,
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, 0.00),
                      end: Alignment(0.79, 1.00),
                      colors: [const Color(0xFFF9B78C), const Color(0xFFBF6930), const Color(0xFFA55B29), const Color(0xFF723F1C)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 118,
                top: 267,
                child: SizedBox(
                  width: 322,
                  height: 29,
                  child: Text(
                    'Create Playlist',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.25,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 28,
                top: 353,
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.79, 0.09),
                      end: Alignment(0.79, 1.00),
                      colors: [const Color(0xFFF9B78C), const Color(0xFFBF6930), const Color(0xFFA55B29), const Color(0xFF723F1C)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 118,
                top: 364,
                child: SizedBox(
                  width: 322,
                  height: 29,
                  child: Text(
                    'Download songs',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.25,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 34,
                top: 442,
                child: SizedBox(
                  width: 299,
                  height: 41,
                  child: Text(
                    'Playlist created by you',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 2,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 34,
                top: 787,
                child: SizedBox(
                  width: 299,
                  height: 41,
                  child: Text(
                    'Recently Artist',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 2,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 28,
                top: 521,
                child: Container(
                  width: 116,
                  height: 116,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://placehold.co/116x116"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 167,
                top: 521,
                child: SizedBox(
                  width: 322,
                  height: 70,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Love songs\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.25,
                          ),
                        ),
                        TextSpan(
                          text: 'Fuji Kaze, JVKE, ...\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.90,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 28,
                top: 658,
                child: Container(
                  width: 116,
                  height: 116,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://placehold.co/116x116"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 167,
                top: 658,
                child: SizedBox(
                  width: 322,
                  height: 70,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Love songs\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.25,
                          ),
                        ),
                        TextSpan(
                          text: 'Fuji Kaze, JVKE, ...\n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.90,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 28,
                top: 855,
                child: Container(
                  width: 385,
                  height: 171,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 9,
                        top: 0,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/130x130"),
                              fit: BoxFit.cover,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 130,
                        child: SizedBox(
                          width: 149,
                          height: 41,
                          child: Text(
                            'Olivia Rodrigo',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 2.50,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 9,
                        top: 0,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/130x130"),
                              fit: BoxFit.cover,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 184,
                        top: 0,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/130x130"),
                              fit: BoxFit.cover,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 189,
                        top: 130,
                        child: SizedBox(
                          width: 119,
                          height: 41,
                          child: Text(
                            'Taylor Swift',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 2.50,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 184,
                        top: 0,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/130x130"),
                              fit: BoxFit.cover,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 359,
                        top: 0,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/130x130"),
                              fit: BoxFit.cover,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 351,
                        top: 130,
                        child: SizedBox(
                          width: 145,
                          height: 41,
                          child: Text(
                            'Charlie Puth',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 2.50,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 359,
                        top: 0,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/130x130"),
                              fit: BoxFit.cover,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 534,
                        top: 0,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/130x130"),
                              fit: BoxFit.cover,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 527,
                        top: 130,
                        child: SizedBox(
                          width: 143,
                          height: 41,
                          child: Text(
                            'Sasha Sloan',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 2.50,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 534,
                        top: 0,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/130x130"),
                              fit: BoxFit.cover,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 709,
                        top: 0,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/130x130"),
                              fit: BoxFit.cover,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 739,
                        top: 130,
                        child: SizedBox(
                          width: 70,
                          height: 41,
                          child: Text(
                            'JVKE',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 2.50,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 709,
                        top: 0,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/130x130"),
                              fit: BoxFit.cover,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 884,
                        top: 0,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/130x130"),
                              fit: BoxFit.cover,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 878,
                        top: 130,
                        child: SizedBox(
                          width: 141,
                          height: 41,
                          child: Text(
                            'Lana Del Rey',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 2.50,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 884,
                        top: 0,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/130x130"),
                              fit: BoxFit.cover,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 6,
                top: 822,
                child: Container(
                  width: 400,
                  height: 84,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 232,
                        top: 66,
                        child: SizedBox(
                          width: 48,
                          height: 15,
                          child: Text(
                            'Library\n',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 330,
                        top: 38,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/35x35"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 225,
                        top: 0,
                        child: Container(
                          width: 61,
                          height: 60,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 46,
                        top: 38,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/35x35"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 147,
                        top: 38,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/35x35"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 238,
                        top: 15,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/35x35"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}