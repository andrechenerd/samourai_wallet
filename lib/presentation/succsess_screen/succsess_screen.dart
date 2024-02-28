import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/icons.dart';
import '../../core/constants/images.dart';
import '../../core/utils/green_button.dart';
import '../wallet_loading_screen/wallet_loading.dart';

class SuccsessScreen extends StatefulWidget {
  final String name;
  const SuccsessScreen({super.key, required this.name});

  @override
  State<SuccsessScreen> createState() => _SuccsessScreenState();
}

class _SuccsessScreenState extends State<SuccsessScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                const Spacer(
                  flex: 47,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 70),
                  child: Text(
                    'Success',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 28),
                  ),
                ),
                const Spacer(
                  flex: 93,
                ),
                Center(
                  child: Image.asset(
                    AppIcons.wasabiCash,
                    width: 193,
                    height: 193,
                  ),
                ),
                const Spacer(
                  flex: 30,
                ),
                const Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: 'Your wallet ',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 24)),
                    TextSpan(
                        text: 'Wallet 2 ',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 24)),
                    TextSpan(
                        text: 'was added to Samourai.',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 24)),
                  ])),
                ),
                const Spacer(
                  flex: 105,
                ),
                Row(
                  children: [
                    const Spacer(),
                    GreenButton(
                      isBorder: true,
                      width: 106,
                      text: 'Done',
                      color: AppColors.lightGreen,
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) =>
                                    const WalletLoading()),
                            (route) => false);
                      },
                    ),
                    const SizedBox(
                      width: 51,
                    ),
                  ],
                ),
                const Spacer(
                  flex: 32,
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
