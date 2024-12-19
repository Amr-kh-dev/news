import 'package:news/shared/widegt/erro_indecator.dart';
import 'package:news/shared/widegt/lodeing_indecator.dart';
import 'package:news/source/data/model/source.dart';

abstract class SourceStat {}

class sourceIntial extends SourceStat {}

class sourceLoading extends SourceStat {}

class sourceSuccess extends SourceStat {
  sourceSuccess(this.sources);

  final List<Source> sources;
}

class sourceError extends SourceStat {
  String error;
  sourceError(this.error);
}
