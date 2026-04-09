create or replace file format ZENAS_ATHLEISURE_DB.PRODUCTS.zmd_file_format_2
    field_delimiter = '^';

list @ZENAS_ATHLEISURE_DB.PRODUCTS.PRODUCT_METADATA;

select $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11
from @ZENAS_ATHLEISURE_DB.PRODUCTS.PRODUCT_METADATA/product_coordination_suggestions.txt
(file_format => ZENAS_ATHLEISURE_DB.PRODUCTS.ZMD_FILE_FORMAT_2);