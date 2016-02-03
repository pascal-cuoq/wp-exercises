
/* For the purpose of the exercise, we consider 48-bit big integers 
   represented as arrays of 3 unsigned short (16-bit) digits. */

unsigned short t[3];

/*@ 
  ensures 
       t[0] + 0x10000 * (t[1] + 0x10000 * t[2])  ==
  \old(t[0] + 0x10000 * (t[1] + 0x10000 * t[2])) + x;
*/
void add(unsigned short x) {
  unsigned int s0 = (unsigned int)t[0] + x;
  t[0] = s0 % 0x10000;
  unsigned int s1 = s0 / 0x10000 + t[1];
  t[1] = s1 % 0x10000;
  unsigned int s2 = s1 / 0x10000 + t[2];
  t[2] = s2 % 0x10000;
}

/* Q1: regardless of whether alt-ergo can prove it, does it seem to you
   that add() satisfies its contract? */
