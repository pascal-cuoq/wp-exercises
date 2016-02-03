/* Q1: The function constant_array() returns 1 if the array of size n pointed
   by p is constant with every element being v, and 0 otherwise. Complete
   the function's contract.

   Q2: Provide an invariant allowing the verification of constant_array()'s
   code against its specification.
*/

/*@ 
requires \valid_read(p + (0 .. n-1));


*/
int constant_array(int *p, int n, int v) {
  int i;
  /*@ 
    loop assigns i; 

  */
  for (i=0; i<n; i++)
    {
      if (p[i] != v) return 0;
    }
  return 1;
}
