class Plane{

  bool nisehuu;
  bool achaatai;
  double bagtaamj;

  Plane(this.nisehuu, this.achaatai, this.bagtaamj);

}


void main() {

  Plane Boeing =  Plane(true, false, 0);
  print('Niseh uu?');
  print(Boeing.nisehuu);
  print(Boeing.achaatai);
  print(Boeing.bagtaamj);
  print('===========');

  Plane AH =  Plane(false, true, 400.5);
  print('Niseh uu?');
  print(AH.nisehuu);
  print(AH.achaatai);
  print(AH.bagtaamj);
  print('===========');

  Plane F16 =  Plane(true, true, 400.5);
  print('Niseh uu?');
  print(F16.nisehuu);
  print(F16.achaatai);
  print(F16.bagtaamj);
  print('===========');
}
