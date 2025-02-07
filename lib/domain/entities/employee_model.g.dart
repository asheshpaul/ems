// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EmployeeModelImplAdapter extends TypeAdapter<_$EmployeeModelImpl> {
  @override
  final int typeId = 0;

  @override
  _$EmployeeModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$EmployeeModelImpl(
      id: fields[0] as String?,
      name: fields[1] as String?,
      role: fields[2] as String?,
      joiningDate: fields[3] as String?,
      leavingDate: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$EmployeeModelImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.role)
      ..writeByte(3)
      ..write(obj.joiningDate)
      ..writeByte(4)
      ..write(obj.leavingDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmployeeModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeModelImpl _$$EmployeeModelImplFromJson(Map json) =>
    _$EmployeeModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      role: json['role'] as String?,
      joiningDate: json['joiningDate'] as String?,
      leavingDate: json['leavingDate'] as String?,
    );

Map<String, dynamic> _$$EmployeeModelImplToJson(_$EmployeeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': instance.role,
      'joiningDate': instance.joiningDate,
      'leavingDate': instance.leavingDate,
    };
