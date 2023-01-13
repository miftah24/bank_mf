import 'package:bank_mf/shared/theme.dart';
import 'package:bank_mf/ui/widgets/buttons.dart';
import 'package:bank_mf/ui/widgets/profile_menu_item.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      appBar: AppBar(
        backgroundColor: lightBackgroundColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: blackColor,
        ),
        title: Text(
          'My Profile',
          style: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 22,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                 Container(
              width: 120,
              height: 120,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/img_profile.png',
                    ),
                  ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.check_circle,
                      color: greenColor,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Shayna Hanna',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ProfileMenuitem(
              iconUrl: 'assets/ic_edit_profile.png',
              title: 'Edit Profile',
              onTap: () {},
              ),
               ProfileMenuitem(
              iconUrl: 'assets/ic_pin.png',
              title: 'My Pin',
              onTap: () {},
              ),
               ProfileMenuitem(
              iconUrl: 'assets/ic_wallet.png',
              title: 'Wallet Settings',
              onTap: () {},
              ),
               ProfileMenuitem(
              iconUrl: 'assets/ic_reward.png',
              title: 'My Reward',
              onTap: () {},
              ),
               ProfileMenuitem(
              iconUrl: 'assets/ic_help.png',
              title: 'Help Center',
              onTap: () {},
              ),
               ProfileMenuitem(
              iconUrl: 'assets/ic_logout.png',
              title: 'Log Out',
              onTap: () {},
              ),
              ],
            ),
          ),
          const SizedBox(
            height: 87,
          ),
          CustomTextButton(
            title: 'Report a Problem',
            onPressed: () {},
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}