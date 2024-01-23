import 'package:furniture_app/features/Home/presentation/view%20Model/category_model.dart';

const String chair1 = 'assets/images/chair.png';
const String chair2 = 'assets/images/chair2.png';
const String armchair1 = 'assets/images/armchair.png';
const String armchair2 = 'assets/images/armchair2.png';
const String bed1 = 'assets/images/bed.pnf';
const String bed2 = 'assets/images/bed2.png';
const String table1 = 'assets/images/table.png';
const String table2 = 'assets/images/table2.png';
const String p1 = 'assets/images/1.png';
const String p2 = 'assets/images/2.png';
const String p3 = 'assets/images/3.png';
const String p4 = 'assets/images/4.png';
const String p5 = 'assets/images/5.png';
const String p6 = 'assets/images/6.png';

List<CategoryModel> categoryBlack = const [
  CategoryModel(name: 'chair', path: chair2),
  CategoryModel(name: 'armchair', path: armchair2),
  CategoryModel(name: 'bed', path: bed2),
  CategoryModel(name: 'table', path: table2)
];
List<CategoryModel> categoryWhite = const [
  CategoryModel(name: 'chair', path: chair1),
  CategoryModel(name: 'armchair', path: armchair1),
  CategoryModel(name: 'bed', path: bed1),
  CategoryModel(name: 'table', path: table1)
];
List<String> onBoardList = const [
  p3,
  p4,
  p5,
];
List<String> poplist = const [
  p1,
  p2,
  p6,
];
