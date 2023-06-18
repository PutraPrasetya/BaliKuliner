import 'package:get/get.dart';

import '../modules/home/bindings/case_list_binding.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/case_list_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/recomendation/bindings/recomendation_binding.dart';
import '../modules/recomendation/views/recomendation_view.dart';
import '../modules/revise/bindings/input_data_binding.dart';
import '../modules/revise/bindings/revise_binding.dart';
import '../modules/revise/views/input_data_view.dart';
import '../modules/revise/views/revise_view.dart';
import '../modules/search/bindings/search_binding.dart';
import '../modules/search/views/search_view.dart';
import '../modules/solution/bindings/solution_binding.dart';
import '../modules/solution/views/solution_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CASE_LIST,
      page: () => const CaseListView(),
      binding: CaseListBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => const SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.RECOMENDATION,
      page: () => const RecomendationView(),
      binding: RecomendationBinding(),
    ),
    GetPage(
      name: _Paths.REVISE,
      page: () => const ReviseView(),
      binding: ReviseBinding(),
    ),
    GetPage(
        name: _Paths.INPUT_DATA,
        page: () => const InputDataView(),
        binding: InputDataBinding()),
    GetPage(
      name: _Paths.SOLUTION,
      page: () => const SolutionView(),
      binding: SolutionBinding(),
    ),
  ];
}
