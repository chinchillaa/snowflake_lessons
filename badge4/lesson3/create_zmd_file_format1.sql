create or replace file format ZENAS_ATHLEISURE_DB.PRODUCTS.zmd_file_format_1
    record_delimiter = '^';

list @ZENAS_ATHLEISURE_DB.PRODUCTS.PRODUCT_METADATA;

select $1
from @ZENAS_ATHLEISURE_DB.PRODUCTS.PRODUCT_METADATA/product_coordination_suggestions.txt
(file_format => ZENAS_ATHLEISURE_DB.PRODUCTS.ZMD_FILE_FORMAT_1);