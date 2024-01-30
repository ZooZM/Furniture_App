import 'package:furniture_app/features/welcome/data/path.dart';
import 'package:furniture_app/features/welcome/presentation/view/widget/w_view_model.dart';

final onboardingPagedList = [
  WViewModel(
      image: onBoardList[0].image,
      title: onBoardList[0].title,
      subtitle: onBoardList[0].subtitle),
  WViewModel(
    image: onBoardList[1].image,
    title: onBoardList[1].title,
    key: null,
    subtitle: onBoardList[1].subtitle,
  ),
  WViewModel(
    image: onBoardList[2].image,
    title: onBoardList[2].title,
    subtitle: onBoardList[2].subtitle,
  ),
];
