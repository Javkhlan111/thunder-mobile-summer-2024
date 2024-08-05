class Recapture {
  bool isFemale;
  String myName;

  Recapture({required this.isFemale, required this.myName});

  void sayMyName() {
    if (isFemale = true) {
      print("Hello, Mrs.${myName}");
    } else {
      print("Hello, Mr. ${myName}");
    }
  }
}

class MeasureMyAge {
  int myAge;
  MeasureMyAge({required this.myAge});

  void calculateMyAgeDescription() {
    print(
      "Tanii tursun on: ${2024 - myAge}",
    );
  }

  void findMyYear() {
    int myBirthYear = 2024-myAge;
    int a = myBirthYear % 12;
    if (a == 0) {
      print("Ta Bich Jiltei");
    } else if (a == 1) {
      print("Ta Tahia Jiltei");
    } else if (a == 2) {
      print("Ta Nokhoi Jiltei");
    } else if (a == 3) {
      print("Ta Gakhai Jiltei");
    } else if (a == 4) {
      print("Ta Khulgana Jiltei");
    } else if (a == 5) {
      print("Ta Ukher Jiltei");
    } else if (a == 6) {
      print("Ta Bar Jiltei");
    } else if (a == 7) {
      print("Ta Tuulai Jiltei");
    } else if (a == 8) {
      print("Ta Luu Jiltei");
    } else if (a == 9) {
      print("Ta Mogoi Jiltei");
    } else if (a == 10) {
      print("Ta Mori Jiltei");
    } else if (a == 11) {
      print("Ta Khoni Jiltei");
    } else {
      print('somethign else');
    }
  }
}

void main() {
  Recapture recapture = Recapture(isFemale: false, myName: "Javkhlan");
  recapture.sayMyName();

  MeasureMyAge measureMyAge = MeasureMyAge(myAge: 21);
  measureMyAge.calculateMyAgeDescription();
  measureMyAge.findMyYear();
}
