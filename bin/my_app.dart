// import 'package:my_app/my_app.dart' as my_app;

// toda aplicação em dart é executada a partir de um entrepoint main
import 'dart:convert';
import 'dart:io';

void main() {
print('Olá, eu sou uma calculadora');

var num1 = readNumber('Digite o primeiro número:');

var num2 = readNumber('Digite o segundo número:');

var operation = lerConsole('informe a operação desejada: +, -, *, /');

calculate(operation, num1, num2);
}

void calculate(operation, double num1, double num2) {
  var result = 0.0;

switch (operation) {
  case '+':
    result = soma(num1, num2);
    break;
  case '-':
    result = subtracao(num1, num2);
    break;
  case '*':
    result = multiplicacao(num1, num2);
    break;
    case '/':
    result = divisao(num1, num2);
    break;
  default:
  print('Operação inválida');
  exit(0);
}

print('Operação utilizada: $operation');
print('O resultado é: $result');
}

String lerConsole(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double readNumber(String texto) {
  var number = double.tryParse(lerConsole(texto));
 if(number == null) {
   print('Número inválido');
   return 0.0;
 } else {
   return number;
 }
}

double soma(double num1, double num2) {
  return num1 + num2;
}

double subtracao(double num1, double num2) {
  return num1 - num2;
}

double multiplicacao(double num1, double num2) {
  return num1 * num2;
}

double divisao(double num1, double num2) {
  if(num2 == 0) {
    print('Não é possível dividir por zero');
    exit(0);
  }
  return num1 / num2;
}

