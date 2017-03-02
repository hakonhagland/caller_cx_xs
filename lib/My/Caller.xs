#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

void test_c() {
    const PERL_CONTEXT *cx = caller_cx(0, NULL);
    char *pack_name = HvNAME((HV*)CopSTASH(cx->blk_oldcop));
    printf( "[From C] : caller's package name is: %s\n", pack_name );
}
  

MODULE = My::Caller	    PACKAGE = My::Caller
PROTOTYPES: DISABLE

void
test_c ()
        PREINIT:
        I32* temp;
        PPCODE:
        temp = PL_markstack_ptr++;
        test_c();
        if (PL_markstack_ptr != temp) {
          PL_markstack_ptr = temp;
          XSRETURN_EMPTY;
        }
        return;

