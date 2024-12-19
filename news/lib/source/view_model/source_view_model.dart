import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/shared/Services_locator.dart';
import 'package:news/source/repostory/source_repostory.dart';
import 'package:news/source/view_model/source_stat.dart';

class SourceViewModel extends Cubit<SourceStat> {
  late final SourceRepository reposit;
  SourceViewModel() : super(sourceIntial()) {
    reposit = SourceRepository(ServicesLocator.dataSources);
  }

  Future<void> getSources(String categoryId) async {
    emit(sourceLoading());
    try {
      final sources = await reposit.getSource(categoryId);
      emit(sourceSuccess(sources));
    } catch (e) {
      emit(sourceError(e.toString()));
    }
  }
}
