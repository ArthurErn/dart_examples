//SPECIAL THANKS TO Ovidius Mazuru WHO MADE A FREE FLUTTER COURSE,
//AND THAT'S WHERE I GOT ALL THESE TOPICS AND CODES FROM
//github: https://github.com/trance128

//POSTED BY ARTHUR ERN
//github: https://github.com/ArthurErn

void main() {
  String isNumberEven(int i) {
    if (i % 2 == 0) {
      return "Number is even";
    } else {
      return "Number is odd";
    }
  }

  print(isNumberEven(3));

  // ternary operator -- short hand for if/else
  String isNumberEvenTernary(int i) {
    //condition ? what to do if true: what to do if false
    return i % 2 == 0 ? "Number is even" : "Number is odd";
  }

  print(isNumberEvenTernary(2));

  // also works with if/else if/ else 
  // using arrow function to make it less verbose
  String numberValue(int i) => i < 10?"Less than 10": i < 20? "Less than 20 and more than 10": "More than 20";
  // the arrow function creates a return function
  // without using the brackets


  print(numberValue(8));
  print(numberValue(25));
  print(numberValue(15));

  // assert keyword
  // if everything is fine, we'll see no output
  // if our assertion fails (if the condition is false) it'll throw an AssertionError
  for(int i = 0; i< 10000; i++){
    assert(isNumberEven(i) == isNumberEvenTernary(i));
  }
}
