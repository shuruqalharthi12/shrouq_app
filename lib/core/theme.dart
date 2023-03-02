// instant static theme data

//         primarySwatch: Colors.blue,

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shrouq_app/core/palette.dart';

class Theme {
  static get kLight => ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: const Color(0xff2f774d),
            elevation: 0,
            titleTextStyle: GoogleFonts.cairo(
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            )),
        primarySwatch: Palette.createMaterialColor(const Color(0xff227650)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff2f774d),
          ),
        ),
        textTheme: GoogleFonts.cairoTextTheme(),
        scaffoldBackgroundColor: const Color(0xfffcfcfc),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.blueGrey.shade50,
          // hoverColor: Colors.lime.shade100,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      );

  static get dark => ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff2f774d),
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        primarySwatch: Colors.green,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff2f774d),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.blueGrey.shade50,
          hoverColor: Colors.lime.shade100,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        scaffoldBackgroundColor: const Color(0xff2f774d),
      );
}
