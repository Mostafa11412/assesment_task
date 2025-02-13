import 'package:assesment_task/Di/di.dart';
import 'package:assesment_task/core/utils/app_colors.dart';
import 'package:assesment_task/view/home/dashboard/cubit/dashboard_cubit.dart';
import 'package:assesment_task/view/home/dashboard/widgets/next_sessions/nex_sessions_card.dart';
import 'package:assesment_task/view/home/dashboard/widgets/skeleton_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:weekly_date_picker/weekly_date_picker.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime _selectedDate = DateTime(2024, 8, 19);
  DateTime today = DateTime(2024, 8, 19);

  // Arabic day names
  final Map<int, String> arabicDays = {
    1: "الاثنين",
    2: "الثلاثاء",
    3: "الأربعاء",
    4: "الخميس",
    5: "الجمعة",
    6: "السبت",
    7: "الأحد",
  };

  final Map<int, String> arabicMonths = {
    1: 'يناير',
    2: 'فبراير',
    3: 'مارس',
    4: 'أبريل',
    5: 'مايو',
    6: 'يونيو',
    7: 'يوليو',
    8: 'أغسطس',
    9: 'سبتمبر',
    10: 'أكتوبر',
    11: 'نوفمبر',
    12: 'ديسمبر',
  };

  @override
  Widget build(BuildContext context) {
    String englishDate = DateFormat('yyyy-MM-dd').format(today);
    int weekday = today.weekday;
    String arabicMonth = arabicMonths[today.month] ?? today.month.toString();
    String arabicDay = arabicDays[weekday] ?? "غير معروف";

    return BlocProvider(
      create: (context) =>
          getIt<DashboardCubit>()..getAppointmentsForDay(_selectedDate),
      child: Container(
        padding: REdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.r),
            topRight: Radius.circular(40.r),
          ),
        ),
        child: BlocBuilder<DashboardCubit, DashboardState>(
          builder: (context, state) {
            if (state is DashBoardErrorState) {
              return Center(child: Text(state.error));
            }
            if (state is DashBoardSuccessState) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "$englishDate  $arabicMonth",
                              style: TextStyle(
                                  fontFamily: 'Zain',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              arabicDay,
                              style: TextStyle(
                                  fontFamily: 'Zain',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(0.0),
                      decoration: BoxDecoration(
                          border:
                              Border.fromBorderSide(BorderSide(width: 0.3.w))),
                      child: WeeklyDatePicker(
                        selectedDay: _selectedDate,
                        changeDay: (date) {
                          setState(() {
                            _selectedDate = date;
                            today = date;
                          });
                          context
                              .read<DashboardCubit>()
                              .getAppointmentsForDay(date);
                        },
                        enableWeeknumberText: false,
                        backgroundColor: Colors.transparent,
                        selectedDigitBackgroundColor: AppColors.primaryColor,
                        digitsColor: Colors.black,
                        weekdays: [
                          "جمعة",
                          "خميس",
                          "أربعاء",
                          "ثلاثاء",
                          "اتنين",
                          "احد",
                          "سبت"
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: List.generate(12, (index) {
                            return Container(
                              height: 80,
                              padding: REdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                DateFormat.j()
                                    .format(DateTime(2024, 1, 1, index + 1)),
                                style: TextStyle(
                                    fontFamily: 'Zain',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            );
                          }),
                        ),
                        Flexible(
                          child: state.teacherDashBoardEntity.appointments !=
                                      null &&
                                  state.teacherDashBoardEntity.appointments!
                                      .isNotEmpty
                              ? ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: state.teacherDashBoardEntity
                                      .appointments!.length,
                                  itemBuilder: (context, index) {
                                    return SessionCard(
                                      entity: state.teacherDashBoardEntity
                                          .appointments![index],
                                    );
                                  },
                                )
                              : Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      "لا توجد جلسات لهذا اليوم",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
