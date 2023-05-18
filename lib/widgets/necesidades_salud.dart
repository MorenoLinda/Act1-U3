// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NecesidadesSalud extends StatelessWidget {
  const NecesidadesSalud({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CustomIcon> customIcons = [
      CustomIcon(nombre: "Citas", icono: 'assets/appointment.png'),
      CustomIcon(nombre: "Veterinarias", icono: 'assets/hospital.png'),
      CustomIcon(nombre: "Enfermedades", icono: 'assets/virus.png'),
      CustomIcon(nombre: "Ver más", icono: 'assets/more.png'),
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(customIcons.length, (index) {
        return Column(
          children: [
            Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .primaryContainer
                    .withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                customIcons[index].icono,
              ),
            ),
            const SizedBox(height: 6),
            Text(customIcons[index].nombre)
          ],
        );
      }),
    );
  }
}

class CustomIcon {
  final String nombre;
  final String icono;
  CustomIcon({
    required this.nombre,
    required this.icono,
  });
}
