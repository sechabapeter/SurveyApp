import 'package:final_project/ui/shared/app_colors.dart';
import 'package:final_project/ui/shared/text_styles.dart';
import 'package:final_project/ui/shared/ui_helpers.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';


/// Its state changes along the way.
class RegisterView extends StatefulWidget {
  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool pizza= false;bool pasta = false;bool pap = false;bool chicken= false;
  bool beef = false;bool other = false;bool strongly1 = false;bool strongly2 = false;
  bool strongly3 = false;bool strongly4 = false;bool agree1 = false;
  bool agree2 = false;bool agree3 = false;bool agree4 = false;
  bool neutral1 = false;bool neutral2 = false;bool neutral3 = false;bool neutral4 = false;
 TextEditingController surname,contactNumber,date,age,firstName;
 DatabaseReference _reference;
 /// We are using this form to validate the user input
 final _formKey = GlobalKey<FormState>();

 @override
  void initState() {
    super.initState();
    firstName = TextEditingController();
    surname = TextEditingController();
    contactNumber = TextEditingController();
    date = TextEditingController();
    age = TextEditingController();
    ///We are checking the state of instance and register the collection
    _reference = FirebaseDatabase.instance.reference().child("Register");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple App"),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(
                  controller: surname ,
                  /// Checking the validation
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter surname';
                    }
                    return null;
                  },
                  decoration: new InputDecoration(
                    hintText: 'Enter Surname',
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      borderSide: new BorderSide(
                      ),
                    ),
                    //fillColor: Colors.green
                  ),
                ),
                ///Calling our helper class
                UIHelper.verticalSpaceXSmall(),
                TextFormField(
                  controller: firstName ,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter firstname';
                    }
                    return null;
                  },
                  decoration: new InputDecoration(
                    hintText: 'Enter First Name',
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      borderSide: new BorderSide(
                      ),
                    ),

                    //fillColor: Colors.green
                  ),
                ),
                UIHelper.verticalSpaceXSmall(),
                TextFormField(
                  controller: contactNumber ,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter contactnumber';
                    }
                    return null;
                  },
                  decoration: new InputDecoration(
                    fillColor: Colors.white,
                    hintText: 'Enter Contact Number',
                    border: new OutlineInputBorder(

                      borderRadius: new BorderRadius.circular(10.0),
                      borderSide: new BorderSide(
                      ),
                    ),
                    //fillColor: Colors.green
                  ),
                ),
                UIHelper.verticalSpaceXSmall(),
                TextFormField(
                  controller: date ,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter date';
                    }
                    return null;
                  },
                  decoration: new InputDecoration(
                    hintText: 'Enter Date YYYY/MM/DD',
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      borderSide: new BorderSide(
                      ),
                    ),
                    //fillColor: Colors.green
                  ),
                ),
                UIHelper.verticalSpaceXSmall(),
                TextFormField(
                  controller: age ,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter age';
                    }
                    return null;
                  },

                  decoration: new InputDecoration(
                    hintText: 'Enter Age',
                    fillColor: Colors.white,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      borderSide: new BorderSide(
                      ),
                    ),
                    //fillColor: Colors.green
                  ),

                ),
                UIHelper.verticalSpaceXSmall(),
              Text("What is your favourite food?(You can choose more than 1 answer)",style: greyText),
                UIHelper.verticalSpaceXSmall(),
                CheckboxListTile(
                  checkColor: textColorWhite,
                  title: Text("Pizza"),
                  value: pizza,
                  onChanged: (newValue) {
                    setState(() {
                      pizza = newValue;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                ),
                UIHelper.verticalSpaceXSmall(),
                CheckboxListTile(
                  checkColor: textColorWhite,
                  title: Text("Pasta"),
                  value: pasta,
                  onChanged: (newValue) {
                    setState(() {
                      pasta = newValue;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                ),
                UIHelper.verticalSpaceXSmall(),
                CheckboxListTile(
                  checkColor: textColorWhite,
                  title: Text("Pap and Wors"),
                  value: pap,
                  onChanged: (newValue) {
                    setState(() {
                    beef = newValue;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                ),
                UIHelper.verticalSpaceXSmall(),
                CheckboxListTile(
                  checkColor: textColorWhite,
                  title: Text("Chicken stir fry"),
                  value: chicken,
                  onChanged: (newValue) {
                    setState(() {
                      chicken = newValue;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                ),
                UIHelper.verticalSpaceXSmall(),
                CheckboxListTile(
                  checkColor: textColorWhite,
                  title: Text("Beef stir fry"),
                  value: beef,
                  onChanged: (newValue) {
                    setState(() {
                      beef = newValue;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                ),
                UIHelper.verticalSpaceXSmall(),
                CheckboxListTile(
                  checkColor: textColorWhite,
                  title: Text("Other"),
                  value: other,
                  onChanged: (newValue) {
                    setState(() {
                      other = newValue;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                ),
                UIHelper.verticalSpaceMedium(),
                Text("On a scale of 1 to 5 indicate whether you strongly agree to strongly disagree",style: greyText,),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  padding: EdgeInsets.all(20.0),
                  child: Table(
                    border: TableBorder.all(color: Colors.black),
                    children: [
                      TableRow(children: [
                        TableCell(child: Center(child: Text(""))),
                        TableCell(child: Center(child: Text("Strongly Agree  \n  (1)"))),
                        TableCell(
                          child: Center(child: Text('Agree \n  (2)')),
                        ),
                        TableCell(child: Center(child: Text('Neutral  \n  (3)'))),
                      ]),
                      TableRow(children: [
                        Text('I like to eat out'),
                        CheckboxListTile(
                          checkColor: textColorWhite,
                          value: strongly1,
                          onChanged: (newValue) {
                            setState(() {
                              strongly1 = newValue;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                        ),
                        CheckboxListTile(
                          checkColor: textColorWhite,
                          value: strongly2,
                          onChanged: (newValue) {
                            setState(() {
                              strongly2 = newValue;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                        ),

                        CheckboxListTile(
                          checkColor: textColorWhite,
                          value: strongly3,
                          onChanged: (newValue) {
                            setState(() {
                              strongly3 = newValue;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                        ),
                      ]),
                      TableRow(children: [
                        Text('I like to watch movie'),
                        CheckboxListTile(
                          checkColor: textColorWhite,
                          value: strongly4,
                          onChanged: (newValue) {
                            setState(() {
                              strongly4 = newValue;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                        ),
                        CheckboxListTile(
                          checkColor: textColorWhite,
                          value: agree1,
                          onChanged: (newValue) {
                            setState(() {
                              agree1 = newValue;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                        ),

                        CheckboxListTile(
                          checkColor: textColorWhite,
                          value: agree2,
                          onChanged: (newValue) {
                            setState(() {
                              agree2 = newValue;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                        ),
                      ]),
                      TableRow(children: [
                        Text('I like to watch TV'),
                        CheckboxListTile(
                          checkColor: textColorWhite,
                          value: agree3,
                          onChanged: (newValue) {
                            setState(() {
                              agree3 = newValue;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                        ),
                        CheckboxListTile(
                          checkColor: textColorWhite,
                          value: agree4,
                          onChanged: (newValue) {
                            setState(() {
                              agree4 = newValue;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                        ),

                        CheckboxListTile(
                          checkColor: textColorWhite,
                          value: neutral1,
                          onChanged:(newValue) {
                            setState(() {
                              neutral1 = newValue;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                        ),
                      ]),
                      TableRow(children: [
                        Text('I like to listen to the radio'),
                        CheckboxListTile(
                          checkColor: textColorWhite,
                          value: neutral2,
                          onChanged: (newValue) {
                            setState(() {
                              neutral2 = newValue;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                        ),
                        CheckboxListTile(
                          checkColor: textColorWhite,
                          value: neutral3,
                          onChanged: (newValue) {
                            setState(() {
                              neutral3 = newValue;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                        ),

                        CheckboxListTile(
                          checkColor: textColorWhite,
                          value: neutral4,
                          onChanged: (newValue) {
                            setState(() {
                              neutral4 = newValue;
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                        ),
                      ])
                    ],
                  ),
                ),
               Container(
                 color: primaryColor,
                 padding: EdgeInsets.symmetric(horizontal: 10),
                 child: RaisedButton(
                   child: Text("Submit",style: TextStyle(
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                   ),),
                   onPressed: () {
                     /// Validate returns true if the form is valid, or false
                     if (_formKey.currentState.validate()) {
                       // If the form is valid, display a Snackbar.
                       register();
                     }
                     return null;

                   },
                 ),
               ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  /// We are using this function to register the user
 void register(){
   String fName = firstName.text;
   String Surname = surname.text;
   String aging = age.text;
   String Date = date.text;
   String contact = contactNumber.text;
   /// We are mapping everything so that we can send it to database.
   Map<String,String>  register = {
     "firstName": fName,
     "surname": Surname,
     "age": aging,
     "Date": Date,
     "contact": contact,
   };
   /// Sending data to Firebase Database
   ///
   _reference.push().set(register).then((value) {
     _showDialog();
   }).catchError((error) {
     Text("'${error.toString()}");
     print("This is the error $error");
   });
   //https://www.youtube.com/watch?v=MwhgBYW-FNs
 }
 void _showDialog() {
   // flutter defined function
   showDialog(
     context: context,
     builder: (BuildContext context) {
       // return object of type Dialog
       return AlertDialog(
         title: new Text("User Succesfully Registered"),
         actions: <Widget>[
           // usually buttons at the bottom of the dialog
           new FlatButton(
             child: new Text("Close"),
             onPressed: () {
               Navigator.of(context).pop();
             },
           ),
         ],
       );
     },
   );
 }
}
