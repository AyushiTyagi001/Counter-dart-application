
import 'dart:io';

void main(List<String>arguments){

  assignSecond assign = new assignSecond();
  assign.introduction();
  assign.maintask();
  assign.finalmethod();

}


class assignSecond {
  String? user;
  String? mailId;
  String last = 'Thank You!';

  void maintask(){
  print("From the above tasks choose which task do you want to perform :");
   print('''
   0. Know about us ?
   1. Perform increment ?
   2. Perform decrement ?
   3. Perform multiplication ?
   4. Perform division ?
   5. Know the remainder after division?
   6. Want to see your personal details?
   7. Want to change your personal details?''');
   
   int tempInput = int.parse(stdin.readLineSync()!);

    switch (tempInput) {
      case 0:
        print(aboutUs());
        break;
      case 1:
        print(increment());
        break;
      case 2:
        print(decrement());
        break;
      case 3:
        print(multiplication());
        break;
      case 4 :
        print(division());
        break;
      case 5:
        print(remainder());
        break;
      case 6:
        print(personaldetails(user,mailId));
        break;
      case 7:
        print(personalChange(user,mailId));
        break;
    } 
  }

  void introduction(){ 
  print ('''   Hello Welcome to our User application :)
      First you need to enter some personal details : '''); 
    print("Your Name? : "); 
  this.user = stdin.readLineSync()!;
  print("Your E- mail id? :  " );
  this.mailId= stdin.readLineSync()!;
  }
    
  String aboutUs(){ 
    
    print('''      Hello !!! $user Glad to know you are here with us (;
    This user application is build to make your work easier and more interesting .''');
        String x= ':)';
         return x ;
  }

  String increment(){
    print("Enter the starting counter value you want : ");
    int value = int.parse(stdin.readLineSync()!);
    print("Enter the value for increment in counter : ");
    int incrementBy = int.parse(stdin.readLineSync()!);
    int incrementResult= value+incrementBy ;
    print("Your incremented result is : $incrementResult");
    return last;
  }

  String decrement(){
    print("Enter the starting counter value you want : ");
    int value= int.parse(stdin.readLineSync()!);
    print("Enter the value for decrement in counter : ");
    int decrementBy= int.parse(stdin.readLineSync()!);
    int decrementResult= value- decrementBy;
    print("Your decrement result is : $decrementResult");
    return last;

  }

  String multiplication(){
    print("Enter two values to find the multiplicative result : ");
    int value1=int.parse(stdin.readLineSync()!);
    int value2=int.parse(stdin.readLineSync()!);
    int multiplicative = value1*value2;
    print("Your multiplicative result is : $multiplicative");
    return last;
  }

  String division(){
     print("Enter two values to find the division result : ");
    int value1=int.parse(stdin.readLineSync()!);
    int value2=int.parse(stdin.readLineSync()!);
    double divi = value1/value2;
    print("Your division result is : $divi");
    return last;
}

  String remainder(){
    print("Enter two values to find the remainder : ");
    int value1=int.parse(stdin.readLineSync()!);
    int value2=int.parse(stdin.readLineSync()!);
    int remain = value1%value2;
    print("The remainder result is : $remain");
    return last;
  }

  String personaldetails(x,y){
    x=this.user;
    print("Your name is : $x");
    y=this.mailId;
    print("Your E-mail id is : $y");
    print("You choose option 6th ");
    String s= '(;';
    return s; 
  }

  String personalChange(x,y){
    print("Enter your new Name : ");
    x = stdin.readLineSync()!;
    this.user=x;
    print("Enter your new E-mail id : ");
    y=stdin.readLineSync();
    this.mailId=y;
    print("Your Name is changed to : $user");
    print("Your E-mail account is changed to : $y");
    String z =':]';
    return z;
  }
  void finalmethod(){
 print("Are you interested to continue with our application (yes/no)?");
  String egerness =  stdin.readLineSync()!;
  if(egerness == 'yes'){
   print("thank you let's continue");
    maintask();
    }
    else{
      print('''OK!!
          HAVE A NICE DAY :)''');
    }
  }
}