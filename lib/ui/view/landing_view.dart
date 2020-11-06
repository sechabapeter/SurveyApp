import 'package:final_project/ui/shared/app_colors.dart';
import 'package:final_project/ui/shared/text_styles.dart';
import 'package:final_project/ui/shared/ui_helpers.dart';
import 'package:final_project/ui/view/register_view.dart';
import 'package:final_project/ui/widget/display_widget.dart';
import 'package:flutter/material.dart';

class LandingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Landing Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 190),
        child: Center(
          child: Column(
            children: [
              Center(
                child: Container(
                  color: primaryColor,
                  width: 200,
                  child: FlatButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegisterView()),
                        );
                      },
                      child: Text("Fill Out Survey",style: textStyleWhite,),
                  ),
                ),
              ),
              UIHelper.verticalSpaceMedium(),
              Center(
                child: Container(
                  color: primaryColor,
                  width: 200,
                  child: FlatButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DisplayWidget()),
                      );
                    },
                    child: Text("View Survey Results",style: textStyleWhite,),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
