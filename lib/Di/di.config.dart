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
import '../data/dataSource/dao_contract/auth_dao_contract/auth_dao_contract.dart' as _i960;
import '../data/dataSource/dao_contract/teacher_dao_contract/teacher_dao_contract.dart'
    as _i892;
import '../data/dataSource/dao_impl/auth_impl/auth_impl.dart' as _i349;
import '../data/dataSource/dao_impl/teacher_dao_impl/teacher_dao_impl.dart'
    as _i836;
import '../data/repo_impl/auth_repo_impl/auth_repo_impl.dart' as _i582;
import '../data/repo_impl/teacher_dashboard_repo_impl/teacher_dashboard_repo_impl.dart'
    as _i1048;
import '../domain/repo_contract/auth_repo/auth_repo.dart' as _i685;
import '../domain/repo_contract/teacher_dashboard_repo/teacher_dashboard_repo.dart'
    as _i609;
import '../view/home/dashboard/cubit/dashboard_cubit.dart' as _i963;
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
    gh.factory<_i892.TeacherDataSource>(
        () => _i836.TeacherDaoImpl(gh<_i108.ApiManager>()));
    gh.factory<_i609.TeacherDashboardRepo>(
        () => _i1048.TeacherDashboardRepoImpl(gh<_i892.TeacherDataSource>()));
    gh.factory<_i960.AuthDataSource>(
        () => _i349.AuthDataSourceImpl(gh<_i108.ApiManager>()));
    gh.factory<_i685.AuthRepo>(
        () => _i582.AuthRepoImpl(gh<_i960.AuthDataSource>()));
    gh.factory<_i611.LoginCubit>(() => _i611.LoginCubit(gh<_i685.AuthRepo>()));
    gh.factory<_i963.DashboardCubit>(
        () => _i963.DashboardCubit(gh<_i609.TeacherDashboardRepo>()));
    return this;
  }
}
