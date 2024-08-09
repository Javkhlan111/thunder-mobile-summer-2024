class Employee{
  String jobTitle;
  String location;
  int salary;
  int overTimeHour;

  Employee({required this.jobTitle, required this.location,
    required this.salary, required this.overTimeHour});

  void calculateSalary(){

    print("${jobTitle} located in ${location} worked ${overTimeHour} hours overtime.");

    if(salary<=4000){
      int a = overTimeHour * 10;
      print("Total Salary = ${a + salary} USD");
    }
    else {
      int a = overTimeHour * 20;
      print("Total Salary = ${a + salary} USD");
    }

    ///print("Total Salary = ${a} USD");
  }
}

void main(){
  Employee employer = Employee(jobTitle: "Finance Manager",
      location: "Ulaanbaatar",
      salary: 5000,
      overTimeHour: 7);
  employer.calculateSalary();

}