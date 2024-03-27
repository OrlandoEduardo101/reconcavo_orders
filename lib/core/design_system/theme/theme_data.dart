import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: Color(0xFFA8D098),
    onPrimary: Color(0xFF000000), // Ideal para contraste sobre a cor primária
    secondary: Color(0xFF6D9775),
    onSecondary: Color(0xFFFFFFFF), // Contraste sobre a cor secundária
    background: Color(0xFFFFFFFF),
    onBackground: Color(0xFF000000),
    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFF000000),
    error: Color(0xFFB00020),
    onError: Color(0xFFFFFFFF),
  ),
  // Outras customizações do tema...
);

ThemeData darkTheme = ThemeData(
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFFA8D098),
    onPrimary: Color(0xFF000000),
    secondary: Color(0xFF6D9775),
    onSecondary: Color(0xFFFFFFFF),
    background: Color(0xFF121212),
    onBackground: Color(0xFFFFFFFF),
    surface: Color(0xFF1E1E1E),
    onSurface: Color(0xFFFFFFFF),
    error: Color(0xFFCF6679), // Uma cor de erro que contrasta bem em fundos escuros
    onError: Color(0xFF000000),
  ),
  // Outras customizações do tema...
);
