### MINI-COMMERCE API [DOCS]

Key Feature : 
- CRUD product
- List product
- Details product

### Product CRUD
#### [POST] /api/products
Request :
- description : add product
- body :
    ```json
            {
                "product_name" : "string",
                "img_product" : "file",
                "type_product" : "string",
                "desc" : "string",
                "price" : "integer",
                "stock" : "integer"
             }
    ```
Response :
- status [201] created
- data :
    ```json
            {
                "id" : "integer",
                "product_name" : "string",
                "img_product" : "file",
                "type_product" : "string",
                "desc" : "string",
                "price" : "integer",
                "stock" : "integer",
                "created_at" : "date"
            }
    ```
#### [GET] /api/products
Request : 
- description : get all products

Response :
- status [200] success
- data : 
    ```json
            {
                [
                    {
                        "id" : "integer",
                        "product_name" : "string",
                        "img_product" : "file",
                        "type_product" : "string",
                        "desc" : "string",
                        "price" : "integer",
                        "stock" : "integer",
                    },

                    {
                        "id" : "integer",
                        "product_name" : "string",
                        "img_product" : "file",
                        "type_product" : "string",
                        "desc" : "string",
                        "price" : "integer",
                        "stock" : "integer",
                    }
                ]
            }
    ```
###  [PUT] /api/products/:productID
Request :
- description : update product
- params : productID(integer)
- body:
    ```json
            {
                "product_name" : "string",
                "img_product" : "file",
                "type_product" : "string",
                "desc" : "string",
                "price" : "integer",
                "stock" : "integer"
            }
    ```
Response :
- status [200] success
- data :
    ```json
            {
                "Product":{
                    "id" : "integer",
                    "product_name" : "string",
                    "img_product" : "files",
                    "type_product" : "string",
                    "desc" : "string",
                    "price" : "integer",
                    "stock" : "integer",
                    "created_at" : "date",
                    "updated_at" : "date"
                }
            }
    ```
Non-responable :
- status [403] forbidden
- data : 
    ```json
            {
                "message" : "product unavailable"
            }
    ```
#### [DELETE] /api/products/:productID
Request :
- description : delete product
- params : productID

Response :
- status [200] success
- data :
    ```json
            {
                "message" : "product successfully deleted"
            }
    ```
Non-responable :
- status [403] forbidden
- data : 
    ```json
            {
                "message" : "product unavailable"
            }
    ```

### List Product 
#### [GET] /api/list-products
Request :
- description : show all product to the menu

Response :
- status [200] success
- data :
    ```json
            {
                 [
                    {
                        "product_name" : "string",
                        "img_product" : "file",
                        "type_product" : "string",
                        "price" : "integer",
                        "stock" : "integer"
                    }
                ]
            }
    ```
#### [POST] /api/list-products
Request : 
- description : search product
- body :
    ```json
            {
                "product_name" : "string",
            }
    ```
Response :
- status [200] success
- data :
    ```json
            {
                "product_name" : "string",
                "img_product" : "file",
                "type_product" : "string",
                "price" : "integer",
                "stock" : "integer"
            }
    ```

Non-responable : 
- status [404] not found
- data :
    ```json
            {
                "message" : "product not found"
            }
    ```
### Detail product
#### [GET] /api/list-products/detail-product/productID
Request : 
- description : detail product
- params : productID(integer)

Response :
- status [200] success
- data :
    ```json
            {
                "product_name" : "string",
                "img_product" : "file",
                "type_product" : "string",
                "price" : "integer",
                "stock" : "integer",
                "desc" : "string"
            }
    ```