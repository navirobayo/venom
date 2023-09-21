import 'package:dartz/dartz.dart';
import 'package:venom/src/features/theme/domain/failures/theme_failure.dart';
import 'package:venom/src/features/theme/domain/models/venom_theme_data.dart';

// ignore: one_member_abstracts
abstract class ThemeRepository {
  //
  Future<Either<ThemeFailure, void>> changeTheme(VenomThemeData theme);
  //
  Future<Either<ThemeFailure, VenomThemeData>> getTheme();
}
