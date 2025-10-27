// import 'dart:convert';
// import 'models/student.dart';

// void main(){
//   print("=============================================\n");
//   demoAutoSerialize();
// }

// void demoAutoSerialize(){
//   String jsonData = '''
//   [
//     {
//       "id": "dut101",
//       "name": "Nguyễn Văn An", 
//       "age": 20,
//       "major": "Công nghệ thông tin",
//       "gpa": 3.2,
//       "address": {
//         "street": "Nguyễn Tất Thành",
//         "city": "Đà Nẵng"
//       }
//     },
//     {
//       "id": "dut102",
//       "name": "Trần Thị Bình",
//       "age": 21, 
//       "major": "Điện tử - Viễn Thông",
//       "gpa": 3.8,
//       "address": {
//         "street": "Lê Duẩn",
//         "city": "Hà Nội"
//       }
//     },
//     {
//       "id": "dut103",
//       "name": "Lê Văn Cường",
//       "age": 22,
//       "major": "Kỹ thuật máy tính", 
//       "gpa": 3.1,
//       "address": {
//         "street": "Cách mạng tháng 8",
//         "city": "Hồ Chí Minh"
//       }
//     }
//   ]
//   ''';

//   //Deserialize
//   print("Deserialize");
//   List<dynamic> jsonArray = jsonDecode(jsonData);
  
//   //generated code
//   List<Student> students = jsonArray.map((item) => Student.fromJson(item)).toList();
  
//   print("xử lý nested objects với cách tự động\n");
  
//   print("DANH SÁCH SINH VIÊN:");
//   print("─────────────────────────────────────");

//   for (var student in students) {
//     print(" ${student.name}");
//     print(" ${student.age} tuổi | MSSV: ${student.id}");
//     print(" Ngành học: ${student.major}");
//     print(" GPA: ${student.gpa}");
//     print(" Địa chỉ: ${student.address.street}, ${student.address.city}");
//     print("─────────────────────────────────────\n");
//   }

//   // serialize
//   print("Serialize");
//   List<Map<String, dynamic>> updatedJsonArray = 
//       students.map((student) => student.toJson()).toList();
  
//   String updatedJsonString = JsonEncoder.withIndent('    ').convert(updatedJsonArray);
//   print("JSON sau khi serialize:");
//   print(updatedJsonString);

 
// }


























// import 'dart:convert';
// import 'models/book.dart'; // Import class Book

// void main() {
//   // JSON data từ API
//   String jsonData = '''
//   {
//     "id": "B001",
//     "title": "Flutter Cho Người Mới Bắt Đầu",
//     "author": "Nguyễn Văn A",
//     "publish_year": 2023,
//     "rating": 4.5,
//     "categories": ["Lập trình", "Mobile"],
//     "isAvailable": true
//   }
//   ''';
  
//   print("📚 DEMO AUTOMATED SERIALIZATION");
  
//   // DESERIALIZE - JSON → Object
//   Map<String, dynamic> jsonMap = jsonDecode(jsonData);
//   Book book = Book.fromJson(jsonMap); // Dùng generated code
  
//   print("\n📖 Thông tin sách:");
//   print("- Tiêu đề: ${book.title}");
//   print("- Tác giả: ${book.author}");
//   print("- Năm XB: ${book.publishYear}");
//   print("- Đánh giá: ${book.rating}");
//   print("- Thể loại: ${book.categories.join(', ')}");
//   print("- Có sẵn: ${book.isAvailable ? 'Có' : 'Không'}");
  
//   // SERIALIZE - Object → JSON
//   print("\n🔄 Chuyển ngược thành JSON:");
//   Map<String, dynamic> bookJson = book.toJson(); // Dùng generated code
//   String updatedJson = JsonEncoder.withIndent('  ').convert(bookJson);
//   print(updatedJson);
// }














// import 'dart:convert';

// class Address{
//   String street;
//   String city;

//   Address({required this.street, required this.city});

//   Map<String, dynamic> toJson(){
//     return{'street': street, 'city': city};
//   }
//   factory Address.fromJson(Map<String, dynamic> json){
//     return Address(
//       street: json['street'],
//       city: json['city'], 
//     );
//   }
// }

// class Student{
//   final String id;
//   final String name;
//   int age;
//   String major;  
//   double gpa;
//   Address address;

//   Student({
//     required this.id, required this.name,
//     required this.age, required this.major,
//     required this.gpa, required this.address,
//   });

//   Map<String, dynamic> toJson(){
//     return{
//       'id': id, 'name': name,'age': age,
//       'major': major,'gpa': gpa,'address': address.toJson(),
//     };
//   }

//   factory Student.fromJson(Map<String, dynamic> json){
//     return Student(
//       id: json['id'], name: json['name'],age: json['age'],
//       major: json['major'], gpa: json['gpa'],
//       address: Address.fromJson(json['address']),
//     );
//   }
// }

// void main(){
  
//   String jsonData = '''
//   {
//     "dut101":{
//       "id": "dut101",
//       "name": "Nguyễn Văn An", 
//       "age": 20,
//       "major": "Công nghệ thông tin",
//       "gpa": 3.2,
//       "address": {
//         "street": "Nguyễn Tất Thành",
//         "city": "Đà Nẵng"
//       }
//     },
//     "dut102":{
//       "id": "dut102",
//       "name": "Trần Thị Bình",
//       "age": 21, 
//       "major": "Điện tử - Viễn Thông",
//       "gpa": 3.8,
//       "address": {
//         "street": "Lê Duẩn",
//         "city": "Hà Nội"
//       }
//     },
//     "dut103":{
//       "id": "dut103",
//       "name": "Lê Văn Cường",
//       "age": 22,
//       "major": "Kỹ thuật máy tính", 
//       "gpa": 3.1,
//       "address": {
//         "street": "Cách mạng tháng 8",
//         "city": "Hồ Chí Minh"
//       }
//     }
//   }
//   ''';
  
//   print("JSON đã nhận:");
//   print(JsonEncoder.withIndent('  ').convert(jsonDecode(jsonData)));
  
//   //Deserialize
//   Map<String, dynamic> jsonObject = jsonDecode(jsonData);
//   List<Student> students = [];
  
//   jsonObject.forEach((key, value){
//     students.add(Student.fromJson(value));
//   });
  
//   print("\n Danh sách sinh viên:");
//   for (var student in students){
//     print("- ${student.name} (${student.age} tuổi)");
//     print("  Ngành: ${student.major}");
//     print("  GPA: ${student.gpa}");
//     print("  Địa chỉ: ${student.address.street}, ${student.address.city}");
//   }
  
//   // chỉnh sửa 
//   print("\nThực hiện chỉnh sửa thông tin");
//   students[0].address.street = "Ngô Sĩ Liên";
//   print("-> ${students[0].name} đã chuyển địa chỉ");

//   print("\nDanh sách sau khi chỉnh sửa:");
//   for (var student in students){
//     print("- ${student.name} (${student.age} tuổi)");
//     print("  Ngành: ${student.major}");
//     print("  GPA: ${student.gpa}");
//     print("  Địa chỉ: ${student.address.street}, ${student.address.city}");
//   }
  
//   // SERIALIZE
//   print("\nDữ liệu đã được cập nhật");
//   Map<String, dynamic> updatedJsonObject = {};
//   for (var student in students){
//     updatedJsonObject[student.id] = student.toJson();
//   }
//   String updatedJsonString = JsonEncoder.withIndent('  ').convert(updatedJsonObject);
//   print("JSON sau khi cập nhật:");
//   print(updatedJsonString);
// }



















import 'dart:convert';
import 'models/product_model.dart';
import 'data/product_data.dart';
void main(){

  String jsonData = ProductData.productsJsonString;
  
  // Deserialize
  List<dynamic> jsonArray = jsonDecode(jsonData);
  List<Product> products = [];
  
  for (var item in jsonArray){
    products.add(Product.fromJson(item));
  }
  
  print("Danh sách sản phẩm:");
  for (var product in products){
    print("- ${product.name}: ${product.price}đ- ${product.inStock ? 'Còn hàng' : 'Hết hàng'}");
  }

  // Cập nhật data
  products[0].price = 18650000.0; // Giảm giá iPhone
  products[2].inStock = true;   // AirPods có hàng

  // Serialize
  List<Map<String, dynamic>> updatedJsonArray = [];
  for (var product in products) 
 {
    updatedJsonArray.add(product.toJson());
  }
  
  String updatedJsonString = JsonEncoder.withIndent('  ').convert(updatedJsonArray);
  print("JSON sau khi cập nhật:");
  print(updatedJsonString);
}











//{
//   "title": "Harry Potter and the Half-Blood Prince",
//   "author": "J.K. Rowling",
//   "publishYear": 2005,
//   "rating": 4.9
// }

// class Book
//{
//   final String title;
//   final String author;
//   final int publishYear;
//   double rating;

//   Book({required this.title, required this.author,
//         required this.publishYear, required this.rating});
  
//   //Dart Obj -> JSON 
//   Map<String, dynamic> toJson() 
//  {
//     return 
//    {
//       'title': title,
//       'author': author,
//       'publishYear': publishYear,
//       'rating': rating,
//     };
//   }
//   //JSON -> Dart Obj
//   factory Book.fromJson(Map<String, dynamic> json) 
//  {
//     return Book(
//       title: json['title'],
//       author: json['author'],
//       publishYear: json['publishYear'],
//       rating: json['rating'],
//     );
//   }
// }

// void main() 
//{
//   Map<String, dynamic> jsonData = 
//  {
//     "title": "Harry Potter and the Half-Blood Prince",
//     "author": "J.K. Rowling",
//     "publishYear": 2005,
//     "rating": 4.9 
//   };
//   // Deserialize
//   Book myBook = Book.fromJson(jsonData);
//   myBook.rating = 4.95;
//   print("Sách: ${myBook.title} - Xuất bản: ${myBook.publishYear}");
//   // Serialize
//   Map<String, dynamic> bookMap = myBook.toJson();
//   print(bookMap);
// }















// import 'dart:convert';
// void main() 
// {
//   String jsonString = '{"name": "Tom", "age": 21, "gender": "male"}';

//   // Decoding json sang 1 Map
//   Map<String, dynamic> userMap = jsonDecode(jsonString);
//   print("Name: ${userMap['name']}, Age: ${userMap['age']}, Gender: ${userMap['gender']}");

//   // Cập nhật thông tin và encoding trở lại JSON
//   userMap['age'] = 23; 
//   //userMap['agr'] = 23; //=> Không báo lỗi khi code
//   String updatedJsonString = jsonEncode(userMap);

//   print(updatedJsonString); 
// }



























































