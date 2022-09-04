import 'dart:math';

List<double> grade = [];
Map<String, String> nameEmail = Map();
List GradeNameEmail = [];

void main() {
  FillsList();
  double media = calculateAverage();
  FillsGradeNameEmail();
  StudentsAboveMedia(media);
}

//Função para preencher a lista de notas com notas aleatórias
List FillsList() {
  var doubleValue;
  for (int k = 0; k < 12; k++) {
    doubleValue = Random().nextDouble() * 11;
    grade.add(doubleValue);
  }
  return grade;
}

//Função para calcular e imprimir a média da turma
double calculateAverage() {
  int quantityGrades = grade.length;

  double sumGrades = 0;
  grade.forEach((double sumNotes) => (sumGrades += sumNotes));

  double finalGrade = sumGrades / quantityGrades;
  print("A média da turma é " +
      finalGrade.toStringAsFixed(2).replaceAll(".", ",") +
      ".");

  int studentsAverage = 0;
  for (int i = 0; i < grade.length; i++) {
    if (grade[i] >= finalGrade) {
      studentsAverage++;
    }
  }
  print("$studentsAverage alunos alcançaram a média.");
  return finalGrade;
}

//Função para preencher a lista com nomes, emails e notas com um mapa
List FillsGradeNameEmail() {
  Map student = Map();
  int i = 0;

  student = {'Nome': "João", 'E-mail': "joao213@gmail.com", 'Nota': grade[i]};
  i++;
  GradeNameEmail.add(student);

  student = {
    'Nome': "Pedro",
    'E-mail': "pdr0_silva@hotmail.com",
    'Nota': grade[i]
  };
  i++;
  GradeNameEmail.add(student);

  student = {
    'Nome': "Nathan",
    'E-mail': "nathanbrandao1@gmail.com",
    'Nota': grade[i]
  };
  i++;
  GradeNameEmail.add(student);

  student = {
    'Nome': "Cláudio",
    'E-mail': "claudin2003_a@yahoo.com.br",
    'Nota': grade[i]
  };
  i++;
  GradeNameEmail.add(student);

  student = {'Nome': "Maria", 'E-mail': "marry238@gmail.com", 'Nota': grade[i]};
  i++;
  GradeNameEmail.add(student);

  student = {
    'Nome': "Yasmin",
    'E-mail': "yasmin_martins2002@gmail.com",
    'Nota': grade[i]
  };
  i++;
  GradeNameEmail.add(student);

  student = {
    'Nome': "Felipe",
    'E-mail': "lipe_campos422@gmail.com",
    'Nota': grade[i]
  };
  i++;
  GradeNameEmail.add(student);

  student = {
    'Nome': "Ana",
    'E-mail': "aninha_lu1276@hotmail.com",
    'Nota': grade[i]
  };
  i++;
  GradeNameEmail.add(student);

  student = {
    'Nome': "Isadora",
    'E-mail': "zadora_iza3245@gmail.com",
    'Nota': grade[i]
  };
  i++;
  GradeNameEmail.add(student);

  student = {
    'Nome': "Arthur",
    'E-mail': "arthur29042001@gmail.com",
    'Nota': grade[i]
  };
  i++;
  GradeNameEmail.add(student);

  student = {
    'Nome': "Cleiton",
    'E-mail': "cleitin_marcos12@gmail.com",
    'Nota': grade[i]
  };
  i++;
  GradeNameEmail.add(student);

  student = {
    'Nome': "Ariane",
    'E-mail': "arisouza9087@gmail.com",
    'Nota': grade[i]
  };
  i++;
  GradeNameEmail.add(student);

  return GradeNameEmail;
}

//Função que testa alunos que estão na média e imprime
void StudentsAboveMedia(media) {
  for (int j = 0; j < grade.length; j++) {
    if (GradeNameEmail[j]['Nota'] >= media) {
      print("\n" +
          GradeNameEmail[j]['Nome'] +
          " ficou acima da média.\nE-mail ->" +
          GradeNameEmail[j]['E-mail']);
    }
  }
}
