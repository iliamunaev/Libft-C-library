 
 /* The function converts the initial portion of the string pointed to by str to int.
 * Return: the converted value or 0 on error.
 */
 #include "libft.h"

 int	ft_atoi(const char *str)
{
	int	num;
	int	sign;

	num = 0;
	sign = 1;
	while (*str == ' ' || *str == '\n' || *str == '\f' || *str == '\r'
		|| *str == '\t' || *str == '\v')
	{
		str++;
	}
    if (*str == '-')
    {
        sign = -1;
        str++;
    }
    else if (*str == '+')
    {
        str++;
    }
	while (*str >= '0' && *str <= '9')
	{
		num = num * 10 + *str - '0';
		str++;
	}
	return (num * sign);
}