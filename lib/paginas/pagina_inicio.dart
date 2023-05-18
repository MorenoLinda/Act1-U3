import 'package:moreno/widgets/necesidades_salud.dart';
import 'package:moreno/widgets/doctores_cercanos.dart';
import 'package:moreno/widgets/Tarjeta_Proxima.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class PaginaInicio extends StatelessWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hola, Linda"),
            Text(
              "¿Como se siente tu mascota hoy?",
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Ionicons.notifications,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Ionicons.search_outline),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(14),
        children: [
          const TarjetaProxima(),
          const SizedBox(height: 20),
          Text(
            "Necesidades de salud",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 15),
          const NecesidadesSalud(),
          const SizedBox(height: 25),
          Text(
            "Doctores Cercanos",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 15),
          const DoctoresCercanos(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            activeIcon: Icon(
              Ionicons.home,
              color: Colors.purple,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.calendar_outline),
            activeIcon: Icon(Ionicons.calendar),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.chatbubble_ellipses_outline),
            label: "Home",
            activeIcon: Icon(Ionicons.chatbubble_ellipses),
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            activeIcon: Icon(Ionicons.person),
            label: "Home",
          ),
        ],
      ),
    );
  }
}
