import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:marketi_app/core/api/end_points.dart';
import 'package:marketi_app/core/cache/cache_helper.dart';
import 'package:marketi_app/core/cubits/user_portfolio_cubit/user_portfolio_cubit.dart';
import 'package:marketi_app/core/cubits/user_portfolio_cubit/user_portfolio_state.dart';
import 'package:marketi_app/core/utils/app_colors.dart';
import 'package:marketi_app/core/utils/app_images.dart';
import 'package:marketi_app/core/utils/app_styles.dart';
import 'package:marketi_app/core/widgets/profile_photo.dart';

class UserProfileHeader extends StatelessWidget {
  const UserProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserPortfolioCubit, UserStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Center(
          child: Stack(
            children: [
              const Image(
                image: AssetImage(Assets.assetsImagesProfileShapes),
              ),
              Positioned(
                top: 21.h,
                left: 110.w,
                child: Column(
                  children: [
                    ProfilePhoto(
                      radius: 60,
                      image: FileImage(
                        File(
                            context.read<UserPortfolioCubit>().profilePic.path),
                      ),
                    ),
                    Text(
                      CacheHelper.getData(key: ApiKey.name),
                      style: AppStyles.semiBold18,
                    ),
                    Text(
                      '@${CacheHelper.getData(key: ApiKey.name)}',
                      style: AppStyles.medium14,
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 100.h,
                  left: 185.w,
                  child: InkWell(
                    onTap: () {
                      ImagePicker().pickImage(source: ImageSource.gallery).then(
                          (value) => context
                              .read<UserPortfolioCubit>()
                              .uploadProfilePic(image: value!));
                      context
                          .read<UserPortfolioCubit>()
                          .updateProfilePicToApi();
                    },
                    child: Container(
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColors.lightBlue200,
                          border: Border.all(
                            color: Colors.black54,
                          )),
                      child: const Icon(
                        Icons.camera_alt_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ))
            ],
          ),
        );
      },
    );
  }
}
