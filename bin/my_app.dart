// import 'package:my_app/my_app.dart' as my_app;

// toda aplicação em dart é executada a partir de um entrepoint main
import 'dart:convert';
import 'dart:io';

void main() {
print('Olá, eu sou uma calculadora');

print('Digite o primeiro número:');
var line = stdin.readLineSync(encoding: utf8);
var num1 = double.parse(line ?? "0");

print('Digite o segundo número:');
line = stdin.readLineSync(encoding: utf8);
var num2 = double.parse(line ?? "0");

print('informe a operação desejada:');
line = stdin.readLineSync(encoding: utf8);
var operation = line ?? "";

var result = 0.0;

switch (operation) {
  case '+':
    result = num1 + num2;
    break;
  case '-':
    result = num1 - num2;
    break;
  case '*':
    result = num1 * num2;
    break;
    case '/':
    result = num1 / num2;
    break;
  default:
  print('Operação inválida');
  exit(0);
}

print('Operação utilizada: $operation');
print('O resultado é: $result');
}
