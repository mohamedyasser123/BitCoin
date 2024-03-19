import 'package:bitcoin/widgets/app_bar/custom_app_bar.dart';
import 'package:bitcoin/widgets/app_bar/appbar_leading_image.dart';
import 'package:bitcoin/widgets/app_bar/appbar_title.dart';
import 'package:bitcoin/widgets/custom_search_view.dart';
import 'widgets/addressesbook_item_widget.dart';
import 'package:bitcoin/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';
import 'package:bitcoin/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AddressesBookScreen extends StatelessWidget {
  AddressesBookScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                height: 836.v,
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 32.v),
                child: Stack(alignment: Alignment.center, children: [

                  SizedBox(
                      width: double.maxFinite,
                      child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24.h),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomSearchView(
                                        controller: searchController,
                                        hintText: "Whitelist",
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 12.h, vertical: 17.v)),
                                    SizedBox(height: 32.v),
                                    _buildAddressesBook(context),


                                  ]))))
                ])),
            floatingActionButton: _buildFloatingActionButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgFrame41761,
            margin: EdgeInsets.only(left: 24.h, top: 44.v, bottom: 16.v),
            onTap: () {
              onTapImage(context);
            }),
        centerTitle: true,
        title: AppbarTitle(
            text: "Addresses Book",
            margin: EdgeInsets.only(top: 51.v, bottom: 24.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildAddressesBook(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 20.v);
            },
            itemCount: 6,
            itemBuilder: (context, index) {
              return AddressesbookItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
        height: 36,
        width: 36,
        backgroundColor: appTheme.blueGray900,
        child: CustomImageView(
            imagePath: ImageConstant.imgDelete1,
            height: 18.0.v,
            width: 18.0.h));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }




}
