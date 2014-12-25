import java.io.File;
import java.io.FileWriter;

final class Fizzbuzz{
  static{
    try{
      final long start = System.currentTimeMillis();
      final FileWriter writer = new FileWriter(new File("./java_result.txt"));
      final StringBuffer str = new StringBuffer();
      for(int i=1 ; i<=1000000 ; i++){
        str.append(i);
        if((i % 3) == 0 && (i % 5) == 0){str.append(i + " fizz buzz\n"); continue;}
        if((i % 3) == 0){str.append(i + " fizz\n"); continue;}
        if((i % 5) == 0){str.append(i + " buzz\n"); continue;}
      }
      writer.write(str.toString());
      writer.close();
      System.out.println("実行にかかった秒 : " + (System.currentTimeMillis() - start) * 0.001);
    }catch(Exception e){}
  }
  public static void main(String[] args){}
}
