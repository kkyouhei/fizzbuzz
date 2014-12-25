#include<stdio.h>
#include<time.h>

int main(void)
{
  clock_t start,end;
  start = clock();
  for(int i=0 ; i<1000000 ; i++){
  }
  end = clock();
  printf("%.4f秒かかりました\n",(double)(end-start)/CLOCKS_PER_SEC);
  return(0);
}

//void test(int idx);
//int main(void);
//
//int main(void)
//{
//  clock_t start,end;
//  start = clock();
//  test(100000);
//  end = clock();
//  printf("%.2f秒かかりました\n",(double)(end-start)/CLOCKS_PER_SEC);
//  return(0);
//}
//
//void test(int idx)
//{
//  if(idx > 1){
//    idx--;
//    test(idx);
//  }
//}
