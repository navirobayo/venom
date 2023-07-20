import 'package:venom/src/features/home/data/data_sources/local/home_local_data_source.dart';
import 'package:venom/src/features/home/data/data_sources/remote/home_remote_data_source.dart';
import 'package:venom/src/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeRemoteDataSource _remoteDS;
  final HomeLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  HomeRepositoryImpl(this._remoteDS, this._localDS);

  // @override
  // Future<Either<HomeFailure, void>> cacheHomeData(
  //     {required ListOfHomeSurah surah}) {
  //   return _localDS
  //       .cacheData(fieldKey: 'surahs', value: jsonEncode(surah.toJson()))
  //       .then(
  //         (value) => value.fold(
  //           (l) => left<HomeFailure, void>(HomeFailure.database(l)),
  //           (r) => right<HomeFailure, void>(null),
  //         ),
  //       );
  // }

  // @override
  // Future<Either<HomeFailure, ListOfHomeSurah>> getCachedHomeData() {
  //   return _localDS.getCachedData(fieldKey: 'surahs').then(
  //         (value) => value.fold(
  //           (l) => left<HomeFailure, ListOfHomeSurah>(HomeFailure.database(l)),
  //           (r) {
  //             ListOfHomeSurah listOfSurahParameter =
  //                 ListOfHomeSurah.fromJson(jsonDecode(r ?? "{}"));
  //             if (listOfSurahParameter.listSurahs!.isEmpty) {
  //               left<HomeFailure, ListOfHomeSurah>(
  //                   const HomeFailure.nullParam());
  //             }
  //             return right<HomeFailure, ListOfHomeSurah>(listOfSurahParameter);
  //           },
  //         ),
  //       );
  // }

  // @override
  // Future<Either<HomeFailure, ListOfHomeSurah>> getHomeSurahFromServer() {
  //   return _remoteDS.getDataSurahsFromServer().then(
  //         (value) => value.fold(
  //           (l) => left<HomeFailure, ListOfHomeSurah>(HomeFailure.api(l)),
  //           (r) {
  //             final surahDataFromServer = ListOfHomeSurah.fromJson(
  //               {'listSurahs': BaseResponse.fromJson(r.data ?? {}).data},
  //             );
  //             return right<HomeFailure, ListOfHomeSurah>(surahDataFromServer);
  //           },
  //         ),
  //       );
  // }
}
