// ignore_for_file: public_member_api_docs, sort_constructors_first
class DoctorModelo {
  final String nombre;
  final String posicion;
  final int revisionPromedio;
  final int totalRevisiones;
  final String perfil;
  DoctorModelo({
    required this.nombre,
    required this.posicion,
    required this.revisionPromedio,
    required this.totalRevisiones,
    required this.perfil,
  });
}

final List<DoctorModelo> medicosCercanos = [
  DoctorModelo(
    nombre: "Ricardo Salgado",
    posicion: "Medico general",
    revisionPromedio: 0,
    totalRevisiones: 9,
    perfil: "assets/doctor_1.jpg",
  ),
  DoctorModelo(
    nombre: "Misha Palma",
    posicion: "Medico general",
    revisionPromedio: 0,
    totalRevisiones: 10,
    perfil: "assets/doctor_2.jpg",
  ),
  DoctorModelo(
    nombre: "Nicole Sauria",
    posicion: "Enfermera general",
    revisionPromedio: 2,
    totalRevisiones: 15,
    perfil: "assets/doctor_3.jpg",
  ),
];
