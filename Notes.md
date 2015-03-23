Belajar Rails Sesi 1

Sesi 1 
Introduction
Scaffolding

Sesi 2 
Static pages
Routing
Controller
Views
Model

Sesi 3
Active Record
Rails Console

Asset Pipeline
Bootstraping	

Relation
Validation

Sign in
Sign Out
Session


Sesi 2
*Controller
Mengenerate sebuah controller diikuti dengan nama controllernya, dan bisa ditambahkan dengan satu buah method
$rails generate controller users index

*View
ketika rails mengenerate sebuah kontroller diikuti dengan sebuah method, maka rails akan membuat sebuah template di dalam folder app/views/ diikuti dengan nama controllernya dan nama methodnya

* Model
Mengenerate sebuah model diikuti dengan nama column dan tipe datanya
$rails generate model user name:string no:integer
yang terjadi adalah rails akan membuat sebuah model dengan nama user(singular) dan sebuah file migrasi dimana didalamnya terdapat perintah untuk membuat table dengan nama users (plural)

jangan lupa 
<!-- untuk menjalankan migrasi database -->
$rake db:migrate
<!-- Menghapus database -->
$rake db:drop
<!-- membatalkan migrasi -->
$rale db:rollback

Active record
Untuk masuk ke dalam mode console
$rails console
didirect ke console ruby untuk project tersebut

Memanggil User
$User
rails akan mengembalikan struktur daru user, atau menampilkan nama column di dalam table users

Menampilkan semua user dalam table users
$User.all
rails akan menjalankan query select * from users pada databse. contoh query dalam sql


