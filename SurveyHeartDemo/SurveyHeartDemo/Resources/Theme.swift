

import Foundation
import SwiftUI

enum Fonts {
    
    case largeTitle
    case MediumTitle
    case Title1
    case Title2
    case Title3
    case Headline
    case Headline1
    case Headline2
    case Body
    case Callout
    case Callout1
    case Subhead
    case Footnote
    case Caption1
    case Caption2
    case Title4
    case BoldHeadline
    case BoldHeadline1
    case tab
    case largeTitleSemi
    case TitleSemi
    
    var value: Font {
        switch(self){
        case .largeTitle:
            return Font.custom("Poppins-Regular", size: 34)
        case .MediumTitle:
            return Font.custom("Poppins-Regular", size: 14)
        case .Title1:
            return Font.custom("Poppins-SemiBold", size: 30)
        case .Title2:
            return Font.custom("Poppins-Regular", size: 22)
        case .Title3:
            return Font.custom("Poppins-Regular", size: 20)
        case .Headline:
            return Font.custom("Poppins-Medium", size: 18)
        case .Headline1:
            return Font.custom("Poppins-Medium", size: 22)
        case .Headline2:
            return Font.custom("Poppins-Medium", size: 24)
        case .Body:
            return Font.custom("Poppins-Medium", size: 15)
        case .Title4:
            return Font.custom("Poppins-Medium", size: 14)
        case .Callout:
            return Font.custom("Poppins-Medium", size: 18)
        case .Callout1:
            return Font.custom("Poppins-Regular", size: 16)
        case .Subhead:
            return Font.custom("Poppins-Regular", size: 14)
        case .Footnote:
            return Font.custom("Poppins-Regular", size: 13)
        case .Caption1:
            return Font.custom("Poppins-Medium", size: 12)
        case .Caption2:
            return Font.custom("Poppins-Regular", size: 11)
        case .BoldHeadline:
            return Font.custom("Poppins-Bold", size: 16)
        case .BoldHeadline1:
            return Font.custom("Poppins-Bold", size: 18)
        case .tab:
            return Font.custom("Poppins-Bold", size: 15)
        case .largeTitleSemi:
            return Font.custom("Poppins-SemiBold", size: 30)
        case .TitleSemi:
            return Font.custom("Poppins-SemiBold", size: 14)
        }
    }
}



final class Theme {

    // colors
    static var primaryColor: Color = Color(hex: 0x0188AC)
    static var labelColor: Color = Color(hex: 0x707070)
    static var labelColor2: Color = Color(hex: 0x131314)
    static var labelPlaceholderColor: Color = Color(hex: 0x6D6D6D)
    static var labelPlaceholderColor1: Color = Color(hex: 0x808080)
    static var whiteColor: Color = Color(hex: 0xFFFFFF)
    static var blackColor: Color = Color(hex: 0x000000)
    static var secondaryColor: Color = Color(hex: 0x032738)
    static var searchBarColor: Color = Color(hex: 0x707070)
    static var secondaryBackgroundColor = Color(hex: 0xEEEEEE)
    static var shadowBorderColor = Color(hex: 0xE0E0E1)
    static var labelColor3 = Color(hex: 0x636569)
    static var criticalColor: Color = Color(hex: 0xFF3200)
    static var teritoryColor: Color = Color(hex: 0xDDD4D0)
    static var dotColor: Color = Color(hex: 0xEED63A)
    static var dropShadowColor: Color = Color(hex: 0x00000029)
    static var facebookBg: Color = Color(hex: 0x3b5998)
    static var instagramBg: Color = Color(hex: 0xC13584)
    static var twitterBg: Color = Color(hex: 0x00acee)
    static var linkedInBg: Color = Color(hex: 0x0e76a8)
    
    //Fonts
    static var largeTitle: Font = Fonts.largeTitle.value
    static var MediumTitle: Font = Fonts.MediumTitle.value
    static var Title1: Font = Fonts.Title1.value
    static var Title2: Font = Fonts.Title2.value
    static var Title3: Font = Fonts.Title3.value
    static var Title4: Font = Fonts.Title4.value
    static var Headline: Font = Fonts.Headline.value
    static var Headline1: Font = Fonts.Headline1.value
    static var Headline2: Font = Fonts.Headline2.value
    static var Body: Font = Fonts.Body.value
    static var Callout: Font = Fonts.Callout.value
    static var Callout1: Font = Fonts.Callout1.value
    static var Subhead: Font = Fonts.Subhead.value
    static var Footnote: Font = Fonts.Footnote.value
    static var Caption1: Font = Fonts.Caption1.value
    static var Caption2: Font = Fonts.Caption2.value
    static var tab: Font = Fonts.tab.value
    static var BoldHeadline1: Font = Fonts.BoldHeadline1.value
    static var BoldHeadline: Font = Fonts.BoldHeadline.value
    static var largeTitleSemi: Font = Fonts.largeTitleSemi.value
    static var TitleSemi: Font = Fonts.TitleSemi.value
    

}
