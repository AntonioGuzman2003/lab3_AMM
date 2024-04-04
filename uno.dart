class Usuario {
  String nombre;
  String email;
  String contra;

  Usuario({
    required this.nombre,
    required this.email,
    required this.contra,
  });
}
mixin Autenticacion {
  void iniciarSesion() {
    print("Iniciando sesión...");
    print("Usuario autenticado correctamente.");
  }
}
class UsuarioAutenticado extends Usuario with Autenticacion {
  UsuarioAutenticado({
    required String nombre,
    required String email,
    required String contra,
  }) : super(nombre: nombre, email: email, contra: contra);
}
void main() {
  // Creación de un objeto UsuarioAutenticado
  UsuarioAutenticado usuario = UsuarioAutenticado(
    nombre: "Antonio Guzman",
    email: "antonio.guzman@gmail.com",
    contra: "123456",
  );
  usuario.iniciarSesion();
}
