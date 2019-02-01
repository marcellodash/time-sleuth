`timescale 1 ns / 1 ns

module char_rom (
    input clock,
    input [10:0] address,
    output [7:0] q
);

reg[7:0] q_reg;
reg[7:0] q_reg_2;

assign q = q_reg_2;

always @(posedge clock) begin
    case (address)
        // -- NUL: code x00
        0000: q_reg <= 8'b00000000; // 0
        0001: q_reg <= 8'b00000000; // 1
        0002: q_reg <= 8'b00000000; // 2
        0003: q_reg <= 8'b00000000; // 3
        0004: q_reg <= 8'b00000000; // 4
        0005: q_reg <= 8'b00000000; // 5
        0006: q_reg <= 8'b00000000; // 6
        0007: q_reg <= 8'b00000000; // 7
        0008: q_reg <= 8'b00000000; // 8
        0009: q_reg <= 8'b00000000; // 9
        0010: q_reg <= 8'b00000000; // a
        0011: q_reg <= 8'b00000000; // b
        0012: q_reg <= 8'b00000000; // c
        0013: q_reg <= 8'b00000000; // d
        0014: q_reg <= 8'b00000000; // e
        0015: q_reg <= 8'b00000000; // f
        // -- SOH: code x01
        0016: q_reg <= 8'b00000000; // 0
        0017: q_reg <= 8'b00000000; // 1
        0018: q_reg <= 8'b01111110; // 2  ******
        0019: q_reg <= 8'b10000001; // 3 *      *
        0020: q_reg <= 8'b10100101; // 4 * *  * *
        0021: q_reg <= 8'b10000001; // 5 *      *
        0022: q_reg <= 8'b10000001; // 6 *      *
        0023: q_reg <= 8'b10111101; // 7 * **** *
        0024: q_reg <= 8'b10011001; // 8 *  **  *
        0025: q_reg <= 8'b10000001; // 9 *      *
        0026: q_reg <= 8'b10000001; // a *      *
        0027: q_reg <= 8'b01111110; // b  ******
        0028: q_reg <= 8'b00000000; // c
        0029: q_reg <= 8'b00000000; // d
        0030: q_reg <= 8'b00000000; // e
        0031: q_reg <= 8'b00000000; // f
        // -- STX: code x02
        0032: q_reg <= 8'b00000000; // 0
        0033: q_reg <= 8'b00000000; // 1
        0034: q_reg <= 8'b01111110; // 2  ******
        0035: q_reg <= 8'b11111111; // 3 ********
        0036: q_reg <= 8'b11011011; // 4 ** ** **
        0037: q_reg <= 8'b11111111; // 5 ********
        0038: q_reg <= 8'b11111111; // 6 ********
        0039: q_reg <= 8'b11000011; // 7 **    **
        0040: q_reg <= 8'b11100111; // 8 ***  ***
        0041: q_reg <= 8'b11111111; // 9 ********
        0042: q_reg <= 8'b11111111; // a ********
        0043: q_reg <= 8'b01111110; // b  ******
        0044: q_reg <= 8'b00000000; // c
        0045: q_reg <= 8'b00000000; // d
        0046: q_reg <= 8'b00000000; // e
        0047: q_reg <= 8'b00000000; // f
        // -- ETX: code x03
        0048: q_reg <= 8'b00000000; // 0
        0049: q_reg <= 8'b00000000; // 1
        0050: q_reg <= 8'b00000000; // 2
        0051: q_reg <= 8'b00000000; // 3
        0052: q_reg <= 8'b01101100; // 4  ** **
        0053: q_reg <= 8'b11111110; // 5 *******
        0054: q_reg <= 8'b11111110; // 6 *******
        0055: q_reg <= 8'b11111110; // 7 *******
        0056: q_reg <= 8'b11111110; // 8 *******
        0057: q_reg <= 8'b01111100; // 9  *****
        0058: q_reg <= 8'b00111000; // a   ***
        0059: q_reg <= 8'b00010000; // b    *
        0060: q_reg <= 8'b00000000; // c
        0061: q_reg <= 8'b00000000; // d
        0062: q_reg <= 8'b00000000; // e
        0063: q_reg <= 8'b00000000; // f
        // -- EOT: code x04
        0064: q_reg <= 8'b00000000; // 0
        0065: q_reg <= 8'b00000000; // 1
        0066: q_reg <= 8'b00000000; // 2
        0067: q_reg <= 8'b00000000; // 3
        0068: q_reg <= 8'b00010000; // 4    *
        0069: q_reg <= 8'b00111000; // 5   ***
        0070: q_reg <= 8'b01111100; // 6  *****
        0071: q_reg <= 8'b11111110; // 7 *******
        0072: q_reg <= 8'b01111100; // 8  *****
        0073: q_reg <= 8'b00111000; // 9   ***
        0074: q_reg <= 8'b00010000; // a    *
        0075: q_reg <= 8'b00000000; // b
        0076: q_reg <= 8'b00000000; // c
        0077: q_reg <= 8'b00000000; // d
        0078: q_reg <= 8'b00000000; // e
        0079: q_reg <= 8'b00000000; // f
        // -- ENQ: code x05
        0080: q_reg <= 8'b00000000; // 0
        0081: q_reg <= 8'b00000000; // 1
        0082: q_reg <= 8'b00000000; // 2
        0083: q_reg <= 8'b00011000; // 3    **
        0084: q_reg <= 8'b00111100; // 4   ****
        0085: q_reg <= 8'b00111100; // 5   ****
        0086: q_reg <= 8'b11100111; // 6 ***  ***
        0087: q_reg <= 8'b11100111; // 7 ***  ***
        0088: q_reg <= 8'b11100111; // 8 ***  ***
        0089: q_reg <= 8'b00011000; // 9    **
        0090: q_reg <= 8'b00011000; // a    **
        0091: q_reg <= 8'b00111100; // b   ****
        0092: q_reg <= 8'b00000000; // c
        0093: q_reg <= 8'b00000000; // d
        0094: q_reg <= 8'b00000000; // e
        0095: q_reg <= 8'b00000000; // f
        // -- ACK: code x06
        0096: q_reg <= 8'b00000000; // 0
        0097: q_reg <= 8'b00000000; // 1
        0098: q_reg <= 8'b00000000; // 2
        0099: q_reg <= 8'b00011000; // 3    **
        0100: q_reg <= 8'b00111100; // 4   ****
        0101: q_reg <= 8'b01111110; // 5  ******
        0102: q_reg <= 8'b11111111; // 6 ********
        0103: q_reg <= 8'b11111111; // 7 ********
        0104: q_reg <= 8'b01111110; // 8  ******
        0105: q_reg <= 8'b00011000; // 9    **
        0106: q_reg <= 8'b00011000; // a    **
        0107: q_reg <= 8'b00111100; // b   ****
        0108: q_reg <= 8'b00000000; // c
        0109: q_reg <= 8'b00000000; // d
        0110: q_reg <= 8'b00000000; // e
        0111: q_reg <= 8'b00000000; // f
        // -- BEL: code x07
        0112: q_reg <= 8'b00000000; // 0
        0113: q_reg <= 8'b00000000; // 1
        0114: q_reg <= 8'b00000000; // 2
        0115: q_reg <= 8'b00000000; // 3
        0116: q_reg <= 8'b00000000; // 4
        0117: q_reg <= 8'b00000000; // 5
        0118: q_reg <= 8'b00011000; // 6    **
        0119: q_reg <= 8'b00111100; // 7   ****
        0120: q_reg <= 8'b00111100; // 8   ****
        0121: q_reg <= 8'b00011000; // 9    **
        0122: q_reg <= 8'b00000000; // a
        0123: q_reg <= 8'b00000000; // b
        0124: q_reg <= 8'b00000000; // c
        0125: q_reg <= 8'b00000000; // d
        0126: q_reg <= 8'b00000000; // e
        0127: q_reg <= 8'b00000000; // f
        // -- BS: code x08
        0128: q_reg <= 8'b11111111; // 0 ********
        0129: q_reg <= 8'b11111111; // 1 ********
        0130: q_reg <= 8'b11111111; // 2 ********
        0131: q_reg <= 8'b11111111; // 3 ********
        0132: q_reg <= 8'b11111111; // 4 ********
        0133: q_reg <= 8'b11111111; // 5 ********
        0134: q_reg <= 8'b11100111; // 6 ***  ***
        0135: q_reg <= 8'b11000011; // 7 **    **
        0136: q_reg <= 8'b11000011; // 8 **    **
        0137: q_reg <= 8'b11100111; // 9 ***  ***
        0138: q_reg <= 8'b11111111; // a ********
        0139: q_reg <= 8'b11111111; // b ********
        0140: q_reg <= 8'b11111111; // c ********
        0141: q_reg <= 8'b11111111; // d ********
        0142: q_reg <= 8'b11111111; // e ********
        0143: q_reg <= 8'b11111111; // f ********
        // -- HT: code x09
        0144: q_reg <= 8'b00000000; // 0
        0145: q_reg <= 8'b00000000; // 1
        0146: q_reg <= 8'b00000000; // 2
        0147: q_reg <= 8'b00000000; // 3
        0148: q_reg <= 8'b00000000; // 4
        0149: q_reg <= 8'b00111100; // 5   ****
        0150: q_reg <= 8'b01100110; // 6  **  **
        0151: q_reg <= 8'b01000010; // 7  *    *
        0152: q_reg <= 8'b01000010; // 8  *    *
        0153: q_reg <= 8'b01100110; // 9  **  **
        0154: q_reg <= 8'b00111100; // a   ****
        0155: q_reg <= 8'b00000000; // b
        0156: q_reg <= 8'b00000000; // c
        0157: q_reg <= 8'b00000000; // d
        0158: q_reg <= 8'b00000000; // e
        0159: q_reg <= 8'b00000000; // f
        // -- LF: code x0a
        0160: q_reg <= 8'b11111111; // 0 ********
        0161: q_reg <= 8'b11111111; // 1 ********
        0162: q_reg <= 8'b11111111; // 2 ********
        0163: q_reg <= 8'b11111111; // 3 ********
        0164: q_reg <= 8'b11111111; // 4 ********
        0165: q_reg <= 8'b11000011; // 5 **    **
        0166: q_reg <= 8'b10011001; // 6 *  **  *
        0167: q_reg <= 8'b10111101; // 7 * **** *
        0168: q_reg <= 8'b10111101; // 8 * **** *
        0169: q_reg <= 8'b10011001; // 9 *  **  *
        0170: q_reg <= 8'b11000011; // a **    **
        0171: q_reg <= 8'b11111111; // b ********
        0172: q_reg <= 8'b11111111; // c ********
        0173: q_reg <= 8'b11111111; // d ********
        0174: q_reg <= 8'b11111111; // e ********
        0175: q_reg <= 8'b11111111; // f ********
        // -- code x0b
        0176: q_reg <= 8'b00000000; // 0
        0177: q_reg <= 8'b00000000; // 1
        0178: q_reg <= 8'b00011110; // 2    ****
        0179: q_reg <= 8'b00001110; // 3     ***
        0180: q_reg <= 8'b00011010; // 4    ** *
        0181: q_reg <= 8'b00110010; // 5   **  *
        0182: q_reg <= 8'b01111000; // 6  ****
        0183: q_reg <= 8'b11001100; // 7 **  **
        0184: q_reg <= 8'b11001100; // 8 **  **
        0185: q_reg <= 8'b11001100; // 9 **  **
        0186: q_reg <= 8'b11001100; // a **  **
        0187: q_reg <= 8'b01111000; // b  ****
        0188: q_reg <= 8'b00000000; // c
        0189: q_reg <= 8'b00000000; // d
        0190: q_reg <= 8'b00000000; // e
        0191: q_reg <= 8'b00000000; // f
        // -- code x0c
        0192: q_reg <= 8'b00000000; // 0
        0193: q_reg <= 8'b00000000; // 1
        0194: q_reg <= 8'b00111100; // 2   ****
        0195: q_reg <= 8'b01100110; // 3  **  **
        0196: q_reg <= 8'b01100110; // 4  **  **
        0197: q_reg <= 8'b01100110; // 5  **  **
        0198: q_reg <= 8'b01100110; // 6  **  **
        0199: q_reg <= 8'b00111100; // 7   ****
        0200: q_reg <= 8'b00011000; // 8    **
        0201: q_reg <= 8'b01111110; // 9  ******
        0202: q_reg <= 8'b00011000; // a    **
        0203: q_reg <= 8'b00011000; // b    **
        0204: q_reg <= 8'b00000000; // c
        0205: q_reg <= 8'b00000000; // d
        0206: q_reg <= 8'b00000000; // e
        0207: q_reg <= 8'b00000000; // f
        // -- code x0d
        0208: q_reg <= 8'b00000000; // 0
        0209: q_reg <= 8'b00000000; // 1
        0210: q_reg <= 8'b00111111; // 2   ******
        0211: q_reg <= 8'b00110011; // 3   **  **
        0212: q_reg <= 8'b00111111; // 4   ******
        0213: q_reg <= 8'b00110000; // 5   **
        0214: q_reg <= 8'b00110000; // 6   **
        0215: q_reg <= 8'b00110000; // 7   **
        0216: q_reg <= 8'b00110000; // 8   **
        0217: q_reg <= 8'b01110000; // 9  ***
        0218: q_reg <= 8'b11110000; // a ****
        0219: q_reg <= 8'b11100000; // b ***
        0220: q_reg <= 8'b00000000; // c
        0221: q_reg <= 8'b00000000; // d
        0222: q_reg <= 8'b00000000; // e
        0223: q_reg <= 8'b00000000; // f
        // -- code x0e
        0224: q_reg <= 8'b00000000; // 0
        0225: q_reg <= 8'b00000000; // 1
        0226: q_reg <= 8'b01111111; // 2  *******
        0227: q_reg <= 8'b01100011; // 3  **   **
        0228: q_reg <= 8'b01111111; // 4  *******
        0229: q_reg <= 8'b01100011; // 5  **   **
        0230: q_reg <= 8'b01100011; // 6  **   **
        0231: q_reg <= 8'b01100011; // 7  **   **
        0232: q_reg <= 8'b01100011; // 8  **   **
        0233: q_reg <= 8'b01100111; // 9  **  ***
        0234: q_reg <= 8'b11100111; // a ***  ***
        0235: q_reg <= 8'b11100110; // b ***  **
        0236: q_reg <= 8'b11000000; // c **
        0237: q_reg <= 8'b00000000; // d
        0238: q_reg <= 8'b00000000; // e
        0239: q_reg <= 8'b00000000; // f
        // -- code x0f
        0240: q_reg <= 8'b00000000; // 0
        0241: q_reg <= 8'b00000000; // 1
        0242: q_reg <= 8'b00000000; // 2
        0243: q_reg <= 8'b00011000; // 3    **
        0244: q_reg <= 8'b00011000; // 4    **
        0245: q_reg <= 8'b11011011; // 5 ** ** **
        0246: q_reg <= 8'b00111100; // 6   ****
        0247: q_reg <= 8'b11100111; // 7 ***  ***
        0248: q_reg <= 8'b00111100; // 8   ****
        0249: q_reg <= 8'b11011011; // 9 ** ** **
        0250: q_reg <= 8'b00011000; // a    **
        0251: q_reg <= 8'b00011000; // b    **
        0252: q_reg <= 8'b00000000; // c
        0253: q_reg <= 8'b00000000; // d
        0254: q_reg <= 8'b00000000; // e
        0255: q_reg <= 8'b00000000; // f
        // -- code x10
        0256: q_reg <= 8'b00000000; // 0
        0257: q_reg <= 8'b10000000; // 1 *
        0258: q_reg <= 8'b11000000; // 2 **
        0259: q_reg <= 8'b11100000; // 3 ***
        0260: q_reg <= 8'b11110000; // 4 ****
        0261: q_reg <= 8'b11111000; // 5 *****
        0262: q_reg <= 8'b11111100; // 6 ******
        0263: q_reg <= 8'b11111110; // 7 *******
        0264: q_reg <= 8'b11111110; // 8 *******
        0265: q_reg <= 8'b11111100; // 9 ******
        0266: q_reg <= 8'b11111000; // a *****
        0267: q_reg <= 8'b11110000; // b ****
        0268: q_reg <= 8'b11100000; // c ***
        0269: q_reg <= 8'b11000000; // d **
        0270: q_reg <= 8'b10000000; // e *
        0271: q_reg <= 8'b00000000; // f
        // -- code x11
        0272: q_reg <= 8'b00000000; // 0
        0273: q_reg <= 8'b00000001; // 1        *
        0274: q_reg <= 8'b00000011; // 2       **
        0275: q_reg <= 8'b00000111; // 3      ***
        0276: q_reg <= 8'b00001111; // 4     ****
        0277: q_reg <= 8'b00011111; // 5    *****
        0278: q_reg <= 8'b00111111; // 6   ******
        0279: q_reg <= 8'b01111111; // 7  *******
        0280: q_reg <= 8'b01111111; // 8  *******
        0281: q_reg <= 8'b00111111; // 9   ******
        0282: q_reg <= 8'b00011111; // a    *****
        0283: q_reg <= 8'b00001111; // b     ****
        0284: q_reg <= 8'b00000111; // c      ***
        0285: q_reg <= 8'b00000011; // d       **
        0286: q_reg <= 8'b00000001; // e        *
        0287: q_reg <= 8'b00000000; // f
        // -- code x12
        0288: q_reg <= 8'b00000000; // 0
        0289: q_reg <= 8'b00000000; // 1
        0290: q_reg <= 8'b00011000; // 2    **
        0291: q_reg <= 8'b00111100; // 3   ****
        0292: q_reg <= 8'b01111110; // 4  ******
        0293: q_reg <= 8'b00011000; // 5    **
        0294: q_reg <= 8'b00011000; // 6    **
        0295: q_reg <= 8'b00011000; // 7    **
        0296: q_reg <= 8'b01111110; // 8  ******
        0297: q_reg <= 8'b00111100; // 9   ****
        0298: q_reg <= 8'b00011000; // a    **
        0299: q_reg <= 8'b00000000; // b
        0300: q_reg <= 8'b00000000; // c
        0301: q_reg <= 8'b00000000; // d
        0302: q_reg <= 8'b00000000; // e
        0303: q_reg <= 8'b00000000; // f
        // -- code x13 reassigned to special forward slash
        0304: q_reg <= 8'b00000001; // 0        *
        0305: q_reg <= 8'b00000001; // 1        *
        0306: q_reg <= 8'b00000010; // 2       *
        0307: q_reg <= 8'b00000010; // 3       *
        0308: q_reg <= 8'b00000100; // 4      *
        0309: q_reg <= 8'b00000100; // 5      *
        0310: q_reg <= 8'b00001000; // 6     *
        0311: q_reg <= 8'b00001000; // 7     *
        0312: q_reg <= 8'b00010000; // 8    *
        0313: q_reg <= 8'b00010000; // 9    *
        0314: q_reg <= 8'b00100000; // a   *
        0315: q_reg <= 8'b00100000; // b   *
        0316: q_reg <= 8'b01000000; // c  *
        0317: q_reg <= 8'b01000000; // d  *
        0318: q_reg <= 8'b10000000; // e *
        0319: q_reg <= 8'b10000000; // f *
        // -- code x14
        0320: q_reg <= 8'b00000000; // 0
        0321: q_reg <= 8'b00000000; // 1
        0322: q_reg <= 8'b00000000; // 2
        0323: q_reg <= 8'b00000000; // 3
        0324: q_reg <= 8'b00000000; // 4
        0325: q_reg <= 8'b00000000; // 5
        0326: q_reg <= 8'b00000000; // 6
        0327: q_reg <= 8'b00000000; // 7
        0328: q_reg <= 8'b00000000; // 8
        0329: q_reg <= 8'b00000000; // 9
        0330: q_reg <= 8'b00000000; // a
        0331: q_reg <= 8'b00000000; // b
        0332: q_reg <= 8'b00000000; // c
        0333: q_reg <= 8'b00000000; // d
        0334: q_reg <= 8'b00000000; // e
        0335: q_reg <= 8'b11111111; // f ********
        // -- code x15
        0336: q_reg <= 8'b10000000; // 0 *
        0337: q_reg <= 8'b10000000; // 1 *
        0338: q_reg <= 8'b01000000; // 2  *
        0339: q_reg <= 8'b01000000; // 3  *
        0340: q_reg <= 8'b00100000; // 4   *
        0341: q_reg <= 8'b00100000; // 5   *
        0342: q_reg <= 8'b00010000; // 6    *
        0343: q_reg <= 8'b00010000; // 7    *
        0344: q_reg <= 8'b00001000; // 8     *
        0345: q_reg <= 8'b00001000; // 9     *
        0346: q_reg <= 8'b00000100; // a      *
        0347: q_reg <= 8'b00000100; // b      *
        0348: q_reg <= 8'b00000010; // c       *
        0349: q_reg <= 8'b00000010; // d       *
        0350: q_reg <= 8'b00000001; // e        *
        0351: q_reg <= 8'b00000001; // f        *
        // -- code x16
        0352: q_reg <= 8'b00000001; // 0        *
        0353: q_reg <= 8'b00000001; // 1        *
        0354: q_reg <= 8'b00000010; // 2       *
        0355: q_reg <= 8'b00000010; // 3       *
        0356: q_reg <= 8'b00000100; // 4      *
        0357: q_reg <= 8'b00000100; // 5      *
        0358: q_reg <= 8'b00001000; // 6     *
        0359: q_reg <= 8'b00001000; // 7     *
        0360: q_reg <= 8'b00010000; // 8    *
        0361: q_reg <= 8'b00010000; // 9    *
        0362: q_reg <= 8'b00100000; // a   *
        0363: q_reg <= 8'b00100000; // b   *
        0364: q_reg <= 8'b01000000; // c  *
        0365: q_reg <= 8'b01000000; // d  *
        0366: q_reg <= 8'b10000000; // e *
        0367: q_reg <= 8'b11111111; // f ********
        // -- code x17
        0368: q_reg <= 8'b00000000; // 0 
        0369: q_reg <= 8'b10000000; // 1 *
        0370: q_reg <= 8'b01000000; // 2  *
        0371: q_reg <= 8'b00100000; // 3   *
        0372: q_reg <= 8'b00010011; // 4    *  **
        0373: q_reg <= 8'b00001100; // 5     **
        0374: q_reg <= 8'b00000000; // 6
        0375: q_reg <= 8'b00000000; // 7
        0376: q_reg <= 8'b00000000; // 8
        0377: q_reg <= 8'b00000000; // 9
        0378: q_reg <= 8'b00000000; // a
        0379: q_reg <= 8'b00000000; // b
        0380: q_reg <= 8'b00000000; // c
        0381: q_reg <= 8'b00000000; // d
        0382: q_reg <= 8'b00000000; // e
        0383: q_reg <= 8'b00000000; // f
        // -- code x18
        0384: q_reg <= 8'b00000011; // 0       **
        0385: q_reg <= 8'b00001101; // 1     ** *
        0386: q_reg <= 8'b00110010; // 2   **  *
        0387: q_reg <= 8'b11000010; // 3 **    *
        0388: q_reg <= 8'b00000100; // 4      *
        0389: q_reg <= 8'b00000100; // 5      *
        0390: q_reg <= 8'b00001000; // 6     *
        0391: q_reg <= 8'b00001000; // 7     *
        0392: q_reg <= 8'b00010000; // 8    *
        0393: q_reg <= 8'b00010000; // 9    *
        0394: q_reg <= 8'b00100000; // a   *
        0395: q_reg <= 8'b00100000; // b   *
        0396: q_reg <= 8'b01000000; // c  *
        0397: q_reg <= 8'b01000000; // d  *
        0398: q_reg <= 8'b10000000; // e *
        0399: q_reg <= 8'b10000000; // f *
        // -- code x19
        0400: q_reg <= 8'b00000000; // 0
        0401: q_reg <= 8'b00000000; // 1
        0402: q_reg <= 8'b00011000; // 2    **
        0403: q_reg <= 8'b00011000; // 3    **
        0404: q_reg <= 8'b00011000; // 4    **
        0405: q_reg <= 8'b00011000; // 5    **
        0406: q_reg <= 8'b00011000; // 6    **
        0407: q_reg <= 8'b00011000; // 7    **
        0408: q_reg <= 8'b00011000; // 8    **
        0409: q_reg <= 8'b01111110; // 9  ******
        0410: q_reg <= 8'b00111100; // a   ****
        0411: q_reg <= 8'b00011000; // b    **
        0412: q_reg <= 8'b00000000; // c
        0413: q_reg <= 8'b00000000; // d
        0414: q_reg <= 8'b00000000; // e
        0415: q_reg <= 8'b00000000; // f
        // -- code x1a
        0416: q_reg <= 8'b00000000; // 0
        0417: q_reg <= 8'b00000000; // 1
        0418: q_reg <= 8'b00000000; // 2
        0419: q_reg <= 8'b00000000; // 3
        0420: q_reg <= 8'b00000000; // 4
        0421: q_reg <= 8'b00011000; // 5    **
        0422: q_reg <= 8'b00001100; // 6     **
        0423: q_reg <= 8'b11111110; // 7 *******
        0424: q_reg <= 8'b00001100; // 8     **
        0425: q_reg <= 8'b00011000; // 9    **
        0426: q_reg <= 8'b00000000; // a
        0427: q_reg <= 8'b00000000; // b
        0428: q_reg <= 8'b00000000; // c
        0429: q_reg <= 8'b00000000; // d
        0430: q_reg <= 8'b00000000; // e
        0431: q_reg <= 8'b00000000; // f
        // -- code x1b
        0432: q_reg <= 8'b00000000; // 0
        0433: q_reg <= 8'b00000000; // 1
        0434: q_reg <= 8'b00000000; // 2
        0435: q_reg <= 8'b00000000; // 3
        0436: q_reg <= 8'b00000000; // 4
        0437: q_reg <= 8'b00110000; // 5   **
        0438: q_reg <= 8'b01100000; // 6  **
        0439: q_reg <= 8'b11111110; // 7 *******
        0440: q_reg <= 8'b01100000; // 8  **
        0441: q_reg <= 8'b00110000; // 9   **
        0442: q_reg <= 8'b00000000; // a
        0443: q_reg <= 8'b00000000; // b
        0444: q_reg <= 8'b00000000; // c
        0445: q_reg <= 8'b00000000; // d
        0446: q_reg <= 8'b00000000; // e
        0447: q_reg <= 8'b00000000; // f
        // -- code x1c
        0448: q_reg <= 8'b00000000; // 0
        0449: q_reg <= 8'b00000000; // 1
        0450: q_reg <= 8'b00000000; // 2
        0451: q_reg <= 8'b00000000; // 3
        0452: q_reg <= 8'b00000000; // 4
        0453: q_reg <= 8'b00000000; // 5
        0454: q_reg <= 8'b11000000; // 6 **
        0455: q_reg <= 8'b11000000; // 7 **
        0456: q_reg <= 8'b11000000; // 8 **
        0457: q_reg <= 8'b11111110; // 9 *******
        0458: q_reg <= 8'b00000000; // a
        0459: q_reg <= 8'b00000000; // b
        0460: q_reg <= 8'b00000000; // c
        0461: q_reg <= 8'b00000000; // d
        0462: q_reg <= 8'b00000000; // e
        0463: q_reg <= 8'b00000000; // f
        // -- code x1d
        0464: q_reg <= 8'b00000000; // 0
        0465: q_reg <= 8'b00000000; // 1
        0466: q_reg <= 8'b00000000; // 2
        0467: q_reg <= 8'b00000000; // 3
        0468: q_reg <= 8'b00000000; // 4
        0469: q_reg <= 8'b00100100; // 5   *  *
        0470: q_reg <= 8'b01100110; // 6  **  **
        0471: q_reg <= 8'b11111111; // 7 ********
        0472: q_reg <= 8'b01100110; // 8  **  **
        0473: q_reg <= 8'b00100100; // 9   *  *
        0474: q_reg <= 8'b00000000; // a
        0475: q_reg <= 8'b00000000; // b
        0476: q_reg <= 8'b00000000; // c
        0477: q_reg <= 8'b00000000; // d
        0478: q_reg <= 8'b00000000; // e
        0479: q_reg <= 8'b00000000; // f
        // -- code x1e
        0480: q_reg <= 8'b00000000; // 0
        0481: q_reg <= 8'b00000000; // 1
        0482: q_reg <= 8'b00000000; // 2
        0483: q_reg <= 8'b00000000; // 3
        0484: q_reg <= 8'b00010000; // 4    *
        0485: q_reg <= 8'b00111000; // 5   ***
        0486: q_reg <= 8'b00111000; // 6   ***
        0487: q_reg <= 8'b01111100; // 7  *****
        0488: q_reg <= 8'b01111100; // 8  *****
        0489: q_reg <= 8'b11111110; // 9 *******
        0490: q_reg <= 8'b11111110; // a *******
        0491: q_reg <= 8'b00000000; // b
        0492: q_reg <= 8'b00000000; // c
        0493: q_reg <= 8'b00000000; // d
        0494: q_reg <= 8'b00000000; // e
        0495: q_reg <= 8'b00000000; // f
        // -- code x1f
        0496: q_reg <= 8'b00000000; // 0
        0497: q_reg <= 8'b00000000; // 1
        0498: q_reg <= 8'b00000000; // 2
        0499: q_reg <= 8'b00000000; // 3
        0500: q_reg <= 8'b11111110; // 4 *******
        0501: q_reg <= 8'b11111110; // 5 *******
        0502: q_reg <= 8'b01111100; // 6  *****
        0503: q_reg <= 8'b01111100; // 7  *****
        0504: q_reg <= 8'b00111000; // 8   ***
        0505: q_reg <= 8'b00111000; // 9   ***
        0506: q_reg <= 8'b00010000; // a    *
        0507: q_reg <= 8'b00000000; // b
        0508: q_reg <= 8'b00000000; // c
        0509: q_reg <= 8'b00000000; // d
        0510: q_reg <= 8'b00000000; // e
        0511: q_reg <= 8'b00000000; // f
        `include "font/8x16-font.v"
    endcase
    q_reg_2 <= q_reg;
end
endmodule
