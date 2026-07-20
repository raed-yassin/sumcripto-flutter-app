// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(name)
final nameProvider = NameProvider._();

final class NameProvider extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  NameProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'nameProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$nameHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return name(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$nameHash() => r'cf5572f68b8d1405cedc9f2c8d4f4f578cf15d73';
