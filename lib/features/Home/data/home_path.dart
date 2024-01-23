import 'package:furniture_app/features/Home/presentation/view%20Model/category_model.dart';
import 'package:furniture_app/features/Home/presentation/view%20Model/item_Model.dart';

const String chair1 = 'assets/images/chair.png';
const String chair2 = 'assets/images/chair2.png';
const String armchair1 = 'assets/images/armchair.png';
const String armchair2 = 'assets/images/armchair2.png';
const String bed1 = 'assets/images/bed.png';
const String bed2 = 'assets/images/bed2.png';
const String table1 = 'assets/images/table.png';
const String table2 = 'assets/images/table2.png';
const String p1 = 'assets/images/1.png';
const String p2 = 'assets/images/2.png';
const String p6 = 'assets/images/6.png';

List<CategoryModel> categoryList = const [
  CategoryModel(
    name: 'chair',
    imageBlack: chair2,
    imageWhite: chair1,
  ),
  CategoryModel(
    name: 'armchair',
    imageBlack: armchair2,
    imageWhite: armchair1,
  ),
  CategoryModel(
    name: 'bed',
    imageBlack: bed2,
    imageWhite: bed1,
  ),
  CategoryModel(
    name: 'table',
    imageBlack: table2,
    imageWhite: table1,
  )
];
List<ItemModel> poplist = [
  ItemModel(
    name: 'Boogly Vhair',
    rate: 4.0,
    price: 199,
    image: p1,
  ),
  ItemModel(
    name: 'Bromely Chair',
    rate: 4.1,
    price: 201,
    image: p6,
  ),
  ItemModel(
    name: 'Modern Chair',
    rate: 5.0,
    price: 299,
    image: p2,
  )
];
