import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:eadukalthedi/view/blog_page/blog_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    final providerObj = Provider.of<BlogPageController>(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.1 * SizeUtils.width,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: offwhite),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "അര്‍ദ്ധനാരീശ്വരസ്തവം   അയ്യോയീവെയില്‍കൊണ്ടു വെന്തുരുകി വാ- ടീടുന്നു നീയെന്നിയേ",
                      style: context.helveticaNeueBold
                          .copyWith(fontSize: 30.fSize, color: textBlack),
                    ),
                    const SizedBox(height: 15),
                    // Author details and metadata
                    Row(
                      children: [
                        // Author's avatar
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/4992382/pexels-photo-4992382.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                          ),
                          radius: 20,
                        ),

                        SizedBox(width: SizeUtils.width * 0.05),

                        // Author's full details
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // AuthorName and follow
                            Row(
                              children: [
                                Text(
                                  "മധുകൃഷ്ണൻ",
                                  style: context.helveticaNeueSemiBold.copyWith(
                                      fontSize: 18.fSize, color: textBlack),
                                ),
                                SizedBox(width: SizeUtils.width * 0.05),
                                Text(
                                  "Follow",
                                  style: context.helveticaNeueSemiBold.copyWith(
                                      fontSize: 18.fSize, color: textYellow),
                                ),
                              ],
                            ),

                            // Published in Category
                            Row(
                              children: [
                                Text(
                                  "Published in",
                                  style: context.helveticaNeueRegular12
                                      .copyWith(
                                          fontSize: 18.fSize,
                                          color: textGreyLight),
                                ),
                                SizedBox(width: SizeUtils.width * 0.02),
                                Text(
                                  "Category",
                                  style: context.helveticaNeueRegular.copyWith(
                                      fontSize: 20.fSize, color: textBlack),
                                ),
                              ],
                            ),

                            // 5 min read . Dec 16, 2024
                            Row(
                              children: [
                                Text(
                                  "5 min read",
                                  style: context.helveticaNeueRegular12
                                      .copyWith(
                                          fontSize: 18.fSize,
                                          color: textGreyLight),
                                ),
                                SizedBox(width: SizeUtils.width * 0.02),
                                Text(
                                  "Dec 16, 2024",
                                  style: context.helveticaNeueRegular.copyWith(
                                      fontSize: 18.fSize, color: textGreyLight),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: SizeUtils.height * 0.03),

                    Text(
                      "ചിദംബര ലിംഗ സ്തുതി ശിവലിംഗത്തെ ആദരിക്കുന്ന ഒരു ഭക്തിഗാനമാണ്. ഈ സ്തുതിയിൽ ശിവലിംഗത്തെ വിവിധ ദേവതകളുമായും, പ്രകൃതി ശക്തികളുമായും ബന്ധപ്പെടുത്തി ആരാധിക്കുന്നു. ബ്രഹ്മാവിനാൽ ആരാധിക്കപ്പെടുന്നതായി പറയപ്പെടുന്ന ശിവലിംഗം, ജീവൻ, മരണം, പുനർജന്മ എന്നീ ചക്രത്തിന്റെ അധിപനാണ്. കർമ്മഫലങ്ങളിൽ നിന്ന് മോചനം നൽകുന്നതായി കവി സൂചിപ്പിക്കുന്നു. കല്പവൃക്ഷത്തിന്റെ തണലിൽ സ്ഥിതി ചെയ്യുന്നതായി പറയപ്പെടുന്ന ശിവലിംഗം സമുദ്രത്തിന്റെ അലകളാൽ അലങ്കരിക്കപ്പെട്ടതായി വർണിക്കുന്നു. അഗ്നിയുടെ പ്രകാശത്താൽ സമൃദ്ധമാണെന്ന് വ്യക്തമാക്കുന്നു. സ്കന്ദനും ഗണേശനും സൃഷ്ടിച്ചതായി പറയപ്പെടുന്ന ശിവലിംഗം പാർവതിയുടെ അനുഗ്രഹത്താൽ പ്രകാശിക്കുന്നതായി സൂചിപ്പിക്കുന്നു. സാംബന്റെ ആരാധനാമൂർത്തിയാണെന്ന് വ്യക്തമാക്കുന്നു. ശിവലിംഗം എല്ലാ ജീവജാലങ്ങളുടെയും ഹൃദയത്തിൽ വസിക്കുന്നതായി പറയപ്പെടുന്നു. ശിവലിംഗം ഭക്തന്റെ മനസ്സിനെ പോഷിപ്പിക്കുന്നതായി സൂചിപ്പിക്കുന്നു. ഈ സ്തുതിയിലൂടെ കവി ശിവലിംഗത്തെ ഒരു സർവ്വവ്യാപിയായ, സർവ്വശക്തനായ ദൈവമായി ആരാധിക്കുന്നു. ശിവലിംഗം പ്രകൃതിയുടെയും, ദേവതകളുടെയും, മനുഷ്യരുടെയും ഹൃദയത്തിൽ വസിക്കുന്നതായി കവി വ്യക്തമാക്കുന്നു. ഈ സ്തുതിയിലെ ഓരോ വാക്യവും ശിവലിംഗത്തോടുള്ള ആഴമായ ഭക്തിയുടെയും ആരാധനയുടെയും പ്രകടനമാണ്. ഈ ബ്ലോഗ് പോസ്റ്റ് ഒരു ആമുഖം മാത്രമാണ്. ശിവലിംഗ സ്തുതിയെക്കുറിച്ച് കൂടുതൽ ആഴത്തിൽ പഠിക്കാൻ നിങ്ങൾക്ക് മറ്റ് വിഭവങ്ങൾ തേടാം",
                      style: context.helveticaNeueRegular
                          .copyWith(fontSize: 24.fSize, color: textGreyLight),
                    )
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: pureWhite,
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "10K",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "20K",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              providerObj.toggleBookmarkSelection();
                            },
                            icon: providerObj.isBookmarkSelected
                                ? Icon(
                                    Icons.bookmark,
                                    color: primalColor,
                                  )
                                : const Icon(Icons.bookmark_outline),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "15K",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.share_outlined),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
