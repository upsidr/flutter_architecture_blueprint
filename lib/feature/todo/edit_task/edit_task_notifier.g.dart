// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_task_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$editTaskNotifierHash() => r'4a44e5fbc6366af3fe124ca94a9c317c00d0728d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$EditTaskNotifier
    extends BuildlessAutoDisposeNotifier<EditTaskUiState> {
  late final EditableUserTask task;

  EditTaskUiState build(
    EditableUserTask task,
  );
}

/// See also [EditTaskNotifier].
@ProviderFor(EditTaskNotifier)
const editTaskNotifierProvider = EditTaskNotifierFamily();

/// See also [EditTaskNotifier].
class EditTaskNotifierFamily extends Family<EditTaskUiState> {
  /// See also [EditTaskNotifier].
  const EditTaskNotifierFamily();

  /// See also [EditTaskNotifier].
  EditTaskNotifierProvider call(
    EditableUserTask task,
  ) {
    return EditTaskNotifierProvider(
      task,
    );
  }

  @override
  EditTaskNotifierProvider getProviderOverride(
    covariant EditTaskNotifierProvider provider,
  ) {
    return call(
      provider.task,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'editTaskNotifierProvider';
}

/// See also [EditTaskNotifier].
class EditTaskNotifierProvider
    extends AutoDisposeNotifierProviderImpl<EditTaskNotifier, EditTaskUiState> {
  /// See also [EditTaskNotifier].
  EditTaskNotifierProvider(
    EditableUserTask task,
  ) : this._internal(
          () => EditTaskNotifier()..task = task,
          from: editTaskNotifierProvider,
          name: r'editTaskNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$editTaskNotifierHash,
          dependencies: EditTaskNotifierFamily._dependencies,
          allTransitiveDependencies:
              EditTaskNotifierFamily._allTransitiveDependencies,
          task: task,
        );

  EditTaskNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.task,
  }) : super.internal();

  final EditableUserTask task;

  @override
  EditTaskUiState runNotifierBuild(
    covariant EditTaskNotifier notifier,
  ) {
    return notifier.build(
      task,
    );
  }

  @override
  Override overrideWith(EditTaskNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: EditTaskNotifierProvider._internal(
        () => create()..task = task,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        task: task,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<EditTaskNotifier, EditTaskUiState>
      createElement() {
    return _EditTaskNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EditTaskNotifierProvider && other.task == task;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, task.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin EditTaskNotifierRef on AutoDisposeNotifierProviderRef<EditTaskUiState> {
  /// The parameter `task` of this provider.
  EditableUserTask get task;
}

class _EditTaskNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<EditTaskNotifier,
        EditTaskUiState> with EditTaskNotifierRef {
  _EditTaskNotifierProviderElement(super.provider);

  @override
  EditableUserTask get task => (origin as EditTaskNotifierProvider).task;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
