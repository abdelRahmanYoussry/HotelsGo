import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_go_task/core/api/static_models.dart';
import 'package:hotel_go_task/core/shared_widget/custom_app_bar.dart';
import 'package:hotel_go_task/core/shared_widget/elevatedButton.dart';
import 'package:hotel_go_task/core/shared_widget/myDivider.dart';
import 'package:hotel_go_task/core/shared_widget/vertical_product_widget_one.dart';
import 'package:hotel_go_task/core/ui_resourses/color_manager.dart';
import 'package:hotel_go_task/core/ui_resourses/font_manager.dart';
import 'package:hotel_go_task/core/ui_resourses/values_manager.dart';
import 'package:hotel_go_task/features/home/presentaion/manger/home_cubit.dart';
import 'package:ionicons/ionicons.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  double _rangeValue = 20.0;
  List<SortModel> sortList = [
    SortModel(title: 'Our recommendation', isClicked: false),
    SortModel(title: 'Rating & recommended', isClicked: false),
    SortModel(title: 'Price & recommended', isClicked: false),
    SortModel(title: 'Distance & recommended', isClicked: false),
    SortModel(title: 'Rating Only', isClicked: false),
    SortModel(title: 'Price Only', isClicked: false),
    SortModel(title: 'Distance Only', isClicked: false),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = HomeCubit.get(context);
        // HomeCubit.get(context).getHomeModel();
        return Scaffold(
            appBar: CustomAppBar(
              backGroundColor: ColorManager.primary,
              title: Text(
                'HotelsGo',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              toolBarHeight: AppSize.s100.h,
              isLeading: false,
              statusBarIconBrightness: Brightness.light,
              statusBarColor: ColorManager.primary,
              bottomWidget: PreferredSize(
                  preferredSize: Size.zero,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p10, vertical: AppPadding.p5),
                    child: Row(
                      children: [
                        Expanded(
                            child: MyElevatedButton(
                          onTap: () {
                            // showModalBottomSheet(
                            //     backgroundColor: ColorManager.white,
                            //     isScrollControlled: true,
                            //     shape: const RoundedRectangleBorder(
                            //         borderRadius: BorderRadius.horizontal(
                            //       left: Radius.circular(AppRadius.r20),
                            //       right: Radius.circular(AppRadius.r20),
                            //     )),
                            //     context: context,
                            //     builder: (context) => StatefulBuilder(
                            //           builder: (context, setState) => Padding(
                            //             padding: const EdgeInsets.symmetric(
                            //                 horizontal: AppPadding.p10,
                            //                 vertical: AppPadding.p10),
                            //             child: Container(
                            //               height: MediaQuery.of(context)
                            //                       .size
                            //                       .height /
                            //                   1.5,
                            //               child: Column(
                            //                 children: [
                            //                   Row(
                            //                     mainAxisAlignment:
                            //                         MainAxisAlignment
                            //                             .spaceBetween,
                            //                     children: [
                            //                       Text(
                            //                         'Reset',
                            //                         style: Theme.of(context)
                            //                             .textTheme
                            //                             .bodyMedium!
                            //                             .copyWith(
                            //                                 fontSize:
                            //                                     FontSize.s18.sp,
                            //                                 decoration:
                            //                                     TextDecoration
                            //                                         .underline,
                            //                                 decorationStyle:
                            //                                     TextDecorationStyle
                            //                                         .solid,
                            //                                 decorationColor:
                            //                                     ColorManager
                            //                                         .grey),
                            //                       ),
                            //                       Text(
                            //                         'Filter',
                            //                         style: Theme.of(context)
                            //                             .textTheme
                            //                             .headlineLarge!,
                            //                       ),
                            //                       IconButton(
                            //                           onPressed: () {
                            //                             Navigator.pop(context);
                            //                           },
                            //                           icon: Icon(Icons.close))
                            //                     ],
                            //                   ),
                            //                   Container(
                            //                     // height: AppSize.s450.h,
                            //                     decoration: BoxDecoration(
                            //                         color: Colors.grey
                            //                             .withOpacity(0.2)),
                            //                     padding:
                            //                         const EdgeInsets.symmetric(
                            //                             horizontal:
                            //                                 AppPadding.p5,
                            //                             vertical:
                            //                                 AppPadding.p10),
                            //                     child: Column(
                            //                       children: [
                            //                         Row(
                            //                           mainAxisAlignment:
                            //                               MainAxisAlignment
                            //                                   .spaceBetween,
                            //                           children: [
                            //                             Text(
                            //                               'Price Per Night',
                            //                               style: Theme.of(
                            //                                       context)
                            //                                   .textTheme
                            //                                   .headlineLarge!,
                            //                             ),
                            //                             Container(
                            //                               padding:
                            //                                   const EdgeInsets
                            //                                       .symmetric(
                            //                                       vertical:
                            //                                           AppPadding
                            //                                               .p5,
                            //                                       horizontal:
                            //                                           AppPadding
                            //                                               .p5),
                            //                               decoration: BoxDecoration(
                            //                                   border: Border.all(
                            //                                       color:
                            //                                           ColorManager
                            //                                               .grey,
                            //                                       width: 1)),
                            //                               child: Text(
                            //                                 '${_rangeValue.round().toString()}+\$',
                            //                                 style: Theme.of(
                            //                                         context)
                            //                                     .textTheme
                            //                                     .headlineMedium,
                            //                               ),
                            //                             )
                            //                           ],
                            //                         ),
                            //                         Slider(
                            //                             value: _rangeValue,
                            //                             activeColor:
                            //                                 ColorManager
                            //                                     .primary,
                            //                             min: 20,
                            //                             max: 540,
                            //                             inactiveColor:
                            //                                 ColorManager.primary
                            //                                     .withOpacity(
                            //                                         0.1),
                            //                             onChanged: (value) {
                            //                               setState(() {
                            //                                 _rangeValue = value;
                            //                               });
                            //                             }),
                            //                         Row(
                            //                           mainAxisAlignment:
                            //                               MainAxisAlignment
                            //                                   .spaceBetween,
                            //                           children: [
                            //                             Text(
                            //                               '\$20',
                            //                               style: Theme.of(
                            //                                       context)
                            //                                   .textTheme
                            //                                   .headlineSmall!
                            //                                   .copyWith(
                            //                                       fontSize:
                            //                                           FontSize
                            //                                               .s16),
                            //                             ),
                            //                             Text(
                            //                               '\$540',
                            //                               style: Theme.of(
                            //                                       context)
                            //                                   .textTheme
                            //                                   .headlineSmall!
                            //                                   .copyWith(
                            //                                       fontSize:
                            //                                           FontSize
                            //                                               .s16),
                            //                             ),
                            //                           ],
                            //                         ),
                            //                         const MyDivider10(),
                            //                         Row(
                            //                           mainAxisAlignment:
                            //                               MainAxisAlignment
                            //                                   .start,
                            //                           children: [
                            //                             Text(
                            //                               'RATING',
                            //                               style: Theme.of(
                            //                                       context)
                            //                                   .textTheme
                            //                                   .headlineMedium,
                            //                             ),
                            //                           ],
                            //                         ),
                            //                         const MyDivider5(),
                            //                         Row(
                            //                           mainAxisAlignment:
                            //                               MainAxisAlignment
                            //                                   .spaceBetween,
                            //                           children: [
                            //                             ratingContainer(
                            //                                 context: context,
                            //                                 text: '0',
                            //                                 backgroundColor:
                            //                                     Colors.orange),
                            //                             ratingContainer(
                            //                                 context: context,
                            //                                 text: '7',
                            //                                 backgroundColor:
                            //                                     ColorManager
                            //                                         .error),
                            //                             ratingContainer(
                            //                                 context: context,
                            //                                 text: '7.5',
                            //                                 backgroundColor: Colors
                            //                                     .lightGreenAccent),
                            //                             ratingContainer(
                            //                                 context: context,
                            //                                 text: '8',
                            //                                 backgroundColor:
                            //                                     Colors
                            //                                         .lightGreen),
                            //                             ratingContainer(
                            //                                 context: context,
                            //                                 text: '8.5',
                            //                                 backgroundColor:
                            //                                     Colors.green),
                            //                           ],
                            //                         ),
                            //                         const MyDivider10(),
                            //                         Row(
                            //                           mainAxisAlignment:
                            //                               MainAxisAlignment
                            //                                   .start,
                            //                           children: [
                            //                             Text(
                            //                               'HOTEL CLASS',
                            //                               style: Theme.of(
                            //                                       context)
                            //                                   .textTheme
                            //                                   .headlineMedium,
                            //                             ),
                            //                           ],
                            //                         ),
                            //                         const MyDivider5(),
                            //                         Row(
                            //                           mainAxisAlignment:
                            //                               MainAxisAlignment
                            //                                   .spaceBetween,
                            //                           children: [
                            //                             hotelClassContainer(
                            //                                 context: context,
                            //                                 child: const Row(
                            //                                   children: [
                            //                                     Icon(
                            //                                       Icons
                            //                                           .star_half,
                            //                                       color: Colors
                            //                                           .amber,
                            //                                     ),
                            //                                     Icon(
                            //                                       Icons.star,
                            //                                       color: Colors
                            //                                           .amber,
                            //                                     ),
                            //                                   ],
                            //                                 )),
                            //                             hotelClassContainer(
                            //                                 context: context,
                            //                                 child: const Row(
                            //                                   children: [
                            //                                     Icon(
                            //                                       Icons.star,
                            //                                       color: Colors
                            //                                           .amber,
                            //                                     ),
                            //                                     Icon(
                            //                                       Icons.star,
                            //                                       color: Colors
                            //                                           .amber,
                            //                                     ),
                            //                                   ],
                            //                                 )),
                            //                             hotelClassContainer(
                            //                                 context: context,
                            //                                 child: const Column(
                            //                                   children: [
                            //                                     Icon(
                            //                                       Icons.star,
                            //                                       color: Colors
                            //                                           .amber,
                            //                                     ),
                            //                                     Row(
                            //                                       children: [
                            //                                         Icon(
                            //                                           Icons
                            //                                               .star,
                            //                                           color: Colors
                            //                                               .amber,
                            //                                         ),
                            //                                         Icon(
                            //                                           Icons
                            //                                               .star,
                            //                                           color: Colors
                            //                                               .amber,
                            //                                         ),
                            //                                       ],
                            //                                     ),
                            //                                   ],
                            //                                 )),
                            //                             hotelClassContainer(
                            //                                 context: context,
                            //                                 child: const Column(
                            //                                   children: [
                            //                                     Row(
                            //                                       children: [
                            //                                         Icon(
                            //                                           Icons
                            //                                               .star,
                            //                                           color: Colors
                            //                                               .amber,
                            //                                         ),
                            //                                         Icon(
                            //                                           Icons
                            //                                               .star,
                            //                                           color: Colors
                            //                                               .amber,
                            //                                         ),
                            //                                       ],
                            //                                     ),
                            //                                     Row(
                            //                                       children: [
                            //                                         Icon(
                            //                                           Icons
                            //                                               .star,
                            //                                           color: Colors
                            //                                               .amber,
                            //                                         ),
                            //                                         Icon(
                            //                                           Icons
                            //                                               .star,
                            //                                           color: Colors
                            //                                               .amber,
                            //                                         ),
                            //                                       ],
                            //                                     ),
                            //                                   ],
                            //                                 )),
                            //                             hotelClassContainer(
                            //                                 context: context,
                            //                                 // height: AppSize.s60.h,
                            //                                 child: const Column(
                            //                                   crossAxisAlignment:
                            //                                       CrossAxisAlignment
                            //                                           .center,
                            //                                   children: [
                            //                                     Row(
                            //                                       children: [
                            //                                         Flexible(
                            //                                           child:
                            //                                               Icon(
                            //                                             Icons
                            //                                                 .star,
                            //                                             color: Colors
                            //                                                 .amber,
                            //                                           ),
                            //                                           fit: FlexFit
                            //                                               .tight,
                            //                                         ),
                            //                                         Flexible(
                            //                                           fit: FlexFit
                            //                                               .loose,
                            //                                           child:
                            //                                               Icon(
                            //                                             Icons
                            //                                                 .star,
                            //                                             color: Colors
                            //                                                 .amber,
                            //                                           ),
                            //                                         ),
                            //                                       ],
                            //                                     ),
                            //                                     Expanded(
                            //                                       child: Icon(
                            //                                         Icons.star,
                            //                                         color: Colors
                            //                                             .amber,
                            //                                       ),
                            //                                     ),
                            //                                     Row(
                            //                                       children: [
                            //                                         Icon(
                            //                                           Icons
                            //                                               .star,
                            //                                           color: Colors
                            //                                               .amber,
                            //                                         ),
                            //                                         Icon(
                            //                                           Icons
                            //                                               .star,
                            //                                           color: Colors
                            //                                               .amber,
                            //                                         ),
                            //                                       ],
                            //                                     ),
                            //                                   ],
                            //                                 )),
                            //                           ],
                            //                         ),
                            //                         const MyDivider10(),
                            //                         Row(
                            //                           mainAxisAlignment:
                            //                               MainAxisAlignment
                            //                                   .start,
                            //                           children: [
                            //                             Text(
                            //                               'Distance From',
                            //                               style: Theme.of(
                            //                                       context)
                            //                                   .textTheme
                            //                                   .headlineMedium,
                            //                             ),
                            //                           ],
                            //                         ),
                            //                         const Divider(),
                            //                         Row(
                            //                           mainAxisAlignment:
                            //                               MainAxisAlignment
                            //                                   .spaceBetween,
                            //                           children: [
                            //                             Text(
                            //                               'Location',
                            //                               style: Theme.of(
                            //                                       context)
                            //                                   .textTheme
                            //                                   .headlineMedium,
                            //                             ),
                            //                             Text(
                            //                               'City Center >',
                            //                               style:
                            //                                   Theme.of(context)
                            //                                       .textTheme
                            //                                       .bodyMedium,
                            //                             ),
                            //                           ],
                            //                         )
                            //                       ],
                            //                     ),
                            //                   ),
                            //                   MyElevatedButton(
                            //                       radius: AppRadius.r10,
                            //                       onTap: () {},
                            //                       buttonName: 'Show Result',
                            //                       buttonColor:
                            //                           ColorManager.primary,
                            //                       borderColor:
                            //                           ColorManager.primary,
                            //                       textColor: ColorManager.white,
                            //                       borderWidth: 1)
                            //                 ],
                            //               ),
                            //             ),
                            //           ),
                            //         ));
                            showFilterSheet(context);
                          },
                          borderWidth: 1,
                          borderColor: ColorManager.primary,
                          buttonColor: ColorManager.white,
                          radius: AppRadius.r10,
                          buttonName: 'Filter',
                          icon: Ionicons.options_outline,
                          textColor: ColorManager.primary,
                          iconColor: ColorManager.primary,
                        )),
                        const SizedBox(
                          width: AppSize.s10,
                        ),
                        Expanded(
                            child: MyElevatedButton(
                          onTap: () {
                            showSortSheet(context);
                          },
                          borderWidth: 1,
                          borderColor: ColorManager.primary,
                          buttonColor: ColorManager.white,
                          radius: AppRadius.r10,
                          icon: Icons.filter_list_outlined,
                          textColor: ColorManager.primary,
                          iconColor: ColorManager.primary,
                          buttonName: 'Sort',
                        )),
                      ],
                    ),
                  )),
            ),
            body: ConditionalBuilder(
              builder: (context) => ConditionalBuilder(
                fallback: (context) => Center(
                  child: CircularProgressIndicator(
                    color: ColorManager.primary,
                  ),
                ),
                condition: HomeCubit.get(context).basicHomeEntity != null,
                builder: (context) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) =>
                              VerticalProductWidgetOne(
                                  model: HomeCubit.get(context)
                                      .basicHomeEntity!
                                      .homeList[index]),
                          separatorBuilder: (context, index) =>
                              const MyDivider10(),
                          itemCount: HomeCubit.get(context)
                              .basicHomeEntity!
                              .homeList
                              .length),
                    )
                  ],
                ),
              ),
              fallback: (context) => Center(
                child: CircularProgressIndicator(
                  color: ColorManager.primary,
                ),
              ),
              condition: HomeCubit.get(context).basicHomeEntity != null,
            ));
      },
    );
  }

  Widget ratingContainer(
      {required BuildContext context,
      required String text,
      required Color backgroundColor}) {
    return Container(
      width: AppSize.s50,
      height: AppSize.s50,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(AppRadius.r10),
          right: Radius.circular(AppRadius.r10),
        ),
      ),
      child: Center(
        child: Text(
          '$text+',
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }

  Widget hotelClassContainer(
      {required BuildContext context,
      required Widget child,
      double height = AppSize.s50}) {
    return Container(
      width: AppSize.s50,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.amber, width: 1),
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(AppRadius.r10),
          right: Radius.circular(AppRadius.r10),
        ),
      ),
      child: Center(child: child),
    );
  }

  void showFilterSheet(context) {
    showModalBottomSheet(
        backgroundColor: ColorManager.white,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
          left: Radius.circular(AppRadius.r20),
          right: Radius.circular(AppRadius.r20),
        )),
        context: context,
        builder: (context) => StatefulBuilder(
              builder: (context, setState) => Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p10, vertical: AppPadding.p10),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 1.5,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Reset',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    fontSize: FontSize.s20.sp,
                                    decoration: TextDecoration.underline,
                                    decorationStyle: TextDecorationStyle.solid,
                                    decorationThickness: 0.3,
                                    decorationColor: ColorManager.grey),
                          ),
                          Text(
                            'Filter',
                            style: Theme.of(context).textTheme.headlineLarge!,
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.close))
                        ],
                      ),
                      Container(
                        // height: AppSize.s450.h,
                        decoration:
                            BoxDecoration(color: Colors.grey.withOpacity(0.1)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p5,
                            vertical: AppPadding.p10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Price Per Night',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge!,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: AppPadding.p5,
                                      horizontal: AppPadding.p5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorManager.grey, width: 1)),
                                  child: Text(
                                    '${_rangeValue.round().toString()}+\$',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  ),
                                )
                              ],
                            ),
                            Slider(
                                value: _rangeValue,
                                activeColor: ColorManager.primary,
                                min: 20,
                                max: 540,
                                inactiveColor:
                                    ColorManager.primary.withOpacity(0.1),
                                onChanged: (value) {
                                  setState(() {
                                    _rangeValue = value;
                                  });
                                }),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$20',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(fontSize: FontSize.s16),
                                ),
                                Text(
                                  '\$540',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(fontSize: FontSize.s16),
                                ),
                              ],
                            ),
                            const MyDivider10(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'RATING',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium,
                                ),
                              ],
                            ),
                            const MyDivider5(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ratingContainer(
                                    context: context,
                                    text: '0',
                                    backgroundColor: Colors.orange),
                                ratingContainer(
                                    context: context,
                                    text: '7',
                                    backgroundColor: ColorManager.error),
                                ratingContainer(
                                    context: context,
                                    text: '7.5',
                                    backgroundColor:
                                        Colors.green.withOpacity(0.6)),
                                ratingContainer(
                                    context: context,
                                    text: '8',
                                    backgroundColor: Colors.lightGreen),
                                ratingContainer(
                                    context: context,
                                    text: '8.5',
                                    backgroundColor: Colors.green),
                              ],
                            ),
                            const MyDivider10(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'HOTEL CLASS',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium,
                                ),
                              ],
                            ),
                            const MyDivider5(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                hotelClassContainer(
                                    context: context,
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.star_half,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                      ],
                                    )),
                                hotelClassContainer(
                                    context: context,
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                      ],
                                    )),
                                hotelClassContainer(
                                    context: context,
                                    child: const Column(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                                hotelClassContainer(
                                    context: context,
                                    child: const Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                                hotelClassContainer(
                                    context: context,
                                    // height: AppSize.s60.h,
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            Flexible(
                                              child: Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              fit: FlexFit.tight,
                                            ),
                                            Flexible(
                                              fit: FlexFit.loose,
                                              child: Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                          child: Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                            const MyDivider10(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Distance From',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium,
                                ),
                              ],
                            ),
                            const Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Location',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium,
                                ),
                                Text(
                                  'City Center >',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const MyDivider20(),
                      MyElevatedButton(
                          radius: AppRadius.r10,
                          onTap: () {},
                          buttonName: 'Show Result',
                          buttonColor: ColorManager.primary,
                          borderColor: ColorManager.primary,
                          textColor: ColorManager.white,
                          borderWidth: 1)
                    ],
                  ),
                ),
              ),
            ));
  }

  void showSortSheet(context) {
    showModalBottomSheet(
        backgroundColor: Colors.white,
        isScrollControlled: false,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
          left: Radius.circular(AppRadius.r20),
          right: Radius.circular(AppRadius.r20),
        )),
        context: context,
        builder: (context) => StatefulBuilder(
              builder: (context, setState) => Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p10, vertical: AppPadding.p10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Text(
                          'Sort',
                          style: Theme.of(context).textTheme.headlineLarge!,
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.close))
                      ],
                    ),
                    Container(
                      // height: AppSize.s450.h,
                      decoration:
                          BoxDecoration(color: Colors.grey.withOpacity(0.1)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppPadding.p5, vertical: AppPadding.p10),
                      child: SizedBox(
                        height: AppSize.s300,
                        child: ListView.separated(
                          itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              setState(() {
                                sortList.forEach((element) {
                                  element.isClicked = false;
                                });
                                sortList[index].isClicked = true;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  sortList[index].title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge!,
                                ),
                                sortList[index].isClicked == true
                                    ? const Icon(
                                        Icons.check,
                                        color: Colors.blue,
                                      )
                                    : const SizedBox()
                              ],
                            ),
                          ),
                          separatorBuilder: (context, index) => Divider(),
                          itemCount: sortList.length,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
