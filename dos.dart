 import 'dart:math' as Math;
class Calculadora {
  double sumar(double a, double b) {
    return a + b;
  }

  double restar(double a, double b) {
    return a - b;
  }

  double multiplicar(double a, double b) {
    return a * b;
  }

  double dividir(double a, double b) {
    if (b == 0) {
      throw Exception("División por cero");
    }
    return a / b;
  }
}
mixin OperacionesAdicionales {
  double potenciar(double base, int exponente) {
    if (exponente == 0) {
      return 1;
    } else if (exponente > 0) {
      return base * potenciar(base, exponente - 1);
    } else {
      return 1 / potenciar(base, -exponente);
    }
  }
}
mixin OperacionesAvanzadas {
  double raizCuadrada(double numero) {
    if (numero < 0) {
      throw Exception("Raíz cuadrada de un número negativo");
    }
    return Math.sqrt(numero);
  }
}

class CalculadoraAvanzada extends Calculadora with OperacionesAdicionales, OperacionesAvanzadas {
  // No se requieren métodos adicionales, ya que se heredan de las clases base
}
void main() {
  // Creación de un objeto CalculadoraAvanzada
  CalculadoraAvanzada calculadora = CalculadoraAvanzada();

  // Realización de operaciones matemáticas
  double suma = calculadora.sumar(10, 8);
  double resta = calculadora.restar(19, 7);
  double multiplicacion = calculadora.multiplicar(5, 4);
  double division = calculadora.dividir(12, 4);
  double potencia = calculadora.potenciar(2, 3);
  double raizCuadrada = calculadora.raizCuadrada(9);

  // Impresión de los resultados
  print("Suma: $suma");
  print("Resta: $resta");
  print("Multiplicación: $multiplicacion");
  print("División: $division");
  print("Potencia: $potencia");
  print("Raíz cuadrada: $raizCuadrada");
}


