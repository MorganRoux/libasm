#include <stdio.h>
#include <inttypes.h>
 #include <errno.h>

int ft_strlen(char *str);
char *ft_strcpy(char *dest, char *src);
int ft_strcmp(char *str1, char *str2);
int ft_write(int fd, const void *buf, size_t nbyte);
// int ft_read(int fd, const void *buf, size_t nbyte);
// void    *ft_strdup(char *str);

int main() {
   	char *str= "Mo000000000000000000000000000000000000000000000000000000000";
    	char str2[10] = "Morgan0";
   	char *str3;
	char str4[20];
	char str5[10] = "Morgan1";
    	int i;

	printf("strlen : %d\n", ft_strlen(str));
	printf("strcpy : %s\n", ft_strcpy(str4, str2));
	printf("strcmp : %d\n", ft_strcmp(str5, str2));
   	i = ft_write(1, str, 2);
    // i = ft_read(30, str2, 3);
    // printf("%d - %d", i, errno);
    // str3 = ft_strdup(str);
    // printf("%s", str3);
//	printf("%d", i);
    return (0);
}
