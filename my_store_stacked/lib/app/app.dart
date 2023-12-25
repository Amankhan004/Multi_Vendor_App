import 'package:my_store_stacked/UI/buyers/main_view/main_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: MainView, initial:  true)
],
dependencies: [

  Singleton(classType: NavigationService)
])
class App{

}