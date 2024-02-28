import 'package:flutter/material.dart';
import 'package:samurai/presentation/add_wallet/steps/add_wallet_one.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/icons.dart';
import '../../core/constants/images.dart';
import '../../core/utils/wallet_screen_buttons.dart';
import '../import_wallet/wallet_screen_one.dart';

class AddWalletScreen extends StatefulWidget {
  const AddWalletScreen({super.key});

  @override
  State<AddWalletScreen> createState() => _AddWalletScreenState();
}

class _AddWalletScreenState extends State<AddWalletScreen> {
  @override
  Widget build(BuildContext context) {
    final List widgets = [
      const WalletScreenButtonsWidget(
        height: 182,
        icon: AppIcons.phone,
        iconSize: 51,
        textSize: 19,
        untitle: 'Connect to hardware wallet',
        width: double.maxFinite,
        isFirst: false,
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => const AddWalletStepOne(),
            ),
          );
        },
        child: const WalletScreenButtonsWidget(
          height: 182,
          icon: AppIcons.download,
          iconSize: 51,
          textSize: 19,
          untitle: 'Import a wallet',
          width: double.maxFinite,
          isFirst: false,
        ),
      ),
      const WalletScreenButtonsWidget(
        height: 182,
        icon: AppIcons.arrow,
        iconSize: 51,
        textSize: 19,
        untitle: 'Racover a wallet',
        width: double.maxFinite,
        isFirst: false,
      ),
    ];
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.wasabiLogo,
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(100),
            child: Container(
              color: AppColors.bgColor,
              width: double.maxFinite,
              height: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 54, top: 45),
                    child: Text(
                      'Add Wallet',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 154, right: 154),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) =>
                                    const WalletScreenOne()));
                      },
                      child: const WalletScreenButtonsWidget(
                        height: 192,
                        icon: AppIcons.plusIcon,
                        iconSize: 51,
                        textSize: 19,
                        untitle: 'Create a new wallet',
                        width: double.maxFinite,
                        isFirst: true,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Center(
                    child: Text(
                      'or',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 154, right: 140),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          widgets.length,
                          (index) => Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(right: 14),
                                  child: widgets[index],
                                ),
                              )),
                    ),
                  ),
                  
                  const Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
