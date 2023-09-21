import 'package:dartz/dartz.dart';
import 'package:venom/src/features/ride/domain/failures/ride_failure.dart';
import 'package:venom/src/features/ride/domain/models/ride_model.dart';

abstract class RideRepository {
  //
  Future<Either<RideFailure, List<Ride>>> getCachedRidesData();
  //
  Future<Either<RideFailure, void>> cacheRidesData({required List<Ride> rides});
}
