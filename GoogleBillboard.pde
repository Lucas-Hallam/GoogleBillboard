public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";
double num;
public void setup() {
  for (int i = 2; i < e.length()-12; i++) {
    num = Double.parseDouble(e.substring(i,i+10));
    if (isPrime(num)) {
      System.out.println("The first prime number made up of 10 consecutive digits of e is: " + e.substring(i,i+10));
      break;
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





