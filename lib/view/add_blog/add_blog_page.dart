import 'package:eadukalthedi/extensions/font_extensions.dart';
import 'package:eadukalthedi/utils/constants.dart';
import 'package:eadukalthedi/utils/log_utils.dart';
import 'package:eadukalthedi/utils/size_utils.dart';
import 'package:eadukalthedi/view/add_blog/controllers/controllers.dart';
import 'package:eadukalthedi/widgets/common_buton.dart';
import 'package:flutter/material.dart';

class AddBlogPage extends StatefulWidget {
  const AddBlogPage({super.key});

  @override
  State<AddBlogPage> createState() => _AddBlogPageState();
}

class _AddBlogPageState extends State<AddBlogPage> {
  bool isBlogCompleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          ),
          automaticallyImplyLeading: false,
          toolbarHeight: kToolbarHeight.h,
          backgroundColor: Colors.transparent,
          forceMaterialTransparency: true,
          actions: [
            SizedBox(
              width: SizeUtils.width * .3,
              child: isBlogCompleted
                  ? CommonButton(
                      borderRadius: BorderRadius.all(Radius.circular(80.h)),
                      onPressed: () {
                        logesh.i(
                            "isBlogCompleted: $isBlogCompleted   and publish button pressed");
                      },
                      isAGradieantButton: true,
                      child: Center(
                        child: Text(
                          "PUBLISH",
                          style: context.helveticaNeueRegular12.copyWith(
                              fontSize: 12.fSize,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    )
                  : CommonButton(
                      borderRadius: BorderRadius.all(Radius.circular(100.h)),
                      onPressed: () {
                        logesh.i(
                            "isBlogCompleted: $isBlogCompleted   and publish button pressed");
                      },
                      color: const Color.fromARGB(255, 210, 208, 208),
                      child: Center(
                        child: Text(
                          "PUBLISH",
                          style: context.helveticaNeueRegular12.copyWith(
                              fontSize: 12.fSize,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
            ),
            gapLarge
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(paddingLarge.h),
          child: Column(
            children: [
              Form(
                  child: Column(children: [
                TextFormField(
                  controller: AddBlogController().titleController,
                  maxLength: 60,
                  style: TextStyle(
                    fontSize: 18.fSize,
                    color: Colors.black54,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(padding.h),
                    filled: true,
                    fillColor: Colors.grey[200],
                    hoverColor: Colors.grey,
                    hintText: ' നിങ്ങളുടെ ബ്ലോഗിന്റെ പേര്',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.fSize,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(padding),
                        borderSide: BorderSide.none

                        // borderSide: const BorderSide(
                        //   color: Colors.grey,
                        //   width: 1.0,
                        // ),
                        ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(padding),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 1.0)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(padding),
                      borderSide: BorderSide(
                        color: primalColor,
                        width: 1.5,
                      ),
                    ),
                    counterText: '',
                  ),
                ),
             
             
             
             
             
              ]))
            ],
          ),
        ));
  }
}
