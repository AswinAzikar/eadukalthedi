import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:eadukalthedi/view/blog_container/blog_container.dart';
import 'package:eadukalthedi/view/home_screen/home_screen_controller.dart';
import 'package:eadukalthedi/view/user_profile_screen/widgets/author_list.dart';
import 'package:eadukalthedi/widgets/common_buton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeUtils.width * 0.04),
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              // profile image / name / followers / following
              Row(
                children: [
                  // profile section
                  CircleAvatar(
                    radius: SizeUtils.width * 0.1,
                    backgroundImage: const NetworkImage(
                        "https://images.pexels.com/photos/1288182/pexels-photo-1288182.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  ),
                  gapLarge,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // name
                      Text(
                        "Sitaraman R",
                        style: context.helveticaNeueBold20
                            .copyWith(color: Colors.black, fontSize: 24.fSize),
                      ),

                      // followers / following
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                "124",
                                style: context.helveticaNeueRegular.copyWith(
                                    color: Colors.black, fontSize: 16.fSize),
                              ),
                              gap,
                              Text(
                                "Followers",
                                style: context.helveticaNeueRegular.copyWith(
                                    color: Colors.black, fontSize: 16.fSize),
                              ),
                            ],
                          ),
                          gapLarge,
                          Row(
                            children: [
                              Text(
                                "124",
                                style: context.helveticaNeueRegular.copyWith(
                                    color: Colors.black, fontSize: 16.fSize),
                              ),
                              gap,
                              Text(
                                "Following",
                                style: context.helveticaNeueRegular.copyWith(
                                    color: Colors.black, fontSize: 16.fSize),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),

              gapLarge,

              // edit button

              CommonButton(
                isAGradieantButton: true,
                child: Center(
                  child: Text(
                    "Edit Profile",
                    style: context.helveticaNeueBold.copyWith(
                      fontSize: 16,
                      color: pureWhite,
                    ),
                  ),
                ),
              ),

              gapLarge,

              // stories / Following / About Tab Section

              TabBar(
                overlayColor: WidgetStateProperty.resolveWith<Color?>(
                  (states) {
                    if (states.contains(WidgetState.pressed)) {
                      return primalColor;
                    }
                    return null;
                  },
                ),
                splashBorderRadius:
                    const BorderRadius.all(Radius.circular(paddingXL)),
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: primalColor,
                tabs: const [
                  Tab(
                    text: "Stories",
                  ),
                  Tab(
                    text: "Following",
                  ),
                  Tab(
                    text: "About",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    // stories
                    ListView.builder(
                      itemBuilder: (context, index) {
                        return const BlogContainer();
                      },
                    ),
                    const AuthorList(),
                    Padding(
                      padding: EdgeInsets.only(top: SizeUtils.height * 0.04),
                      child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
