import 'package:flutter/material.dart';
import 'find_song.dart';

class FindArtistScreen extends StatelessWidget {
  final Artist artist;

  const FindArtistScreen({super.key, required this.artist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.black),
          child: Stack(
            children: [
              // Gradient overlay
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 412,
                  height: 317,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.50, 0.64),
                      end: Alignment(0.50, 0.95),
                      colors: [Colors.black.withValues(alpha: 0), Colors.black],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 131,
                top: 236,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://placehold.co/150x150"),
                      fit: BoxFit.cover,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 128,
                top: 395,
                child: SizedBox(
                  width: 155,
                  height: 42,
                  child: Text(
                    'Fujii Kaze\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.50,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 42,
                top: 451,
                child: SizedBox(
                  width: 330,
                  height: 222,
                  child: Text(
                    'Fujii Kaze (born 1997) is a Japanese singer-songwriter and pianist. He started uploading piano covers on YouTube at 12 and debuted with "Nan-Nan" in 2019. His first album Help Ever Hurt Never (2020) and viral hit "Shinunoga E-Wa" brought him international fame. His second album Love All Serve All (2022) topped charts and went platinum. In 2023–2024, he released new singles and toured internationally.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 1.33,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 659,
                child: SizedBox(
                  width: 197,
                  height: 41,
                  child: Text(
                    'Top Song',
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
                left: 17,
                top: 996,
                child: SizedBox(
                  width: 197,
                  height: 41,
                  child: Text(
                    'Top Album',
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
                left: 20,
                top: 723,
                child: Container(
                  width: 382,
                  height: 250,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 412,
                        top: 90,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/70x70"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 824,
                        top: 0,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/70x70"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 824,
                        top: 180,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/70x70"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 412,
                        top: 0,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/70x70"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 824,
                        top: 90,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/70x70"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 90,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/70x70"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 180,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/70x70"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 412,
                        top: 180,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/70x70"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/70x70"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 90,
                        top: 0,
                        child: SizedBox(
                          width: 322,
                          height: 70,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Damn\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1.25,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Fuji Kaze\n',
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
                        left: 90,
                        top: 90,
                        child: SizedBox(
                          width: 322,
                          height: 70,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Tabiji\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1.25,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Fuji Kaze\n',
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
                        left: 90,
                        top: 180,
                        child: SizedBox(
                          width: 322,
                          height: 70,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Garden\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1.25,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Fuji Kaze\n',
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
                        left: 502,
                        top: 0,
                        child: SizedBox(
                          width: 322,
                          height: 70,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '“Seishun Sick”\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1.25,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Fuji Kaze\n',
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
                        left: 502,
                        top: 90,
                        child: SizedBox(
                          width: 322,
                          height: 70,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Kirari\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1.25,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Fuji Kaze\n',
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
                        left: 502,
                        top: 180,
                        child: SizedBox(
                          width: 322,
                          height: 70,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Golden Hour\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1.25,
                                  ),
                                ),
                                TextSpan(
                                  text: 'JVKE, Fuji Kaze\n',
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
                        left: 914,
                        top: 0,
                        child: SizedBox(
                          width: 322,
                          height: 70,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Shinunoga E-wa\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1.25,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Fuji Kaze\n',
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
                        left: 914,
                        top: 90,
                        child: SizedBox(
                          width: 322,
                          height: 70,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Matsuri\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1.25,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Fuji Kaze\n',
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
                        left: 914,
                        top: 180,
                        child: SizedBox(
                          width: 322,
                          height: 70,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'YASASHISA\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1.25,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Fuji Kaze\n',
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 18,
                top: 1053,
                child: Container(
                  width: 384,
                  height: 130,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/130x130"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 468,
                        top: 0,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/130x130"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 312,
                        top: 0,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/130x130"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 156,
                        top: 0,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://placehold.co/130x130"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 17,
                top: 1204,
                child: SizedBox(
                  width: 197,
                  height: 41,
                  child: Text(
                    'Related artist',
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
                left: 27,
                top: 1290,
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
                top: 823,
                child: Container(
                  width: 400,
                  height: 84,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 138,
                        top: 69,
                        child: SizedBox(
                          width: 36,
                          height: 15,
                          child: Text(
                            'Find',
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
                        left: 329,
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
                        left: 237,
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
                        left: 126,
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
                        left: 139,
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
                      Positioned(
                        left: 45,
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}