import 'package:dartz/dartz.dart';
import 'package:venom/src/features/ride/data/data_sources/local/ride_local_data_source.dart';
import 'package:venom/src/features/ride/domain/failures/ride_failure.dart';
import 'package:venom/src/features/ride/domain/models/ride_list.dart';
import 'package:venom/src/features/ride/domain/models/ride_model.dart';
import 'package:venom/src/features/ride/domain/repositories/ride_repository.dart';

class RideRepositoryImpl extends RideRepository {

  RideRepositoryImpl(this._localDS);
  final RideLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  @override
  Future<Either<RideFailure, void>> cacheRidesData(
      {required List<Ride> rides,}) {
    final list = RideList(rides: rides);
    return _localDS.cacheData(fieldKey: 'rides', value: list).then(
          (value) => value.fold(
            (l) => left(RideFailure.database(l)),
            right,
          ),
        );
  }

  @override
  Future<Either<RideFailure, List<Ride>>> getCachedRidesData() {
    return _localDS
        .getCachedData(fieldKey: 'rides')
        .then((value) => value.fold((l) => left(RideFailure.database(l)), (r) {
              if (r == null || r.rides.isEmpty) {
                return left(const RideFailure.nullParam());
              }
              return right(r.rides);
            }),);
  }
}
