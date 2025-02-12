// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../core/api/api_manager.dart' as _i108;
import '../data/dataSource/dao_contract/auth_contract/auth_dao.dart' as _i960;
import '../data/dataSource/dao_impl/auth_impl/auth_impl.dart' as _i349;
import '../data/repo_impl/auth_repo_impl/auth_repo_impl.dart' as _i582;
import '../domain/repo_contract/auth_repo/auth_repo.dart' as _i685;
import '../view/login/Cubit/login_cubit.dart' as _i611;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i108.ApiManager>(() => _i108.ApiManager());
    gh.factory<_i960.AuthDataSource>(
        () => _i349.AuthDataSourceImpl(gh<_i108.ApiManager>()));
    gh.factory<_i685.AuthRepo>(
        () => _i582.AuthRepoImpl(gh<_i960.AuthDataSource>()));
    gh.factory<_i611.LoginCubit>(() => _i611.LoginCubit(gh<_i685.AuthRepo>()));
    return this;
  }
}
