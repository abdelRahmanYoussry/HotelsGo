import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_go_task/core/shared_widget/rating_stars.dart';
import 'package:hotel_go_task/features/home/data/models/home_model.dart';

import '../ui_resourses/color_manager.dart';
import '../ui_resourses/font_manager.dart';
import '../ui_resourses/values_manager.dart';
import 'myDivider.dart';

class VerticalProductWidgetOne extends StatefulWidget {
  VerticalProductWidgetOne({super.key, required this.model});
  HomeModelData model;
  bool isFavourite = false;
  @override
  State<VerticalProductWidgetOne> createState() =>
      _VerticalProductWidgetOneState();
}

class _VerticalProductWidgetOneState extends State<VerticalProductWidgetOne> {
  // void Function()? onFavouriteTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.s400.h,
      margin: const EdgeInsets.symmetric(
          vertical: AppPadding.p5, horizontal: AppPadding.p10),
      // padding: const EdgeInsets.symmetric(horizontal: AppPadding.p5),
      decoration: BoxDecoration(
          color: ColorManager.white,
          boxShadow: [
            BoxShadow(
              color: ColorManager.black,
              spreadRadius: -2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            )
          ],
          borderRadius: const BorderRadius.horizontal(
            right: Radius.circular(AppRadius.r10),
            left: Radius.circular(AppRadius.r10),
          ),
          image: DecorationImage(
              image: NetworkImage(widget.model.image!), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // alignment: Alignment.center,
        // fit: StackFit.loose,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(right: AppPadding.p5, top: AppPadding.p5),
            child: Row(
              children: [
                const Spacer(),
                Container(
                  width: AppSize.s50.w,
                  decoration: BoxDecoration(
                      color: ColorManager.black.withOpacity(0.3),
                      shape: BoxShape.circle),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          widget.isFavourite = !widget.isFavourite;
                        });
                      },
                      icon: widget.isFavourite
                          ? Icon(
                              Icons.favorite,
                              size: 25,
                              color: ColorManager.error,
                            )
                          : Icon(
                              Icons.favorite_border,
                              size: 25,
                              color: ColorManager.white,
                            )),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            // height: AppSize.s18.h,
            decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(AppRadius.r8.r),
                  bottomLeft: Radius.circular(AppRadius.r8.r),
                  topRight: Radius.circular(AppRadius.r0.r),
                  topLeft: Radius.circular(AppRadius.r0.r)
                  // right: Radius.circular(AppRadius.r20),
                  // left: Radius.circular(AppRadius.r20),
                  ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  top: 5.0.h, left: 10.w, right: 10.w, bottom: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Rating(
                          rate: double.parse(widget.model.starts.toString())),
                      Text('Hotel',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(height: 1)),
                    ],
                  ),
                  const MyDivider5(),
                  Text(widget.model.name!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(height: 1, fontSize: FontSize.s20.sp)),
                  const MyDivider5(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: AppSize.s50,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.horizontal(
                            right: Radius.circular(AppRadius.r20),
                            left: Radius.circular(AppRadius.r20),
                          ),
                          color: widget.model.reviewScore! > 8
                              ? ColorManager.greenColor
                              : ColorManager.warning,
                        ),
                        padding: const EdgeInsets.all(AppSize.s3),
                        child: Center(
                          child: Text(
                            widget.model.reviewScore.toString(),
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: AppSize.s5,
                      ),
                      widget.model.reviewScore! > 8
                          ? Text(
                              'Excellent',
                              style: Theme.of(context).textTheme.headlineMedium,
                            )
                          : Text(
                              'Good',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                      const SizedBox(
                        width: AppSize.s10,
                      ),
                      const Icon(
                        Icons.location_on,
                        size: 12,
                      ),
                      const SizedBox(
                        width: AppSize.s5,
                      ),
                      Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        widget.model.address.toString(),
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  const MyDivider5(),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.horizontal(
                            right: Radius.circular(AppRadius.r5),
                            left: Radius.circular(AppRadius.r5)),
                        border: Border.all(
                          color: ColorManager.grey1,
                        )),
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p10, vertical: AppPadding.p10),
                    margin: const EdgeInsets.symmetric(vertical: AppPadding.p5),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: AppSize.s150,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.horizontal(
                                  right: Radius.circular(AppRadius.r5),
                                  left: Radius.circular(AppRadius.r5),
                                ),
                                color: Colors.lightBlue.withOpacity(0.3),
                              ),
                              padding: const EdgeInsets.all(AppSize.s3),
                              child: Center(
                                child: Text(
                                  'Our Lowest Price',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium,
                                ),
                              ),
                            ),
                            const MyDivider10(),
                            Row(
                              children: [
                                widget.model.currency == 'USD'
                                    ? Text(
                                        '\$',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontWeight:
                                                    FontWeightManager.semiBold,
                                                color: ColorManager.greenColor),
                                      )
                                    : Text(
                                        widget.model.currency.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                fontWeight:
                                                    FontWeightManager.semiBold,
                                                color: ColorManager.greenColor),
                                      ),
                                Text(
                                  widget.model.price.toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(
                                          fontWeight:
                                              FontWeightManager.semiBold,
                                          fontSize: FontSize.s22.sp,
                                          color: ColorManager.greenColor),
                                ),
                              ],
                            ),
                            Text(
                              'Renaissance',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                      fontWeight: FontWeightManager.regular,
                                      fontSize: FontSize.s12.sp,
                                      color: ColorManager.black),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text(
                          'View Deal >',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(fontSize: FontSize.s20),
                        )
                      ],
                    ),
                  ),
                  const MyDivider5(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'More Prices',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: FontSize.s18,
                            height: 1.1,
                            decorationThickness: 0.6,
                            fontWeight: FontWeightManager.semiBold,
                            color: ColorManager.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
