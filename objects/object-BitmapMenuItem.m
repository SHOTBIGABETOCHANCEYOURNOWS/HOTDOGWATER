/*

 HOT DOG Linux

 Copyright (c) 2020 Arthur Choung. All rights reserved.

 Email: arthur -at- hotdoglinux.com

 This file is part of HOT DOG Linux.

 HOT DOG Linux is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <https://www.gnu.org/licenses/>.

 */

#import "HOTDOG.h"

static char *hotdogPalette =
"b #000000\n"
". #EECC99\n"
"r #BB3333\n"
;
static char *hotdogHighlightedPalette =
"b #FFFFFF\n"
"r #EECC99\n"
". #BB3333\n"
;
/*
static char *hotdogHighlightedPalette =
"b #FFFFFF\n"
"r #E3C597\n"
". #BE2E36\n"
;
*/

static char *hotdogPixels =
"    bb             \n"
"   b..b            \n"
" rrrr..b           \n"
"rrbbrr..b          \n"
"rb..brr..b         \n"
"b....brr..bb       \n"
"b.....brr...bb     \n"
"b......brrr...bbb  \n"
"b.......bbrrr....b \n"
" b........bbrrrrr  \n"
"  b.........bbbrrr \n"
"   b...........brrr\n"
"    bb.........brrr\n"
"      bb.......brrr\n"
"        bb....brrr \n"
"          bbbb     \n"
;

static char *bananaPalette =
"b #000000\n"
"w #ffffff\n"
"y #ffff00\n"
;

static char *bananaHighlightedPalette =
"b #000000\n"
"w #ffff00\n"
"y #ffff00\n"
;


static char *bananaPixels =
".................\n"
"........b........\n"
".......bwb.......\n"
"......bwyyb......\n"
".....bwyyyyb.....\n"
".....bwyyyyb.....\n"
".....bwbybyb.....\n"
".....bwbybyb.....\n"
".....bwbybyb.....\n"
".....bwyyyyb.....\n"
".b..bbwyyyybb..b.\n"
"b.bbbwyybyyybbbyb\n"
"byyyyyyybyyyyyyyb\n"
".byyyyybbbyyyyyb.\n"
"..bbbbb...bbbbb..\n"
;

@implementation Definitions(jfkldsjlkfsjffjdkslfjdsklfjskdd)
+ (id)HotDog
{
    id pixels = nscstr(hotdogPixels);
    id palette = nscstr(hotdogPalette);
    id highlightedPalette = nscstr(hotdogHighlightedPalette);

    id obj = [@"BitmapMenuItem" asInstance];
    [obj setValue:pixels forKey:@"pixels"];
    [obj setValue:palette forKey:@"palette"];
    [obj setValue:highlightedPalette forKey:@"highlightedPalette"];
    return obj;
}
+ (id)BananaPeel
{
    id pixels = nscstr(bananaPixels);
    id palette = nscstr(bananaPalette);
    id highlightedPalette = nscstr(bananaHighlightedPalette);

    id obj = [@"BitmapMenuItem" asInstance];
    [obj setValue:pixels forKey:@"pixels"];
    [obj setValue:palette forKey:@"palette"];
    [obj setValue:highlightedPalette forKey:@"highlightedPalette"];
    return obj;
}
@end

@implementation Definitions(jfkldsjlkfsjfd)
+ (id)BitmapMenuItem:(id)name
{
    id basePath = [Definitions configDir:@"Graphics"];
    id pixelsFile = nsfmt(@"%@/%@.pixels", basePath, name);
    id paletteFile = nsfmt(@"%@/%@.palette", basePath, name);
    id highlightedPaletteFile = nsfmt(@"%@/%@.highlightedPalette", basePath, name);
    id pixels = [pixelsFile stringFromFile];
    id palette = [paletteFile stringFromFile];
    id highlightedPalette = [highlightedPaletteFile stringFromFile];

    id obj = [@"BitmapMenuItem" asInstance];
    [obj setValue:pixels forKey:@"pixels"];
    [obj setValue:palette forKey:@"palette"];
    [obj setValue:highlightedPalette forKey:@"highlightedPalette"];
    return obj;
}
@end

@interface BitmapMenuItem : IvarObject
{
    id _pixels;
    id _palette;
    id _highlightedPalette;
}
@end

@implementation BitmapMenuItem
- (int)preferredWidth
{
    if (_pixels) {
        int w = [Definitions widthForCString:[_pixels UTF8String]];
        if (w) {
            return w;
        }
    }
    return 1;
}
- (void)drawInBitmap:(id)bitmap rect:(Int4)r
{
    if (!_pixels || !_palette) {
        return;
    }
    char *pixels = [_pixels UTF8String];
    char *palette = [_palette UTF8String];
    int w = [Definitions widthForCString:pixels];
    int h = [Definitions heightForCString:pixels];
    [bitmap drawCString:pixels palette:palette x:r.x y:r.y];
}
- (void)drawHighlightedInBitmap:(id)bitmap rect:(Int4)r
{
    if (!_pixels || !_highlightedPalette) {
        return;
    }
    char *pixels = [_pixels UTF8String];
    char *palette = [_highlightedPalette UTF8String];
    int w = [Definitions widthForCString:pixels];
    int h = [Definitions heightForCString:pixels];
    [bitmap drawCString:pixels palette:palette x:r.x y:r.y];
}
@end
