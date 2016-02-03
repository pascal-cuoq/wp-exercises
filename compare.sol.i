/*@ 
requires \valid_read(p + (0 .. n-1));
ensures (\forall integer i; 0 <= i < n ==> p[i] == v) ==> \result == 1;
ensures (\exists integer i; 0 <= i < n &&  p[i] != v) ==> \result == 0;
*/
int constant_array(int *p, int n, int v) {
  int i;
  /*@ 
    loop assigns i; 
    loop invariant 
    0 <= i <= n && \forall integer k; 0 <= k < i ==> p[k] == v; */
  for (i=0; i<n; i++)
    {
      if (p[i] != v) return 0;
    }
  return 1;
}
