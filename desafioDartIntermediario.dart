main(List<String> args) {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  var pessoasList = pessoas.map((e) => e.split('|')).toList();
  // Baseado na lista acima.
  // 1 - Remover os duplicados
  print('Quantidade de Pessoas sem duplicidade: ${pessoasList.map((e) => e[0]).toSet().length}');
  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  print('Masculino : ${pessoasList.where((element) => element[2] == 'Masculino').map((e) => e[0]).toSet().length}');
  print('Feminino : ${pessoasList.where((element) => element[2] == 'Feminino').map((e) => e[0]).toSet().length}');
  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
  //     e mostre a quantidade de pessoas com mais de 18 anos
  print('Maiores de 18 : ${pessoasList.where((element) => int.parse(element[1]) > 18).map((e) => e[0]).toSet().length}');  
  // 4 - Encontre a pessoa mais velha.
  pessoasList.sort((a,b) => int.parse(b[1]).compareTo(int.parse(a[1])));
  print('Pessoa mais velha: ${pessoasList.first}');
}
