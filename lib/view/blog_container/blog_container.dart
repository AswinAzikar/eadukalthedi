import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/routes/app_routes.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:eadukalthedi/view/blog_page/blog_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BlogContainer extends StatelessWidget {
  const BlogContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final providerObj = Provider.of<BlogPageController>(context);
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.h),
      decoration: BoxDecoration(
        color: pureWhite,
        border: Border(
          bottom: BorderSide(
            color: mildGray,
            width: 0.5,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(profileImages.first),
                radius: SizeUtils.height * 0.02,
              ),
              gap,
              Text(
                "വിനായകാഷ്ടകം",
                style: context.helveticaNeueRegular12
                    .copyWith(fontSize: 12.fSize, color: textBlack),
              ),
              gap,
              Text(
                "by",
                style: context.helveticaNeueRegular12
                    .copyWith(color: mildGray, fontSize: 12.fSize),
              ),
              gap,
              Text(
                "മധുകൃഷ്ണ",
                style: context.helveticaNeueRegular12
                    .copyWith(color: textBlack, fontSize: 16.fSize),
              ),
            ],
          ),
          gapLarge,
          GestureDetector(
            onTap: () {
              // TODO navigation to blog page after api fetching its needs to be implmented in the controller
              Navigator.pushNamed(context, AppRoutes.blogPageScreen);
            },
            child: Text(
              "അഡിപിസിസിംഗ് ഐഡി ഓഫീഷ്യ ഓഫീഷ്യ നിസി ഉല്ലാംകോ സുന്ത് ഡോളോരെ ചില്ലം അഡിപിസിസിംഗ് സുന്ത് വെനിയം നോസ്ത്രുഡ് ഉല്ലാംകോ വെലിറ്റ് നോസ്ത്രുഡ് നോൺ കുൽപ്പ പാരിയാതൂർ ആലിക്വാ ഡോളോർ ഡോളോർ ഇപ്സം ഡോളോരെ സിന്‍റ് ഓഫീഷ്യ മൊല്ലിറ്റ് ലോറം അമെറ്റ് കൊമ്മോഡോ ലോറം ",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: context.helveticaNeueBold20
                  .copyWith(color: Colors.black, fontSize: 20.fSize),
            ),
          ),
          gapLarge,
          const Text(
            "ഐഡി ഓഫീഷ്യ ഓഫീഷ്യ നിസി ഉല്ലാംകോ സുന്ത് ഡോളോരെ ചില്ലം അഡിപിസിസിംഗ് സുന്ത് വെനിയം നോസ്ത്രുഡ് ഉല്ലാംകോ വെലിറ്റ് നോസ്ത്രുഡ് നോൺ കുൽപ്പ ",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.normal,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          gap,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text("1 d ago"),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          providerObj.toggleFavoriteSelection();
                        },
                        icon: providerObj.isFavoriteSelected
                            ? const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : const Icon(Icons.favorite_outline),
                      ),
                      const Text("51"),
                    ],
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
