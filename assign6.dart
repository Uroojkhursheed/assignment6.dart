import 'dart:io';
void main(){
 //Question no 1: Write a Dart function that returns whether a passed string is palindrome or not?
print('hello');
  String? original =  stdin.readLineSync();
  String? reverse = original!.split('').reversed.join('');
  if(original == reverse)
  {
    print('It is a Palindrome');
  }else{
    print('It is not Palindrome');

  }

  //Question no 2:Write a Dart function that returns a passed string with letters in alphabetical orders.
  
String sortletter = sortLettersAlphabetically ("world");
print(sortletter);

//Question no 3: Write a Dart function that accepts a string as a parameter and converts the first letter of each word of the string in upper case.
print(convertToTitleCase('the quick brown fox'));

//Question no 4: Write a Dart function which will take an array of numbers stored and find the second lowest and second greatest numbers, respectively.

List<int> mylist = [5, 12, 7, 87, 66, 1, 99, 23];
  var result = findSecondLowestAndGreatest(mylist);
  print("Second lowest number: ${result[0]}");
  print("Second greatest number: ${result[1]}");

// Q5: Write a Dart function that accepts two arguments, a string and a letter and the function will count the number of occurrences of the specified letter within the string


String string = 'w3resource.com';
  String letter = 'o';
  int count = countOccurrences(string, letter);
  print('The letter "$letter" occurrences $count times in the string "$string"');
 
 //Q6: Write a Dart function that accept a list of country names as input and returns the longest country name as output.

 List<String> countries = ["Australia", "United States of America","Germany"];
  String longestCountry = getLongestCountry(countries);
  print(longestCountry);
}
// question no 1 function 
bool isPalindrome(String str) {
  int length = str.length;
  for (int i = 0; i < length / 2; i++) {
    if (str[i] != str[length - i - 1]) {
      return false;
    }
  }
  return true;
}

//question no 2 functon
String alphabetical(String input) {
  List<String> characters = input.split('');
  characters.sort();
  return characters.join('');
}

//question no 3 function.

String TitleCase(String str) {
  if (str.isEmpty) {
    return str;
  }

  List<String> words = str.split(" ");
  for (int i = 0; i < words.length; i++) {
    String word = words[i];
    words[i] = word[0].toUpperCase() + word.substring(1);
  }
  
  return words.join(" ");
}

//Question no 4 function.
void findSecondNumbers(List<int> arr) {
  arr.sort();
  int n = arr.length;
  int secondLowest = arr[1];
  int secondGreatest = arr[n - 2];
  print("Second lowest number: $secondLowest");
  print("Second greatest number: $secondGreatest");
}

//Questio no 5 function.
int countOccurrences(String string, String letter) {
  int count = 0;
  for (int i = 0; i < string.length; i++) {
    if (string[i] == letter) {
      count++;
    }
  }
  return count;
}

//Quetion no 6 function.
String getLongestCountry(List<String> countries) {
  String longestCountry = "";
  for (String country in countries) {
    if (country.length > longestCountry.length) {
      longestCountry = country;
    }
  }
  return longestCountry;
}