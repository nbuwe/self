/* Sun-$Revision: 30.7 $ */

/* Copyright 1992-2012 AUTHORS.
   See the LICENSE file for license information. */

/*  Implementation-dependent macros */


/*
  ** As per ANSI, __STDC__ should be defined when compiling under
  **   ANSI Standard C.
  */

/*  Definitions of some preprocessor-dependent macros */

/* 
 **  CONC(a,b)  Concatenates a and b (which are not macro-expanded)
 **  CONC3(a,b,c) Concatentates a, b, and c (which are not macro-expanded)
 **  STR(a) Makes a string of the argument (which is not macro-expanded)
 **  STR(a) Makes a character of the argument (which is not macro-expanded)
 **  XCONC(a,b) Concatenates the macro expansions of a and b
 **  XSTR(b) Makes a string of the macro expansion of a
 **  XCHAR(b) Makes a character of the macro expansion of a
 */

# ifdef __STDC__
  /*  all of the below should work for all ANSI C preprocessors */
# define CONC(a,b)      a##b
# define CONC3(a,b,c)   a##b##c
# define CONC4(a,b,c,d) a##b##c##d
# define STR(a)         #a
# define CHAR(a)        ((#a)[0])
  
# define XCONC(a,b)     CONC(a,b)
# define XCONC3(a,b,c)  CONC3(a,b,c)
# define XCONC4(a,b,c,d) CONC4(a,b,c,d)
# define XSTR(a)        STR(a)
# define XCHAR(a)       CHAR(a)
  
# else
  /*
    **  The following definitions are not guaranteed to work for all non-ANSI
    **   C preprocessors
    */
  
# define CONC(a,b)      a/**/b
# define CONC3(a,b,c)   a/**/b/**/c
# define CONC4(a,b,c,d) a/**/b/**/c/**/d
# define STR(a)         "a"
# define CHAR(a)        'a'
  
  /*
    **  I know of no good way to implement XCONC, XSTR, and XCHAR for non-ANSI C
    **   preprocessors.
    */
  
# endif

#ifdef __GNUC__
#define __SELF_GNUC_PREREQ__(x, y)                                      \
        ((__GNUC__ == (x) && __GNUC_MINOR__ >= (y)) ||                  \
         (__GNUC__ > (x)))
#else
#define __SELF_GNUC_PREREQ__(x, y)      0
#endif

#if __SELF_GNUC_PREREQ__(2, 5)
#define __self_dead     __attribute__((__noreturn__))
#elif defined(__GNUC__)
#define __self_dead     __volatile
#else
#define __self_dead
#endif

#if __SELF_GNUC_PREREQ__(4, 5)
#define SELF_UNREACHABLE() __builtin_unreachable()
#else
#define SELF_UNREACHABLE() do {} while(0)
#endif


// ------------------------ Type and value checking macros -------------------- 

// Macro to verify the type of an oop, and create a requalified oop.
// E.g. CHECKOOPTYPE(host, is_byteVector, byteVectorOop, host1) expands to:
//      if(!host->is_byteVector()) return ErrorCodes::vmString_prim_error(BADTYPEERROR);
//      byteVectorOop host1 = byteVectorOop(host);
// Warning: does not wrap in '{' and '}'!
# define CHECKOOPTYPE(ref, typePredicate, newType, newRef)                    \
    if (!ref->typePredicate())                                                \
      return ErrorCodes::vmString_prim_error(BADTYPEERROR);                                        \
    newType newRef = newType(ref);


// Check that ref is a smiOop, and set up variable to hold value. 
// Warning: does not wrap in '{' and '}'!
# define CHECKOOPSMI(ref, val)                                                \
    if (!ref->is_smi())                                                       \
      return ErrorCodes::vmString_prim_error(BADTYPEERROR);                                        \
    smi val = smiOop(ref)->value();


// Check that ref is either trueObj or falseObj. Set up boolean var corresp.
// Warning: does not wrap in '{' and '}'!
# define CHECKOOPBOOL(ref, val)                                               \
    bool val;                                                                 \
    if (ref == Memory->falseObj)                                              \
      val = false;                                                            \
    else if (ref == Memory->trueObj)                                          \
      val = true;                                                             \
    else                                                                      \
      return ErrorCodes::vmString_prim_error(BADTYPEERROR);


