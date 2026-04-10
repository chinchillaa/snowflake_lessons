create or replace file format ZENAS_ATHLEISURE_DB.PRODUCTS.zmd_file_format_2
    record_delimiter = '^'
    field_delimiter = '='
    trim_space = TRUE
    ;

list @ZENAS_ATHLEISURE_DB.PRODUCTS.PRODUCT_METADATA;

select $1, $2
from @ZENAS_ATHLEISURE_DB.PRODUCTS.PRODUCT_METADATA/product_coordination_suggestions.txt
(file_format => ZENAS_ATHLEISURE_DB.PRODUCTS.ZMD_FILE_FORMAT_2);