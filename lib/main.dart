import 'package:device_preview/device_preview.dart';
import 'package:moreno/paginas/pagina_inicio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const VeterinariaApp(),
  ));
}

class VeterinariaApp extends StatelessWidget {
  const VeterinariaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      title: 'Veterinaria app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff5a73d8),
        textTheme: GoogleFonts.plusJakartaSansTextTheme(
          Theme.of(context).textTheme,
        ),
        useMaterial3: true,
      ),
      home: const PaginaInicio(),
    );
  }
}
