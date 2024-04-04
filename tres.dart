class Empleado {
  String nombre;
  String apellido;
  double salario;
  int horasTrabajadas;

  Empleado({
    required this.nombre,
    required this.apellido,
    required this.salario,
    required this.horasTrabajadas,
  });
}
mixin Bonificaciones {
  double calcularBonificacion(double salario) {
    double porcentajeBonificacion = 0.15; 
    return salario * porcentajeBonificacion;
  }
}
class EmpleadoConBonificaciones extends Empleado with Bonificaciones {
  EmpleadoConBonificaciones({
    required String nombre,
    required String apellido,
    required double salario,
    required int horasTrabajadas,
  }) : super(
      nombre: nombre,
      apellido: apellido,
      salario: salario,
      horasTrabajadas: horasTrabajadas,
    );
}
void main() {
  var empleados = [
    EmpleadoConBonificaciones(
      nombre: "Antonio",
      apellido: "Guzman",
      salario: 2200.0,
      horasTrabajadas: 40,
    ),
    EmpleadoConBonificaciones(
      nombre: "Angelo",
      apellido: "García",
      salario: 1800.0,
      horasTrabajadas: 35,
    ),
  ];

  for (EmpleadoConBonificaciones empleado in empleados) {
    double bonificacion = empleado.calcularBonificacion(empleado.salario);
    print("Empleado: ${empleado.nombre} ${empleado.apellido}");
    print("Bonificación: \$${bonificacion}");
    print("-------------------------");
  }
}
