void main(List<String> args) {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  // Baseado no array acima monte um relatório onde mostre
  // Apresente a quantidade de pacientes com mais de 20 anos
  // Agrupar os pacientes por familia(considerar o sobrenome) apresentar por familia.

  var pacientesList = pacientes.map((e) => e.split('|'));

  print('Quantidade de pacientes com mais de 20 anos : ' +
      pacientesList
          .where((element) => int.parse(element[1]) > 20)
          .length
          .toString());

  pacientesList
      .map((e) => e[0].split(' '))
      .map((e) => e[1])
      .toSet()
      .forEach((element) {
    print('Familia : ${element}');
    print(pacientesList.map((e) => e[0]).where((e) => e.contains(element)));
  });
}
