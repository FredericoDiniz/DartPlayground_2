void calc(
    [double? grupo11, double? grupo12, double? grupo21, double? grupo22]) {
  int nulos = contaNulos(grupo11, grupo12, grupo21, grupo22);

  print('Regra de 3 simples para grandezas diretamente proporcionais...\n');

  print('Dados fornecidos:');

  print('-----------------');

  print('grupo11: $grupo11');
  print('grupo12: $grupo12');
  print('grupo21: $grupo21');
  print('grupo22: $grupo22\n');

  if (nulos == 1) {
    print('Testes:');

    print('-------');
    print('Somente um nulo - Ok!!\n');
    if (grupo11 == null && grupo22 != 0) {
      grupo11 = (grupo12! * grupo21!) / grupo22!;
      print("Resultado: grupo11 = $grupo11\n");
    }
    if (grupo12 == null && grupo21 != 0) {
      grupo12 = (grupo11! * grupo22!) / grupo21!;
      print("Resultado: grupo12 = $grupo12\n");
    }

    if (grupo21 == null && grupo12 != 0) {
      grupo21 = (grupo11! * grupo22!) / grupo12!;
      print("Resultado: grupo21 = $grupo21\n");
    }

    if (grupo22 == null && grupo11 != 0) {
      grupo22 = (grupo21! * grupo12!) / grupo11!;
      print("Resultado: grupo22 = $grupo22\n");
    }

    print('Verificação');
    print('-----------');

    print('grupo11 x grupo22 = grupo12 x grupo21');
    print('$grupo11 x $grupo22 = $grupo12 x $grupo21');
    print('${grupo11! * grupo22!} = ${grupo12! * grupo21!} - Ok!!\n\n');
  } else {
    print('ERRO!! - Quantidade de variaveis nulas incorreta!!!');
    print('impossível calcular!!!\n\n');
  }
}

int contaNulos(
    [double? grupo11, double? grupo12, double? grupo21, double? grupo22]) {
  int nulos = 0;
  if (grupo11 == null) {
    nulos++;
  }
  if (grupo12 == null) {
    nulos++;
  }
  if (grupo21 == null) {
    nulos++;
  }
  if (grupo22 == null) {
    nulos++;
  }
  return nulos;
}
