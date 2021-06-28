#if defined(_MSC_VER) && !defined(__clang__)
#include "stdintmsc.h"
// Don't bug me with strcpy() deprecation warnings
#pragma warning(disable : 4996)
// Or incompatible types from char[] to const char * etc
#pragma warning(disable : 4133)
#endif