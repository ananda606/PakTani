import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/domain/entities/tvseries_detail.dart';
import 'package:ditonton/domain/repositories/tvseries_repository.dart';

class RemoveWatchlistTVSeries {
  final TVSeriesRepository repository;
  RemoveWatchlistTVSeries(this.repository);
  Future<Either<Failure, String>> execute(TVSeriesDetail id) {
    return repository.removeWatchlist(id);
  }
}
