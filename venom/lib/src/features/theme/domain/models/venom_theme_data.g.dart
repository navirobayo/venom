// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venom_theme_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VenomThemeDataAdapter extends TypeAdapter<VenomThemeData> {
  @override
  final int typeId = 7;

  @override
  VenomThemeData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VenomThemeData(
      themeMode: fields[0] == null ? 0 : fields[0] as int,
      colorTheme: fields[1] == null ? 4294967295 : fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, VenomThemeData obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.themeMode)
      ..writeByte(1)
      ..write(obj.colorTheme);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VenomThemeDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Venom_ThemeData _$$Venom_ThemeDataFromJson(Map<String, dynamic> json) =>
    _$Venom_ThemeData(
      themeMode: json['themeMode'] as int? ?? 0,
      colorTheme: json['colorTheme'] as int? ?? 0xffffffff,
    );

Map<String, dynamic> _$$Venom_ThemeDataToJson(_$Venom_ThemeData instance) =>
    <String, dynamic>{
      'themeMode': instance.themeMode,
      'colorTheme': instance.colorTheme,
    };
