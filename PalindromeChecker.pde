public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++)
  {
    if(palindrome(standardize(lines[i]))==true){
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(reverse(word).substring(0).equals(word)){
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String sNew = new String();
  int last = str.length() - 1;
  for(int i = last; i >= 0; i--){
    sNew = sNew + str.substring(i,i+1);
  }
  return sNew;
}

public String standardize(String str){
  String stand = "";
  for(int i = 0; i < str.length(); i++){
    if(str.charAt(i) == ' '){
      stand = stand;
    }
    if(Character.isLetter(str.charAt(i)) == true){
      stand = stand + str.substring(i, i+1);
    }
  }
  stand = stand.toLowerCase();
  return stand;
}
