//SPECIAL THANKS TO Ovidius Mazuru WHO MADE A FREE FLUTTER COURSE,
//AND THAT'S WHERE I GOT ALL THESE TOPICS AND CODES FROM
//github: https://github.com/trance128

//POSTED BY ARTHUR ERN
//github: https://github.com/ArthurErn

void main() {
  List<int> myList = [1, 2, 3, 4, 5, 6];

  List<String> daysOfTheWeek = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];

  //forEach();
  //simplified looping over each element of a list

  //list.forEach(function);
  //function takes an input, can be called anything
  myList.forEach((n) => print(n));

  daysOfTheWeek.forEach((day) {
    //use on strings, Lists
    //it gives us the element at position i
    if (day[0] == "T") print(day);
  });

  //Strings and Lists are cousins
  String str = "qwertyuio";
  //split string on the char
  //since we didn't specify any character, it'll split on very character
  print(str.split(''));

  //join will join a list of strings
  print(daysOfTheWeek.join("(Modified) "));
  //it doesn't join the String we set on the last index

  //map()
  //map is really similar to forEach
  //forEach simply loops over our list
  //map loops over, and returns a new list
  List<String> convertedInts =
      myList.map((element) => element.toString()).toList();
  print(convertedInts);

  int squareNum(int i) {
    return i * i;
  }

  List<int> squaredInts = myList.map(squareNum).toList();
  print(squaredInts);

  //where()
  //filter()
  //return the element if the element meets a condition
  List<int> filteredInts = squaredInts.where((element) => element > 10).toList();
  print(filteredInts);

  //reduce() fold()
  //take the list and return a single element
  //combines them through a functon we give it
  // fold -- we can give it an initial value

  int sum = myList.reduce((value, n)=> value + n);
  print(sum);

  //fold add an initial value to the element
  //                         here
  int foldedSum = myList.fold(10, (value, n)=> value + n);
  print(foldedSum);
}
