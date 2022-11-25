import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'test_state.dart';

class TestCubit extends Cubit<TestState> {
  TestCubit() : super(TestInitial());

  int count =0;

  void click(){
    emit(TestClick(count++));

    if (count==10)
    {
      emit(TestError('Счетчик равен 10.'));
    }
  }
}
