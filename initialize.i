/* Q1: translate the ACSL contract of the function initialize to natural
  language.

  Q2: propose a loop invariant that allows to verify the function.
*/

int t[10];

/*@ requires \true;
  ensures \forall integer i; 0 <= i < 10 ==> t[i] == 0; */
void initialize(void) {
  int i;




  for (i=0; i<10; i++)
    t[i] = 0;
}
