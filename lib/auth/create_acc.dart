import 'package:flutter/material.dart';

 
class CreateAcc extends StatefulWidget { 
  const CreateAcc({super.key}); 
 
  @override 
  State<CreateAcc> createState() => _CreateAccState(); 
} 
 
final _formKey = GlobalKey<FormState>(); 
final _EmailController = TextEditingController(); 
final _PhoneController = TextEditingController(); 
final _CreatepassController = TextEditingController(); 
final _ConfirmpassController = TextEditingController(); 
bool _validate = false;
 
class _CreateAccState extends State<CreateAcc> {
  get tdBGColor => null;
  
  get tdGrey => null;
 
  @override 
  Widget build(BuildContext context) 
  {

    return Scaffold( 
      backgroundColor: tdBGColor, 
      appBar: AppBar( 
        title: Text('Create An Account'), 
        centerTitle: true, 
        backgroundColor: Colors.blue, 
      ),  
      body: Form( 
        key: _formKey,
        child: SingleChildScrollView(
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.start, 
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [ 
              Text('Email'),
              Container( 
                padding: EdgeInsets.symmetric(horizontal: 15), 
                decoration: BoxDecoration( 
                  color: Colors.white, 
                  borderRadius: BorderRadius.circular(20), 
                ), 
                child: TextFormField( 
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                    },
                  controller: _EmailController, 
                  decoration: InputDecoration( 
                      contentPadding: EdgeInsets.all(0), 
                      border: InputBorder.none, 
                      errorText: _validate ? 'Value Cant be empty' : null, 
                      hintText: 'Email', 
                      hintStyle: TextStyle(color: tdGrey), 
                      prefixIconConstraints: 
                          BoxConstraints(maxHeight: 20, minWidth: 25)), 
                ), 
              ), 
              SizedBox( 
                height: 15, 
              ), 
              Text('Phone No'), 
              Container( 
                padding: EdgeInsets.symmetric(horizontal: 15), 
                decoration: BoxDecoration( 
                  color: Colors.white, 
                  borderRadius: BorderRadius.circular(20), 
                ), 
                child: TextFormField(
                  validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                }, 
                              controller: _PhoneController, 
                  decoration: InputDecoration( 
                      contentPadding: EdgeInsets.all(0), 
                      border: InputBorder.none, 
                      hintText: 'Enter Phone No', 
                      hintStyle: TextStyle(color: tdGrey), 
                      prefixIconConstraints: 
                          BoxConstraints(maxHeight: 20, minWidth: 25)), 
                ), 
              ), 
              SizedBox( 
                height: 15, 
              ), 
              Text('Create Password'), 
              Container( 
                padding: EdgeInsets.symmetric(horizontal: 15), 
                decoration: BoxDecoration( 
                  color: Colors.white, 
                  borderRadius: BorderRadius.circular(20), 
                ), 
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  }, 
                  controller: _CreatepassController, 
                  decoration: InputDecoration( 
                      contentPadding: EdgeInsets.all(0), 
                      border: InputBorder.none, 
                      hintText: 'Enter Password', 
                      hintStyle: TextStyle(color: tdGrey), 
                      prefixIconConstraints: 
                          BoxConstraints(maxHeight: 20, minWidth: 25)), 
                ), 
              ), 
              SizedBox( 
                height: 15, 
              ), 
              Text('Confirm password'), 
              Container( 
                padding: EdgeInsets.symmetric(horizontal: 15), 
                decoration: BoxDecoration( 
                  color: Colors.white, 
                  borderRadius: BorderRadius.circular(20), 
                ), 
                child: TextFormField(
                  validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              }, 
                  controller: _ConfirmpassController, 
                  decoration: InputDecoration(contentPadding: EdgeInsets.all(0), 
                      border: InputBorder.none, 
                      hintText: 'Confirm Password', 
                      hintStyle: TextStyle(color: tdGrey), 
                      prefixIconConstraints: 
                          BoxConstraints(maxHeight: 20, minWidth: 25)), 
                ), 
              ), 
              SizedBox( 
                height: 15, 
              ), 
              Align( 
                  alignment: Alignment.center, 
                  child: ElevatedButton( 
                      onPressed: () async {
                         if (_formKey.currentState!.validate()) 
                         {     
                          }          
                      }, 
                      child: Text("Create Account"))) 
            ], 
          ),
        ), 
      ), 
    ); 
  } 
}