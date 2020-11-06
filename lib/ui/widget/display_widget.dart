import 'package:final_project/ui/shared/app_colors.dart';
import 'package:final_project/ui/shared/text_styles.dart';
import 'package:final_project/ui/shared/ui_helpers.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';


///Its a Stateful Widget because its state changes along the way
class DisplayWidget extends StatefulWidget {
  @override
  _DisplayWidget createState() => _DisplayWidget();
}
class _DisplayWidget extends State<DisplayWidget> {
  ///We are querying to firebase using Query
  Query _ref;

  ///We use this init Function to check the state of FirebaseDatabase and what we can retrieve from it
  @override
  void initState() {
    super.initState();
    _ref = FirebaseDatabase.instance
        .reference()
        .child('Register')
        .orderByChild('firstName');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('List Data'),
      ),
      /// This Container will take FirebaseAnimatedList to call the list from Firebase and return the function we created below
      body: Container(
        child: FirebaseAnimatedList(
          query: _ref,
          itemBuilder: (BuildContext context, DataSnapshot snapshot,
              Animation<double> animation, int index) {
            Map register = snapshot.value;
            /// We are returning _buildContactItem with its parameters as Map
            return _buildContactItem(register: register);
          },
        ),
      ),
    );
  }
///This function Map everything we have in database
  Widget _buildContactItem({Map register}) {
    /// Checking the average of retrieved data
    var average = register.length + register.length / register.length;
    return Padding(
      padding: const EdgeInsets.only(top: 130),
      child: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: 'Total number of surver         = ',
                    style: TextStyle(color: textColorBlack, fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: '${register.length}',
                        style: TextStyle(color: primaryColor, fontSize: 18),
                      )
                    ]),
              ),
              RichText(
                text: TextSpan(
                    text: 'Average age:  ',
                    style: TextStyle(color: textColorBlack, fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: '$average',
                        style: TextStyle(color: primaryColor, fontSize: 18),
                      )
                    ]),
              ),
              RichText(
                text: TextSpan(
                    text: 'Oldest person who participate in survey: ',
                    style: TextStyle(color: textColorBlack, fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: '${register.length}',
                        style: TextStyle(color: primaryColor, fontSize: 18),
                      )
                    ]),
              ),
              RichText(
                text: TextSpan(
                    text: 'Youngest person who participated in survey: ',
                    style: TextStyle(color: textColorBlack, fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: '${register.length}',
                        style: TextStyle(color: primaryColor, fontSize: 18),
                      )
                    ]),
              ),
              UIHelper.verticalSpaceMedium(),
              RichText(
                text: TextSpan(
                    text: 'Percentage of people whoi like Pizza:',
                    style: TextStyle(color: textColorBlack, fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: '${register.length}',
                        style: TextStyle(color: primaryColor, fontSize: 18),
                      )
                    ]),
              ),
              RichText(
                text: TextSpan(
                    text: 'Percentage of people who like Pasta:',
                    style: TextStyle(color: textColorBlack, fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: '${register.length}',
                        style: TextStyle(color: primaryColor, fontSize: 18),
                      )
                    ]),
              ),
              RichText(
                text: TextSpan(
                    text: 'Percentage of people who like Pap and Wors:',
                    style: TextStyle(color: textColorBlack, fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: '${register.length}',
                        style: TextStyle(color: primaryColor, fontSize: 18),
                      )
                    ]),
              ),
              UIHelper.verticalSpaceMedium(),
              RichText(
                text: TextSpan(
                    text: 'People like to eat out : ',
                    style: TextStyle(color: textColorBlack, fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: '${register.length}',
                        style: TextStyle(color: primaryColor, fontSize: 18),
                      )
                    ]),
              ),
              RichText(
                text: TextSpan(
                    text: 'People like to watch movies : ',
                    style: TextStyle(color: textColorBlack, fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: '${register.length}',
                        style: TextStyle(color: primaryColor, fontSize: 18),
                      )
                    ]),
              ),
              RichText(
                text: TextSpan(
                    text: 'People like to watch TV : ',
                    style: TextStyle(color: textColorBlack, fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: '${register.length}',
                        style: TextStyle(color: primaryColor, fontSize: 18),
                      )
                    ]),
              ),
              RichText(
                text: TextSpan(
                    text: 'People like to listen to the radio : ',
                    style: TextStyle(color: textColorBlack, fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: '${register.length}',
                        style: TextStyle(color: primaryColor, fontSize: 18),
                      )
                    ]),
              ),
              UIHelper.verticalSpaceLarge(),
              Center(
                child: Container(
                  color: primaryColor,
                  width: 200,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DisplayWidget()),
                      );
                    },
                    child: Text(
                      "OK",
                      style: textStyleWhite,
                    ),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
