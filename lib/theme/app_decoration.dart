import 'package:flutter/material.dart';
import 'package:social_template/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get gradientBlack9007fGray40000 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.black9007f,
            ColorConstant.gray40000,
          ],
        ),
      );
  static BoxDecoration get gradientGray40000Black900ad => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.49,
            0,
          ),
          end: Alignment(
            0.49,
            1,
          ),
          colors: [
            ColorConstant.gray40000,
            ColorConstant.black900Ad,
          ],
        ),
      );
  static BoxDecoration get gradientWhiteA70000Black900ad => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.49,
            0,
          ),
          end: Alignment(
            0.49,
            1,
          ),
          colors: [
            ColorConstant.whiteA70000,
            ColorConstant.black900Ad,
          ],
        ),
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillIndigo50 => BoxDecoration(
        color: ColorConstant.indigo50,
      );
  static BoxDecoration get gradientBlack9009eBlack9009e => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.black9009e,
            ColorConstant.black9009e,
          ],
        ),
      );
  static BoxDecoration get gradientBlack9009eBlack9009e3 => BoxDecoration(
        color: ColorConstant.whiteA700,
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1.24,
          ),
          colors: [
            ColorConstant.black9009e,
            ColorConstant.black9009e,
          ],
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get outlineDeeppurpleA200 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.deepPurpleA200,
          width: getHorizontalSize(
            1.50,
          ),
        ),
      );
  static BoxDecoration get outlineDeeppurpleA20033 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.deepPurpleA20033,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              -3,
            ),
          ),
        ],
      );
  static BoxDecoration get gradientBlack9009eBlack9009e1 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1.24,
          ),
          colors: [
            ColorConstant.black9009e,
            ColorConstant.black9009e,
          ],
        ),
      );
  static BoxDecoration get gradientBlack9009eBlack9009e2 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.black9009e,
            ColorConstant.black9009e,
          ],
        ),
      );
  static BoxDecoration get fillBlack90087 => BoxDecoration(
        color: ColorConstant.black90087,
      );
  static BoxDecoration get fillDeeppurpleA200 => BoxDecoration(
        color: ColorConstant.deepPurpleA200,
      );
  static BoxDecoration get outlineDeeppurpleA2001 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.deepPurpleA200,
          width: getHorizontalSize(
            2.00,
          ),
        ),
      );
  static BoxDecoration get outlineBlack90019 => BoxDecoration(
        color: ColorConstant.deepPurpleA200,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90019,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              2,
              1,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderBL15 = BorderRadius.only(
    topRight: Radius.circular(
      getHorizontalSize(
        15.00,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        15.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        15.00,
      ),
    ),
  );

  static BorderRadius customBorderTL30 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        30.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        30.00,
      ),
    ),
  );

  static BorderRadius customBorderTL12 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        12.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        12.00,
      ),
    ),
  );

  static BorderRadius customBorderTL15 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        15.00,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        15.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        15.00,
      ),
    ),
  );

  static BorderRadius roundedBorder7 = BorderRadius.circular(
    getHorizontalSize(
      7.00,
    ),
  );

  static BorderRadius circleBorder25 = BorderRadius.circular(
    getHorizontalSize(
      25.00,
    ),
  );

  static BorderRadius roundedBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15.00,
    ),
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    getHorizontalSize(
      12.00,
    ),
  );

  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4.00,
    ),
  );

  static BorderRadius circleBorder40 = BorderRadius.circular(
    getHorizontalSize(
      40.00,
    ),
  );

  static BorderRadius circleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );

  static BorderRadius circleBorder32 = BorderRadius.circular(
    getHorizontalSize(
      32.00,
    ),
  );

  static BorderRadius customBorderLR15 = BorderRadius.only(
    topRight: Radius.circular(
      getHorizontalSize(
        15.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        15.00,
      ),
    ),
  );

  static BorderRadius circleBorder60 = BorderRadius.circular(
    getHorizontalSize(
      60.00,
    ),
  );

  static BorderRadius customBorderTL151 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        15.00,
      ),
    ),
  );

  static BorderRadius customBorderBL151 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        15.00,
      ),
    ),
  );
}
