import 'dart:io';
import 'dart:math' show Random;
void main(List<String> arguments) {

 String again;
 String _again;
 String question;
 bool _questionCheck;
 bool _againChecker;

 //initials again to start the while loop
 again = 'y';
  
  while (again == 'y' || again == 'Y'){
    print('Ask me a yes or no question');
    question = stdin.readLineSync();

    var questionCheck = _questionCheck;
        while( questionCheck == false ){

      if (question.contains('?')) {
        print(Answer());
        print('Do you have another Question, y/n?');
        _again = stdin.readLineSync();
        _againChecker = false;

        while (_againChecker == false){
          if (_again == 'y' || _again == 'Y' ||_again == 'n' || _again == 'N'){
            again = _again;
            _againChecker = true;
          } else {
            print('What are you saying? make sure your answer is y or n');
            _againChecker = false;
          }
        }
        _questionCheck = true;

      } else {
        print('Please make sure you enter a question ending with a question mark!!!');
        _questionCheck = false;
      }
    }
  }
  print('Thanks for Playing');
}

String Answer(){

  String ans;

  var randNum = Random();

  var num = randNum.nextInt(3);

  if(num == 0){
    ans ='Yes';
  } else if(num == 1) {
    ans = 'No';
  } else if(num == 2) {
    ans = 'Maybe';
  }

return ans;
}

bool question_check(String question){

   bool isit;

    if(question.contains('?')){
      isit = true;
    }

    return isit;
  }