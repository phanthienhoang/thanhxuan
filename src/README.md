## About Tram Da Thanh Xuan

Dự an về website bán thang trầm đá thanh xuân

## Admin
Sử dụng Laravel Voyager

## Hướng dẫn cấu hình .env
```
APP_URL=http://localhost:8000
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=tramdatthanhxuan
DB_USERNAME=root
DB_PASSWORD=
```

## Hướng dẫn cài đặt Laravel Voyager
1. Clone Source
2. Tạo database tramdatthanhxuan
3. Cấu hình file .env như trên ( Nếu có pass thì chỉnh lại)
4. Lấy file tramdatthanhxuan.sql trong thư mục database của source
5. Chạy file tramdatthanhxuan.sql run sql để gen database
6. composer install để tải lại các thư viên trong composer.json
7. php artisan serve
8. Truy cập http://localhost:8000/admin đăng nhập bằng user vừa tạo ở trên

## Note
1. Không được code ở nhánh master và dev
2. Quy ước tạo nhánh
- feature/tennhanh ( moi chuc nang 1 nhanh )
- bugfix/tennhanh ( dung cho fix bug )

## DB Models

![DB Models](db.png?raw=true)