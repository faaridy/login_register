import 'dart:io';


void main() {
  String? username;
  String? email;
  String? password;
  String? password1;

  print("Welcome to registration!");

  for (int i = 1; i > 0; i--) {

  print("Enter your username:");
  username = stdin.readLineSync();

  print("Enter your email:");
  email = stdin.readLineSync();

  print("Enter your password:");
  password = stdin.readLineSync();

  print("Enter your password again:");
  password1 = stdin.readLineSync();
  
  if(username == "" || password == "" || email == "") {
    print("Name,password or email cannot be null...");
    i++;
  }else if(password != password1) {
    print("Passwords do not match...");
    i++;
  }
  }

  login log = new login(username, password, email);
  
  print("Registration completed successfully!");
  print("Welcome to login!");
  
  for(int i = 1; i > 0; i--) {
    
  print("Enter your username:");
  String loginUsername = stdin.readLineSync() ?? "";

  print("Enter your password:");
  String loginPassword = stdin.readLineSync() ?? "";
  if(loginUsername == log.username && loginPassword == log.password) {
    print("Login completed successfully!");
  }else{
    print("Login failed! Please try again...");
    i++;
  }
  }
}

class login{
    String? username;
    String? password;
    String? email;

    login( this.username, this.password, this.email);
}

