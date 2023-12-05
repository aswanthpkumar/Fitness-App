// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_modal.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoginModalAdapter extends TypeAdapter<LoginModal> {
  @override
  final int typeId = 1;

  @override
  LoginModal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LoginModal(
      name: fields[0] as String,
      password: fields[2] as String,
      email: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, LoginModal obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.password);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginModalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DataModelAdapter extends TypeAdapter<DataModel> {
  @override
  final int typeId = 2;

  @override
  DataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DataModel(
      age: fields[0] as String,
      height: fields[1] as String,
      weight: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DataModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.age)
      ..writeByte(1)
      ..write(obj.height)
      ..writeByte(2)
      ..write(obj.weight);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NameModelAdapter extends TypeAdapter<NameModel> {
  @override
  final int typeId = 3;

  @override
  NameModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NameModel(
      username: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, NameModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.username);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NameModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
