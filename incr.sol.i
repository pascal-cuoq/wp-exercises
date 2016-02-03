/* Q1: write the loop invariant that allows to verify incr() against its
  (partial) specification. */

int p[10];

/*@
  requires \forall integer i; 0 <= i < 10 ==> p[i] == 0;
  ensures \forall integer i; 0 <= i < 10 ==> p[i] == 1;
*/
void incr(void) {
  unsigned i;
  /*@ 
    loop invariant 
    0 <= i <= 10 &&
    (\forall integer k; 0 <= k < i ==> p[k] == 1) &&
    (\forall integer k; i <= k < 10 ==> p[k] == 0) ; */
  for (i = 0; i < 10; i++)
    p[i]++;
}
  
