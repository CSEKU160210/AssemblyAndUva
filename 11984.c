//uva 11984
#include<stdio.h>
int main ()
{
    int testCase; scanf ("%d", &testCase);
    int cases = 0;

    while ( testCase-- ) {
        int c, d; scanf ("%d %d", &c, &d);

        double f = (9.0/5.0) * c + 32;
        f += d;
        f -= 32;
        f *= 5;
        f /= 9;

        printf ("Case %d: %.2lf\n", ++cases, f);
    }

    return 0;
}
