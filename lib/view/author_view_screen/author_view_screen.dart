import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:eadukalthedi/view/author_view_screen/auther_view_screen_controller.dart';
import 'package:eadukalthedi/view/blog_container/blog_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthorViewScreen extends StatelessWidget {
  const AuthorViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final providerObj = Provider.of<AuthorViewScreenController>(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: SizeUtils.height * 0.05,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeUtils.width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // profile image
              CircleAvatar(
                radius: SizeUtils.height * 0.08,
                backgroundImage: const NetworkImage(
                    "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              ),
              gapLarge,

              // author name
              Text(
                "Sri Vinkayya Nair",
                style: context.poppinsSemiBold
                    .copyWith(fontSize: 18.fSize, color: textBlack),
              ),

              // author location
              gap,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.person_pin_circle),
                  Text(
                    "Kottayam",
                    style: context.poppinsRegular
                        .copyWith(fontSize: 15.fSize, color: textBlack),
                  ),
                ],
              ),

              gapLarge,

              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: SizeUtils.width * 0.07),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProfileActionButton(
                      followCount: "130",
                      actionName: "Followers",
                      iconName: providerObj.isFollowButtonSelected
                          ? Icons.favorite
                          : Icons.favorite_border_outlined,
                      iconColor: providerObj.isFollowButtonSelected
                          ? Colors.red
                          : textBlack,
                      onTab: () {
                        providerObj.toggleFollowButtonSelection();
                      },
                    ),
                    gapLarge,
                    ProfileActionButton(
                      followCount: "10",
                      actionName: "Posts",
                      iconName: Icons.article_outlined,
                      onTab: () {},
                    ),
                    gapLarge,
                    ProfileActionButton(
                      followCount: "10",
                      actionName: "Posts",
                      iconName: Icons.remove_red_eye_outlined,
                      onTab: () {},
                    ),
                  ],
                ),
              ),

              gap,

              const Divider(),

              gapLarge,

              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => const BlogContainer(),
                  separatorBuilder: (context, index) => gap,
                  itemCount: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileActionButton extends StatelessWidget {
  final String followCount;
  final IconData iconName;
  final VoidCallback onTab;
  final String actionName;
  final Color iconColor;

  const ProfileActionButton({
    super.key,
    required this.followCount,
    required this.iconName,
    required this.onTab,
    required this.actionName,
    this.iconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(followCount,
                style: context.poppinsSemiBold
                    .copyWith(fontSize: 24.fSize, color: textBlack)),
            SizedBox(width: SizeUtils.width * 0.01),
            GestureDetector(
              onTap: onTab,
              child: Icon(
                iconName,
                size: 30,
                color: iconColor,
              ),
            ),
          ],
        ),
        Text(
          actionName,
          style: context.poppinsRegular12,
        )
      ],
    );
  }
}
