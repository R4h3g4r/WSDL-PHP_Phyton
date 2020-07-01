function stringToISO88592Hex(string) {
  var hex = "";
  for(var i=0; i<string.length; i++)
    hex += byteToHex(UnicodeToISO88592(string.charCodeAt(i)));
  return hex;
}
function iso88592HexToString(hex) {
  var str="";
  var value = 0;
  for ( i=0; i<hex.length; i+=2) {
    value = 0;
    value = hexDigitToValue(hex.charCodeAt(i)) << 4;
    if(i+1 < hex.length)
      value += hexDigitToValue(hex.charCodeAt(i+1));
    str += String.fromCharCode(ISO88592ToUnicode( value ) );
  }
  return str;
}

// zamienia liczbe 1 bajtowa na odpowiednik hexowy
// var hexDigits = "0123456789ABCDEF";
var hexDigits = "0123456789abcdef";
function byteToHex(num) {
  if(num < 256) {
     m = num >> 4;
     l = num & 0x0F
     return hexDigits.charAt(m) + hexDigits.charAt(l);
  }
  else return "FF";
}

// przyjmuje jedna cyfre szesnastkowa 0-F, zwraca wartosc 0-15
function hexDigitToValue(hexDigit) {
  if (hexDigit>=0x30 && hexDigit<=0x39)  // cyfra
    return hexDigit-0x30;
  else if (hexDigit>=0x41 && hexDigit<=0x46) // A-F
    return hexDigit-0x41+0x0A;
  else if (hexDigit>=0x61 && hexDigit<=0x66) // a-f
    return hexDigit-0x61+0x0A;
  else
    return 0; // inne nieznane
}

// przyjmuje dwuznakowy ciag hex, zamienia na wartosc 0-255
function hexToByte(hex) {
  var value = 0;
  if(hex.length>0)
    value = hexDigitToValue(hex.charAt(0)) << 4;
  if (hex.length>1)
    value += hexDigitToValue(hex.charAt(1));
  return value;
}

// konwertuje kod znaku w Unicodzie do kodu w ISO-..-2, ale tylko dla polskich znaczkow
function UnicodeToISO88592(unicode) {
  if (unicode<128 ||                    // normalne znaki
    (unicode==0xD3 || unicode==0xF3 )) // u z kreska duze i male - zostaja na swoim miejscu
    return unicode;
  else if (unicode==260)//0x104)              // A z ogonkiem
    return 161;
  else if (unicode==0x105)              // a z ogonkiem
    return 177;
  else if (unicode==0x106)              // C z kreska
    return 198;
  else if (unicode==0x107)              // c z kreska
    return 230;
  else if (unicode==0x118)              // E z ogonkiem
    return 202;
  else if (unicode==0x119)              // e z ogonkiem
    return 234;
  else if (unicode==0x141)              // L przekreslone
    return 163;
  else if (unicode==0x142)              // l przekreslone
    return 179;
  else if (unicode==0x143)              // N z kreska
    return 209;
  else if (unicode==0x144)              // n z kreska
    return 241;
  else if (unicode==0x15a)              // S z kreska
    return 166;
  else if (unicode==0x15b)              // s z kreska
    return 182;
  else if (unicode==0x179)              // Z z kreska
    return 172;
  else if (unicode==0x17a)              // z z kreska
    return 188;
  else if (unicode==0x17b)              // Z z kropka
    return 175;
  else if (unicode==0x17c)              // z z kropka
    return 191;
  else // dla pozostalych znaczkow zwracamy ?
    return 0x3F;
}

// konwertuje kod znaku w ISO do kodu Unicode, ale tylko dla polskich znaczkow
function ISO88592ToUnicode(iso)
{
if (iso<128 ||                    // normalne znaki
            (iso==0xD3 || iso==0xF3 )) // u z kreska duze i male - zostaja na swoim miejscu
return iso;
else if (iso==161)              // A z ogonkiem
return 0x104;
else if (iso==177)              // a z ogonkiem
return 0x105;
else if (iso==198)              // C z kreska
return 0x106;
else if (iso==230)              // c z kreska
return 0x107;
else if (iso==202)              // E z ogonkiem
return 0x118;
else if (iso==234)              // e z ogonkiem
return 0x119;
else if (iso==163)              // L przekreslone
return 0x141;
else if (iso==179)              // l przekreslone
return 0x142;
else if (iso==209)              // N z kreska
return 0x143;
else if (iso==241)              // n z kreska
return 0x144;
else if (iso==166)              // S z kreska
return 0x15a;
else if (iso==182)              // s z kreska
return 0x15b;
else if (iso==172)              // Z z kreska
return 0x179;
else if (iso==188)              // z z kreska
return 0x17a;
else if (iso==175)              // Z z kropka
return 0x17b;
else if (iso==191)              // z z kropka
return 0x17c;
else // dla pozostalych znaczkow zwracamy ?
return 0x3F;

}
