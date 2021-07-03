import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

class HomePageSearchBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
                width: 100.0.w,
                padding: EdgeInsets.symmetric(
                  horizontal: 5.0.w,
                  vertical: 2.0.h
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 80.0.w,
                      height: 6.0.h,
                      child: TextFormField(
                        
                        decoration: InputDecoration(
                          labelText: "Search",
                          prefixIcon: Icon(Icons.search, color: Color(0xFFFAD4B2)),
                          contentPadding: EdgeInsets.symmetric(
                                  vertical: 0,
                                  horizontal: 7.0.w
                                ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0.w),
                            borderSide: BorderSide(color: Color(0xFFFAD4B2))
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0.w),
                            borderSide: BorderSide(color: Colors.amber)
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0.w),
                            borderSide: BorderSide(color: Colors.white)
                          )
                        ),
                      ),
                    )
                  ],
                ),
              );
  }
}