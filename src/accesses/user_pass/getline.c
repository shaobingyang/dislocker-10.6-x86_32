#ifdef HAVE_CONFIG_H
# include <config.h>
#endif

#include "getdelim.h"
#include "getline.h"

ssize_t
getline (char **lineptr, size_t *n, FILE *stream)
{
  return getdelim (lineptr, n, '\n', stream);
}
