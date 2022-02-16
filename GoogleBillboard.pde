public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";
double num;
public void setup() {
  int j = 0;
  for (int i = 2; i < e.length()-9; i++) {
    num = Double.parseDouble(e.substring(i,i+10));
    if (isPrime(num)) {
      System.out.println("Puzzle 1:");
      System.out.println("The first prime number made up of 10 consecutive digits of e is: " + e.substring(i,i+10));
      break;
    }
  }
  System.out.println("Puzzle 2:");
  for (int i = 2; i < e.length()-9; i++) {
    num = Double.parseDouble(e.substring(i,i+10));
    if (sum49(num) && j <= 5) {
      System.out.println("f(" + (j+1) + ")= " + e.substring(i,i+10));
      j++;
    }
  }
}
public void draw() {
  //not needed for this assignment
}
public boolean isPrime(double dNum) {
  boolean prime;
  prime = true;
  for (int i = 2; i <= Math.sqrt(dNum); i++) {
    if (dNum%i == 0) {
      prime = false;
    }
  }
  return prime;
}
public boolean sum49(double dNum) {
  int digitSum = 0;
  for (int i = 0; i < 10; i++) {
    digitSum += (dNum%Math.pow(10,i+1)-dNum%Math.pow(10,i))/((int) Math.pow(10,i));
  }
  boolean ifsum49 = (digitSum == 49);
  return ifsum49;
}
