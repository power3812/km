# README
To check the color impressions.

## use case
1. Check the color's impressions.
    1. POST a RGB code to api (api/device)
    2. Check the color name and impressions on the browser (pages/index)
2. Check the product color in the shop
    1. Shop: Record color and design of the product.
    2. Customer (has a handicap about color): Check the product's color information on mobile. 

## setup
```
$ bundle install
$ rails db:migrate
$ rails db:seed
```

## local serve
```
$ rails s
```

### view
1. http://localhost:3000/pages/index
2. http://localhost:3000/clothes/index

### api
1. POST http://localhost:3000/api/device
  |  key  | value type |  value  |
  | :---: | :--------: | :-----: |
  |   r   |  integer   | 0 - 255 |
  |   g   |  integer   | 0 - 255 |
  |   b   |  integer   | 0 - 255 |
1. POST http://localhost:3000/api/shop
  |  key  | value type |          value           |
  | :---: | :--------: | :----------------------: |
  | name  |   string   |   product name or kind   |
  |  jan  |   string   | product id like JAN code |
  |   r   |  integer   |         0 - 255          |
  |   g   |  integer   |         0 - 255          |
  |   b   |  integer   |         0 - 255          |
