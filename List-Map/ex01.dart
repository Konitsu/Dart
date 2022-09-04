List<double> grade = [5, 10, 8, 7, 6.5, 9, 9.4, 3, 0, 10, 8.9, 3];
void main() {
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
}
