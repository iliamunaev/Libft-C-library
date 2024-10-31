#ifndef TEST42LIB_H
#define TEST42LIB_H

#include <stdio.h>
#include <string.h>

#include "../libft.h"

void	ASSERT_EQUAL_INT(int exp_int, int act_int);
void	ASSERT_EQUAL_STR(const char *exp_str, const char *act_str);
void	ASSERT_EQUAL_CHAR(int exp_char, int act_char);

#endif // TEST42LIB_H