import 'package:moreno/modelos/doctor_modelo.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class DoctoresCercanos extends StatelessWidget {
  const DoctoresCercanos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(medicosCercanos.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(medicosCercanos[index].perfil),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dr. ${medicosCercanos[index].nombre}",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(" ${medicosCercanos[index].posicion}"),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(
                        Ionicons.star,
                        color: Colors.yellow[700],
                        size: 18,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 4, right: 6),
                        child: Text(
                          "4.0",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(" ${medicosCercanos[index].totalRevisiones}"),
                    ],
                  )
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
