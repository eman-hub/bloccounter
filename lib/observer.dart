import 'package:flutter_bloc/flutter_bloc.dart';
class MyblocObserver extends BlocObserver{

  @override
  onCreate(BlocBase bloc){
    print("========== bloc");
    print(bloc);
    super.onCreate(bloc);
  }
void onChange(BlocBase bloc, Change change){
    super.onChange(bloc, change);
    print("Bloc");
    print("$bloc");
    print("Change ===================");
    print("$change");
    print("Change ===================");
}
 void onEvent(Bloc bloc, Object? event){
    super.onEvent(bloc, event);
    print(bloc);
    print("==============");
    print(event);

 }
  void onTransition(Bloc bloc, Transition transition){
    super.onTransition(bloc, transition);
    print(bloc);
    print("============== transition");
    print(transition);
    print("============== transition");


  }
  void onError(BlocBase bloc ,Object error , StackTrace stackTrace){
    print(bloc);
    print(error);
    super.onError(bloc, error, stackTrace);


  }

}