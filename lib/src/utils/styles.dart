import 'package:flutter_web/material.dart';
import 'package:flutter_web/cupertino.dart';

import './custom_colors.dart';


//input styles
const InputBorder ryInputBorder = InputBorder.none;
const EdgeInsets ryInputPadding = EdgeInsets.only(top: 4.0, left: 14.00, right: 14.0, bottom: 4.0);
const TextStyle ryInputLabelStyle = TextStyle(color: customPrimary, fontSize: 16.0);
const TextStyle ryRadioLabelStyle = TextStyle(color: CustomColors.colorPrimary90, fontSize: 16.0);
const TextStyle ryPickerLabelStyle = ryInputLabelStyle;
const TextStyle ryPickerTextStyle = TextStyle(color: CupertinoColors.inactiveGray, fontSize: 16.0);

//text styles
const Color ryLightTxtOnDark = CustomColors.colorWhite;
const TextStyle ryLightHeadlineOnDark = TextStyle(fontSize: 20.0, color: CustomColors.colorWhite, fontWeight: FontWeight.w600);
const TextStyle ryExtraSmallLabel = TextStyle(fontSize: 10.0, height: 1, color: Color(0xFF637085));
const TextStyle rySmallLabel = TextStyle(fontSize: 11.0, height: 1.2, color: Color(0xFF637085)); //customPrimary[400]
const TextStyle rySmallBoldLabelSmallScreen = TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600);
const TextStyle rySmallBoldLabel = TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600);
const TextStyle rySmallText = TextStyle(fontSize: 12.0, height: 1.3);
const TextStyle rySmallTextTight = TextStyle(fontSize: 12.0, height: 1);
const TextStyle ryMediumText = TextStyle(fontSize: 14.0, height: 1.1);
const TextStyle ryMediumTextBold = TextStyle(fontSize: 14.0, height: 1.1, fontWeight: FontWeight.w600);
const TextStyle ryLargeText = TextStyle(fontSize: 16.0, height: 1.1);
const TextStyle ryLargeLightTextSmallScreen = TextStyle(fontSize: 14.0, height: 1, color: CustomColors.colorPrimary70);
const TextStyle ryLargeLightText = TextStyle(fontSize: 16.0, height: 1.1, color: CustomColors.colorPrimary70);
const TextStyle ryHeadlineTextSmallScreen = TextStyle(fontSize: 17.0, color: CustomColors.colorBlue, height: 1);
const TextStyle ryHeadlineText = TextStyle(fontSize: 20.0, color: CustomColors.colorBlue, height: 1.1);
const TextStyle ryCtaHeadlineText = TextStyle(fontSize: 18.0, color: customPrimary, height: 1.1);
const TextStyle ryCtaHeadline2Text = TextStyle(fontSize: 16.0, color: CustomColors.colorBlue, height: 1.1);
const TextStyle ryMediumTextNote = TextStyle(fontSize: 14.0, height: 1.1, fontStyle: FontStyle.italic, color: Color(0xFF828d9d)); //customPrimary[300]
const TextStyle ryAppBarHeader = TextStyle(fontSize: 23);



//button style
const Color ryButtonTxtColor = ryLightTxtOnDark;
const RoundedRectangleBorder ryRoundedBorder = RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3.0)));



//presentation
const TextStyle ryHeadlineLargeText = TextStyle(fontSize: 48.0, color: CustomColors.colorBlue, height: 1.1);
const EdgeInsets slidePadding = EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 60);

TextStyle getHeadlineTextStyle({@required double deviceWidth}) {
  return TextStyle(fontSize: deviceWidth * .04, color: CustomColors.colorBlue, height: 1.1);
}

TextStyle getBulletTextStyle({@required double deviceWidth}) {
  return TextStyle(fontSize: deviceWidth * .03, height: 1.7);
}

EdgeInsets getSlidePadding({@required double deviceWidth}) {
  return EdgeInsets.only(top: deviceWidth * .04, right: deviceWidth * .05, left: deviceWidth * .05);
}