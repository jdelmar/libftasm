/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jdelmar <jdelmar@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/04/07 14:20:52 by jdelmar           #+#    #+#             */
/*   Updated: 2015/05/11 18:32:56 by jdelmar          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

# include <unistd.h>
# include <stdlib.h>

void	ft_bzero(char *s, int len);
char	*ft_strcat(char *dst, char *src);
int		ft_isalpha(int c);
int		ft_isspace(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_isspace(int c);
int		ft_ispunct(int c);
int		ft_isupper(int c);
int		ft_toupper(int c);
int		ft_islower(int c);
int		ft_tolower(int c);
size_t	ft_strlen(char *str);
void	*ft_memset(void *b, int c, size_t len);
void	*ft_memalloc(size_t len);
void	*ft_memcpy(void *dst, void *src, size_t len);
void	*ft_memccpy(void *dst, void *src, int c, size_t len);
char	*ft_strcat(char *s1, char *s2);
int		ft_puts(const char *s);
char	*ft_strdup(const char *s1);
char	*ft_strndup(const char *s1, int size);
void	ft_cat(int fd);
char	*ft_strchr(const char *s, int c);

#endif
