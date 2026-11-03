/* chopdat.h */

#ifndef CHOPDAT_H
#define CHOPDAT_H

#include <stddef.h>

struct csv_table_t;
typedef struct csv_table_t * csv_table;

csv_table chopdat_csv_table_create(void);
void chopdat_csv_table_destroy(csv_table);
size_t chopdat_csv_table_nofrows(csv_table);
size_t chopdat_csv_table_nofcols(csv_table);

int chopdat_csv_file(const char *);

#endif

/* chopdat.h ends here */