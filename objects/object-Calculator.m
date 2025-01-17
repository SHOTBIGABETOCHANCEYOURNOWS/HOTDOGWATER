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

@implementation Definitions(fmeklwfmkldsjfmkldsklfkl)
+ (id)Calculator
{
    return [@"Calculator" asInstance];
}
@end

static char *calculatorPixels =
"  ..b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...  \n"
" .b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b.. \n"
"b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b.\n"
"..b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...\n"
"b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b.\n"
"..b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...\n"
"b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b.\n"
"..b...bvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv.b...b...\n"
"b...b..v....................................................................................v...b...b.\n"
"..b...bv....................................................................................v.b...b...\n"
"b...b..v....................................................................................v...b...b.\n"
"..b...bv....................................................................................v.b...b...\n"
"b...b..v....................................................................................v...b...b.\n"
"..b...bv....................................................................................v.b...b...\n"
"b...b..v.......VVV...VVV..VVVVV...VV..VVVVV....V..VVVVV..VVV....V.....V....VVV......VVV.....v...b...b.\n"
"..b...bv......V...V.V...V.....V..V....V.......VV.....V..V...V..VV....VV...V...V....V...V....v.b...b...\n"
"b...b..v......V...V.V...V....V..V.....VVVV...V.V....V.......V...V.....V...V...V....V...V....v...b...b.\n"
"..b...bv.......VVVV..VVV.....V..VVVV......V.V..V...VVV.....V....V.....V...V...V....V...V....v.b...b...\n"
"b...b..v..........V.V...V...V...V...V.....V.VVVVV.....V...V.....V.....V...V...V....V...V....v...b...b.\n"
"..b...bv.........V..V...V...V...V...V.V...V....V..V...V..V......V.....V...V...V....V...V....v.b...b...\n"
"b...b..v.......VV....VVV....V....VVV...VVV.....V...VVV..VVVVV...V.....V....VVV...V..VVV.....v...b...b.\n"
"..b...bv....................................................................................v.b...b...\n"
"b...b..v....................................................................................v...b...b.\n"
"..b...bv....................................................................................v.b...b...\n"
"b...b..v....................................................................................v...b...b.\n"
"..b...bv....................................................................................v.b...b...\n"
"b...b..vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv...b...b.\n"
"..b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...\n"
"b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b.\n"
"..b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...\n"
"b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b.\n"
"..b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...\n"
"b...b...cccccccccccccccccc..b.eeeeeeeeeeeeeeeeeeb...dddddddddddddddddd..b.mmmmmmmmmmmmmmmmmmb...b...b.\n"
"..b...b.cCCCCCCCCCCCCCCCCcb...eEEEEEEEEEEEEEEEEe..b.dDDDDDDDDDDDDDDDDdb...mMMMMMMMMMMMMMMMMm..b...b...\n"
"b...b...cCCCCCCCCCCCCCCCCcbbb.eEEEEEEEEEEEEEEEEebb..dDDDDDDDDDDDDDDDDdbbb.mMMMMMMMMMMMMMMMMmbb..b...b.\n"
"..b...b.cCCCCCCCCCCCCCCCCcbb..eEEEEEEEEEEEEEEEEebbb.dDDDDDDDDDDDDDDDDdbb..mMMMMMMMMMMMMMMMMmbbb...b...\n"
"b...b...cCCCCCCCCCCCCCCCCcbbb.eEEEEEEEEEEEEEEEEebb..dDDDDDDDDDdDDDDDDdbbb.mMMMMMMMMMMMMMMMMmbb..b...b.\n"
"..b...b.cCCCCCCcccCCCCCCCcbb..eEEEEEEEEEEEEEEEEebbb.dDDDDDDDDDdDDDDDDdbb..mMMMMMMMmMmMMMMMMmbbb...b...\n"
"b...b...cCCCCCcCCCcCCCCCCcbbb.eEEEEEEEEEEEEEEEEebb..dDDDDDDDDdDDDDDDDdbbb.mMMMMMMMMmMMMMMMMmbb..b...b.\n"
"..b...b.cCCCCCcCCCCCCCCCCcbb..eEEEEEeeeeeEEEEEEebbb.dDDDDDDDDdDDDDDDDdbb..mMMMMMMmmmmmMMMMMmbbb...b...\n"
"b...b...cCCCCCcCCCCCCCCCCcbbb.eEEEEEEEEEEEEEEEEebb..dDDDDDDDdDDDDDDDDdbbb.mMMMMMMMMmMMMMMMMmbb..b...b.\n"
"..b...b.cCCCCCcCCCCCCCCCCcbb..eEEEEEeeeeeEEEEEEebbb.dDDDDDDDdDDDDDDDDdbb..mMMMMMMMmMmMMMMMMmbbb...b...\n"
"b...b...cCCCCCcCCCcCCCCCCcbbb.eEEEEEEEEEEEEEEEEebb..dDDDDDDdDDDDDDDDDdbbb.mMMMMMMMMMMMMMMMMmbb..b...b.\n"
"..b...b.cCCCCCCcccCCCCCCCcbb..eEEEEEEEEEEEEEEEEebbb.dDDDDDDdDDDDDDDDDdbb..mMMMMMMMMMMMMMMMMmbbb...b...\n"
"b...b...cCCCCCCCCCCCCCCCCcbbb.eEEEEEEEEEEEEEEEEebb..dDDDDDDDDDDDDDDDDdbbb.mMMMMMMMMMMMMMMMMmbb..b...b.\n"
"..b...b.cCCCCCCCCCCCCCCCCcbb..eEEEEEEEEEEEEEEEEebbb.dDDDDDDDDDDDDDDDDdbb..mMMMMMMMMMMMMMMMMmbbb...b...\n"
"b...b...cCCCCCCCCCCCCCCCCcbbb.eEEEEEEEEEEEEEEEEebb..dDDDDDDDDDDDDDDDDdbbb.mMMMMMMMMMMMMMMMMmbb..b...b.\n"
"..b...b.ccccccccccccccccccbb..eeeeeeeeeeeeeeeeeebbb.ddddddddddddddddddbb..mmmmmmmmmmmmmmmmmmbbb...b...\n"
"b...b...b.bbbbbbbbbbbbbbbbbbb...bbbbbbbbbbbbbbbbbb..b.bbbbbbbbbbbbbbbbbbb...bbbbbbbbbbbbbbbbbb..b...b.\n"
"..b...b...bbbbbbbbbbbbbbbbbb..b.bbbbbbbbbbbbbbbbbbb...bbbbbbbbbbbbbbbbbb..b.bbbbbbbbbbbbbbbbbbb...b...\n"
"b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b.\n"
"..b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...\n"
"b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b.\n"
"..b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...\n"
"b...b...777777777777777777..b.888888888888888888b...999999999999999999..b.ssssssssssssssssssb...b...b.\n"
"..b...b.7&&&&&&&&&&&&&&&&7b...8****************8..b.9((((((((((((((((9b...sSSSSSSSSSSSSSSSSs..b...b...\n"
"b...b...7&&&&&&&&&&&&&&&&7bbb.8****************8bb..9((((((((((((((((9bbb.sSSSSSSSSSSSSSSSSsbb..b...b.\n"
"..b...b.7&&&&&&&&&&&&&&&&7bb..8****************8bbb.9((((((((((((((((9bb..sSSSSSSSSSSSSSSSSsbbb...b...\n"
"b...b...7&&&&&&&&&&&&&&&&7bbb.8****************8bb..9((((((((((((((((9bbb.sSSSSSSSSSSSSSSSSsbb..b...b.\n"
"..b...b.7&&&&&77777&&&&&&7bb..8******888*******8bbb.9((((((999(((((((9bb..sSSSSSSSSSSSSSSSSsbbb...b...\n"
"b...b...7&&&&&&&&&7&&&&&&7bbb.8*****8***8******8bb..9(((((9(((9((((((9bbb.sSSSSSSSSSSSSSSSSsbb..b...b.\n"
"..b...b.7&&&&&&&&7&&&&&&&7bb..8*****8***8******8bbb.9(((((9(((9((((((9bb..sSSSSSSSSSSSSSSSSsbbb...b...\n"
"b...b...7&&&&&&&&7&&&&&&&7bbb.8******888*******8bb..9((((((9999((((((9bbb.sSSSSSssssSSSSSSSsbb..b...b.\n"
"..b...b.7&&&&&&&7&&&&&&&&7bb..8*****8***8******8bbb.9(((((((((9((((((9bb..sSSSSSSSSSSSSSSSSsbbb...b...\n"
"b...b...7&&&&&&&7&&&&&&&&7bbb.8*****8***8******8bb..9((((((((9(((((((9bbb.sSSSSSSSSSSSSSSSSsbb..b...b.\n"
"..b...b.7&&&&&&&7&&&&&&&&7bb..8******888*******8bbb.9((((((99((((((((9bb..sSSSSSSSSSSSSSSSSsbbb...b...\n"
"b...b...7&&&&&&&&&&&&&&&&7bbb.8****************8bb..9((((((((((((((((9bbb.sSSSSSSSSSSSSSSSSsbb..b...b.\n"
"..b...b.7&&&&&&&&&&&&&&&&7bb..8****************8bbb.9((((((((((((((((9bb..sSSSSSSSSSSSSSSSSsbbb...b...\n"
"b...b...7&&&&&&&&&&&&&&&&7bbb.8****************8bb..9((((((((((((((((9bbb.sSSSSSSSSSSSSSSSSsbb..b...b.\n"
"..b...b.777777777777777777bb..888888888888888888bbb.999999999999999999bb..ssssssssssssssssssbbb...b...\n"
"b...b...b.bbbbbbbbbbbbbbbbbbb...bbbbbbbbbbbbbbbbbb..b.bbbbbbbbbbbbbbbbbbb...bbbbbbbbbbbbbbbbbb..b...b.\n"
"..b...b...bbbbbbbbbbbbbbbbbb..b.bbbbbbbbbbbbbbbbbbb...bbbbbbbbbbbbbbbbbb..b.bbbbbbbbbbbbbbbbbbb...b...\n"
"b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b.\n"
"..b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...\n"
"b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b.\n"
"..b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...\n"
"b...b...444444444444444444..b.555555555555555555b...666666666666666666..b.aaaaaaaaaaaaaaaaaab...b...b.\n"
"..b...b.4$$$$$$$$$$$$$$$$4b...5%%%%%%%%%%%%%%%%5..b.6^^^^^^^^^^^^^^^^6b...aAAAAAAAAAAAAAAAAa..b...b...\n"
"b...b...4$$$$$$$$$$$$$$$$4bbb.5%%%%%%%%%%%%%%%%5bb..6^^^^^^^^^^^^^^^^6bbb.aAAAAAAAAAAAAAAAAabb..b...b.\n"
"..b...b.4$$$$$$$$$$$$$$$$4bb..5%%%%%%%%%%%%%%%%5bbb.6^^^^^^^^^^^^^^^^6bb..aAAAAAAAAAAAAAAAAabbb...b...\n"
"b...b...4$$$$$$$$$$$$$$$$4bbb.5%%%%%%%%%%%%%%%%5bb..6^^^^^^^^^^^^^^^^6bbb.aAAAAAAAAAAAAAAAAabb..b...b.\n"
"..b...b.4$$$$$$$$4$$$$$$$4bb..5%%%%%55555%%%%%%5bbb.6^^^^^^^66^^^^^^^6bb..aAAAAAAAAAAAAAAAAabbb...b...\n"
"b...b...4$$$$$$$44$$$$$$$4bbb.5%%%%%5%%%%%%%%%%5bb..6^^^^^^6^^^^^^^^^6bbb.aAAAAAAAaAAAAAAAAabb..b...b.\n"
"..b...b.4$$$$$$4$4$$$$$$$4bb..5%%%%%5555%%%%%%%5bbb.6^^^^^6^^^^^^^^^^6bb..aAAAAAAAaAAAAAAAAabbb...b...\n"
"b...b...4$$$$$4$$4$$$$$$$4bbb.5%%%%%%%%%5%%%%%%5bb..6^^^^^6666^^^^^^^6bbb.aAAAAAaaaaaAAAAAAabb..b...b.\n"
"..b...b.4$$$$$44444$$$$$$4bb..5%%%%%%%%%5%%%%%%5bbb.6^^^^^6^^^6^^^^^^6bb..aAAAAAAAaAAAAAAAAabbb...b...\n"
"b...b...4$$$$$$$$4$$$$$$$4bbb.5%%%%%5%%%5%%%%%%5bb..6^^^^^6^^^6^^^^^^6bbb.aAAAAAAAaAAAAAAAAabb..b...b.\n"
"..b...b.4$$$$$$$$4$$$$$$$4bb..5%%%%%%555%%%%%%%5bbb.6^^^^^^666^^^^^^^6bb..aAAAAAAAAAAAAAAAAabbb...b...\n"
"b...b...4$$$$$$$$$$$$$$$$4bbb.5%%%%%%%%%%%%%%%%5bb..6^^^^^^^^^^^^^^^^6bbb.aAAAAAAAAAAAAAAAAabb..b...b.\n"
"..b...b.4$$$$$$$$$$$$$$$$4bb..5%%%%%%%%%%%%%%%%5bbb.6^^^^^^^^^^^^^^^^6bb..aAAAAAAAAAAAAAAAAabbb...b...\n"
"b...b...4$$$$$$$$$$$$$$$$4bbb.5%%%%%%%%%%%%%%%%5bb..6^^^^^^^^^^^^^^^^6bbb.aAAAAAAAAAAAAAAAAabb..b...b.\n"
"..b...b.444444444444444444bb..555555555555555555bbb.666666666666666666bb..aaaaaaaaaaaaaaaaaabbb...b...\n"
"b...b...b.bbbbbbbbbbbbbbbbbbb...bbbbbbbbbbbbbbbbbb..b.bbbbbbbbbbbbbbbbbbb...bbbbbbbbbbbbbbbbbb..b...b.\n"
"..b...b...bbbbbbbbbbbbbbbbbb..b.bbbbbbbbbbbbbbbbbbb...bbbbbbbbbbbbbbbbbb..b.bbbbbbbbbbbbbbbbbbb...b...\n"
"b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b.\n"
"..b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...\n"
"b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b.\n"
"..b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...\n"
"b...b...111111111111111111..b.222222222222222222b...333333333333333333..b.rrrrrrrrrrrrrrrrrrb...b...b.\n"
"..b...b.1!!!!!!!!!!!!!!!!1b...2@@@@@@@@@@@@@@@@2..b.3################3b...rRRRRRRRRRRRRRRRRr..b...b...\n"
"b...b...1!!!!!!!!!!!!!!!!1bbb.2@@@@@@@@@@@@@@@@2bb..3################3bbb.rRRRRRRRRRRRRRRRRrbb..b...b.\n"
"..b...b.1!!!!!!!!!!!!!!!!1bb..2@@@@@@@@@@@@@@@@2bbb.3################3bb..rRRRRRRRRRRRRRRRRrbbb...b...\n"
"b...b...1!!!!!!!!!!!!!!!!1bbb.2@@@@@@@@@@@@@@@@2bb..3################3bbb.rRRRRRRRRRRRRRRRRrbb..b...b.\n"
"..b...b.1!!!!!!!1!!!!!!!!1bb..2@@@@@@222@@@@@@@2bbb.3#####33333######3bb..rRRRRRRRRRRRRRRRRrbbb...b...\n"
"b...b...1!!!!!!11!!!!!!!!1bbb.2@@@@@2@@@2@@@@@@2bb..3########3#######3bbb.rRRRRRRRRRRRRRRRRrbb..b...b.\n"
"..b...b.1!!!!!!!1!!!!!!!!1bb..2@@@@@@@@@2@@@@@@2bbb.3#######3########3bb..rRRRRRRRRRRRRRRRRrbbb...b...\n"
"b...b...1!!!!!!!1!!!!!!!!1bbb.2@@@@@@@@2@@@@@@@2bb..3######333#######3bbb.rRRRRRRRRRRRRRRRRrbb..b...b.\n"
"..b...b.1!!!!!!!1!!!!!!!!1bb..2@@@@@@@2@@@@@@@@2bbb.3#########3######3bb..rRRRRRRRRRRRRRRRRrbbb...b...\n"
"b...b...1!!!!!!!1!!!!!!!!1bbb.2@@@@@@2@@@@@@@@@2bb..3#####3###3######3bbb.rRRRRRRRRRRRRRRRRrbb..b...b.\n"
"..b...b.1!!!!!!!1!!!!!!!!1bb..2@@@@@22222@@@@@@2bbb.3######333#######3bb..rRRRRRRRRRRRRRRRRrbbb...b...\n"
"b...b...1!!!!!!!!!!!!!!!!1bbb.2@@@@@@@@@@@@@@@@2bb..3################3bbb.rRRRRRRRRRRRRRRRRrbb..b...b.\n"
"..b...b.1!!!!!!!!!!!!!!!!1bb..2@@@@@@@@@@@@@@@@2bbb.3################3bb..rRRRRRRRRRRRRRRRRrbbb...b...\n"
"b...b...1!!!!!!!!!!!!!!!!1bbb.2@@@@@@@@@@@@@@@@2bb..3################3bbb.rRRRRRRRRRRRRRRRRrbb..b...b.\n"
"..b...b.111111111111111111bb..222222222222222222bbb.333333333333333333bb..rRRRRRRRRRRRRRRRRrbbb...b...\n"
"b...b...b.bbbbbbbbbbbbbbbbbbb...bbbbbbbbbbbbbbbbbb..b.bbbbbbbbbbbbbbbbbbb.rRRRRRRRRRRRRRRRRrbb..b...b.\n"
"..b...b...bbbbbbbbbbbbbbbbbb..b.bbbbbbbbbbbbbbbbbbb...bbbbbbbbbbbbbbbbbb..rRRRRRRRRRRRRRRRRrbbb...b...\n"
"b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b.rRRRRRRRRRRRRRRRRrbb..b...b.\n"
"..b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...rRRRRRRRRRRRRRRRRrbbb...b...\n"
"b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b.rRRRRRRRRRRRRRRRRrbb..b...b.\n"
"..b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...rRRRRRRRRRRRRRRRRrbbb...b...\n"
"b...b...0000000000000000000000000000000000000000b...pppppppppppppppppp..b.rRRRRRRRRRRRRRRRRrbb..b...b.\n"
"..b...b.0))))))))))))))))))))))))))))))))))))))0..b.pPPPPPPPPPPPPPPPPpb...rRRRRRRRRRRRRRRRRrbbb...b...\n"
"b...b...0))))))))))))))))))))))))))))))))))))))0bb..pPPPPPPPPPPPPPPPPpbbb.rRRRRRRRRRRRRRRRRrbb..b...b.\n"
"..b...b.0))))))))))))))))))))))))))))))))))))))0bbb.pPPPPPPPPPPPPPPPPpbb..rRRRRRRRRRRRRRRRRrbbb...b...\n"
"b...b...0))))))))))))))))))))))))))))))))))))))0bb..pPPPPPPPPPPPPPPPPpbbb.rRRRRRRRRRRRRRRRRrbb..b...b.\n"
"..b...b.0))))))000)))))))))))))))))))))))))))))0bbb.pPPPPPPPPPPPPPPPPpbb..rRRRRRRRRRRRRRRRRrbbb...b...\n"
"b...b...0)))))0)))0))))))))))))))))))))))))))))0bb..pPPPPPPPPPPPPPPPPpbbb.rRRRRRRRRRRRRRRRRrbb..b...b.\n"
"..b...b.0)))))0)))0))))))))))))))))))))))))))))0bbb.pPPPPPPPPPPPPPPPPpbb..rRRRRRrrrrrRRRRRRrbbb...b...\n"
"b...b...0)))))0)))0))))))))))))))))))))))))))))0bb..pPPPPPPPPPPPPPPPPpbbb.rRRRRRRRRRRRRRRRRrbb..b...b.\n"
"..b...b.0)))))0)))0))))))))))))))))))))))))))))0bbb.pPPPPPPPPPPPPPPPPpbb..rRRRRRrrrrrRRRRRRrbbb...b...\n"
"b...b...0)))))0)))0))))))))))))))))))))))))))))0bb..pPPPPPPPPPPPPPPPPpbbb.rRRRRRRRRRRRRRRRRrbb..b...b.\n"
"..b...b.0))))))000)))))))))))))))))))))))))))))0bbb.pPPPPPPpPPPPPPPPPpbb..rRRRRRRRRRRRRRRRRrbbb...b...\n"
"b...b...0))))))))))))))))))))))))))))))))))))))0bb..pPPPPPPPPPPPPPPPPpbbb.rRRRRRRRRRRRRRRRRrbb..b...b.\n"
"..b...b.0))))))))))))))))))))))))))))))))))))))0bbb.pPPPPPPPPPPPPPPPPpbb..rRRRRRRRRRRRRRRRRrbbb...b...\n"
"b...b...0))))))))))))))))))))))))))))))))))))))0bb..pPPPPPPPPPPPPPPPPpbbb.rRRRRRRRRRRRRRRRRrbb..b...b.\n"
"..b...b.0000000000000000000000000000000000000000bbb.ppppppppppppppppppbb..rrrrrrrrrrrrrrrrrrbbb...b...\n"
"b...b...b.bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb..b.bbbbbbbbbbbbbbbbbbb...bbbbbbbbbbbbbbbbbb..b...b.\n"
"..b...b...bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb...bbbbbbbbbbbbbbbbbb..b.bbbbbbbbbbbbbbbbbbb...b...\n"
"b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b.\n"
"..b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...\n"
"b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b.\n"
"..b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...\n"
"b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b.\n"
"b.b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...\n"
" ...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b \n"
"  b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b...b.  \n"
;

@interface Calculator : IvarObject
{
    char _operator;
    id _firstValue;
    id _value;
    char _buttonDown;
    char _buttonHover;
    id _bitmap;
    int _width;
    int _height;
}
@end
@implementation Calculator
- (id)init
{
    self = [super init];
    if (self) {
        _width = [Definitions widthForCString:calculatorPixels];
        _height = [Definitions heightForCString:calculatorPixels];
        [self setValue:[Definitions bitmapWithWidth:_width height:_height] forKey:@"bitmap"];
    }
    return self;
}
- (BOOL)glNearest
{
    return YES;
}
- (int)preferredWidth
{
    return _width*2;
}
- (int)preferredHeight
{
    return _height*2;
}
- (BOOL)shouldAnimate
{
    return NO;
}
- (void)beginIteration:(id)event rect:(Int4)r
{
    [self updateBitmap];
}
- (int)bitmapWidth
{
    return _width;
}
- (int)bitmapHeight
{
    return _height;
}

- (unsigned char *)pixelBytesRGBA8888
{
    return [_bitmap pixelBytes];
}
- (id)stripTrailingZeroes:(id)str
{
    if ([str containsString:@"."]) {
        for(;;) {
            if ([str hasSuffix:@"."]) {
                str = [str stringToIndex:-1];
                break;
            } else if ([str hasSuffix:@"0"]) {
                str = [str stringToIndex:-1];
                continue;
            } else {
                break;
            }
        }
    }
    if (![str length]) {
        return nil;
    }
    return str;
}
- (id)performCalculation
{
    if (!_firstValue || !_value || !_operator) {
        return nil;
    }
    if ([_firstValue containsString:@"."] || [_value containsString:@"."]) {
        if (_operator == 'a') {
            double result = [_firstValue doubleValue] + [_value doubleValue];
            return nsfmt(@"%f", result);
        } else if (_operator == 's') {
            double result = [_firstValue doubleValue] - [_value doubleValue];
            return nsfmt(@"%f", result);
        } else if (_operator == 'm') {
            double result = [_firstValue doubleValue] * [_value doubleValue];
            return nsfmt(@"%f", result);
        } else if (_operator == 'd') {
            double result = [_firstValue doubleValue] / [_value doubleValue];
            return nsfmt(@"%f", result);
        }
    } else {
        if (_operator == 'a') {
            int result = [_firstValue intValue] + [_value intValue];
            return nsfmt(@"%d", result);
        } else if (_operator == 's') {
            int result = [_firstValue intValue] - [_value intValue];
            return nsfmt(@"%d", result);
        } else if (_operator == 'm') {
            int result = [_firstValue intValue] * [_value intValue];
            return nsfmt(@"%d", result);
        } else if (_operator == 'd') {
            double result = [_firstValue doubleValue] / [_value doubleValue];
            return nsfmt(@"%f", result);
        }
    }
    return nil;
}

- (Int4)rectForButton:(char)c
{
    char *p = calculatorPixels;
    char *newline = strchr(p, '\n');
    char *first = strchr(p, c);
    char *last = strrchr(p, c);
    int width = [Definitions widthForCString:calculatorPixels];
    int height = [Definitions heightForCString:calculatorPixels];
    int x = (first-p) % (width+1);
    int y = (first-p) / (width+1);
    int w = ((last-p) % (width+1)) - x;
    int h = ((last-p) / (width+1)) - y;
    return [Definitions rectWithX:x y:y w:w h:h];
}

- (char)buttonForEvent:(id)event
{
    int viewWidth = [event intValueForKey:@"viewWidth"];
    int viewHeight = [event intValueForKey:@"viewHeight"];
    int width = [Definitions widthForCString:calculatorPixels];
    int height = [Definitions heightForCString:calculatorPixels];
    int mouseX = [event intValueForKey:@"mouseX"] / ((double)viewWidth / width);
    int mouseY = [event intValueForKey:@"mouseY"] / ((double)viewHeight / height);
    static char *buttons = "1234567890cedmsarp";
    char *p = buttons;
    while (*p) {
        Int4 r = [self rectForButton:*p];
        if ([Definitions isX:mouseX y:mouseY insideRect:r]) {
            return *p;
        }
        p++;
    }
    return 0;
}
- (char)buttonForTouch:(id)event
{
    int width = [Definitions widthForCString:calculatorPixels];
    int height = [Definitions heightForCString:calculatorPixels];
    int touchX = [event intValueForKey:@"touchX"];
    int touchY = [event intValueForKey:@"touchY"];
    static char *buttons = "1234567890cedmsarp";
    char *p = buttons;
    while (*p) {
        Int4 r = [self rectForButton:*p];
        if ([Definitions isX:touchX y:touchY insideRect:r]) {
            return *p;
        }
        p++;
    }
    return 0;
}

- (void)handleTouchesBegan:(id)event
{
NSLog(@"calculator touchesBegan %@ %@", [event valueForKey:@"touchX"], [event valueForKey:@"touchY"]);
    _buttonDown = _buttonHover = [self buttonForTouch:event];
}
- (void)handleTouchesMoved:(id)event
{
NSLog(@"calculator touchesMoved %@ %@", [event valueForKey:@"touchX"], [event valueForKey:@"touchY"]);
    _buttonHover = [self buttonForTouch:event];
}
- (void)handleTouchesEnded:(id)event
{
NSLog(@"calculator touchesEnded %@ %@", [event valueForKey:@"touchX"], [event valueForKey:@"touchY"]);
    if (_buttonDown == _buttonHover) {
        [self handleButton:_buttonDown];
    }
    _buttonDown = _buttonHover = 0;
}
- (void)handleTouchesCancelled:(id)event
{
NSLog(@"calculator touchesCancelled %@ %@", [event valueForKey:@"touchX"], [event valueForKey:@"touchY"]);
    _buttonDown = _buttonHover = 0;
}
- (void)handleMouseDown:(id)event
{
    _buttonDown = [self buttonForEvent:event];
}
- (void)handleMouseUp:(id)event
{
    if (_buttonDown == _buttonHover) {
        [self handleButton:_buttonDown];
    }
    _buttonDown = 0;
}
- (void)handleMouseMoved:(id)event
{
    _buttonHover = [self buttonForEvent:event];
}
- (void)handleButton:(char)button
{
    if ((button >= '0') && (button <= '9')) {
        if ([_value containsString:@"."]) {
            id value = nsfmt(@"%@%c", _value, button);
            [self setValue:value forKey:@"value"];
        } else {
            if (![_value intValue]) {
                [self setValue:nsfmt(@"%c", button) forKey:@"value"];
            } else {
                [self setValue:nsfmt(@"%@%c", _value, button) forKey:@"value"];
            }
        }
        return;
    }
    if (button == 'p') {
        if (![_value containsString:@"."]) {
            if (_value) {
                [self setValue:nsfmt(@"%@.", _value) forKey:@"value"];
            } else {
                [self setValue:@"0." forKey:@"value"];
            }
        }
        return;
    }
    if (button == 'c') {
        [self setValue:nil forKey:@"firstValue"];
        [self setValue:nil forKey:@"value"];
        _operator = 0;
        return;
    }
    if (strchr("dmsaer", button)) {
        id val = [self performCalculation];
        if (val) {
            [self setValue:[self stripTrailingZeroes:val] forKey:@"firstValue"];
            [self setValue:nil forKey:@"value"];
        } else {
            if (_value) {
                [self setValue:_value forKey:@"firstValue"];
                [self setValue:nil forKey:@"value"];
            }
        }
        _operator = button;
        return;
    }
}
- (void)updateBitmap
{
    int width = [self bitmapWidth];
    int height = [self bitmapHeight];
    id bitmap = _bitmap;
    [bitmap setColor:@"white"];
    [bitmap fillRect:[Definitions rectWithX:0 y:0 w:width h:height]];
    [bitmap drawCString:calculatorPixels palette:"b #000000\n" x:0 y:0];
    if ((_buttonDown == _buttonHover) && (_buttonHover == '1')) {
        [bitmap drawCString:calculatorPixels palette:"1 #ffffff\n! #000000\n" x:0 y:0];
    } else {
        [bitmap drawCString:calculatorPixels palette:"1 #000000\n! #ffffff\n" x:0 y:0];
    }
    if ((_buttonDown == _buttonHover) && (_buttonHover == '2')) {
        [bitmap drawCString:calculatorPixels palette:"2 #ffffff\n@ #000000\n" x:0 y:0];
    } else {
        [bitmap drawCString:calculatorPixels palette:"2 #000000\n@ #ffffff\n" x:0 y:0];
    }
    if ((_buttonDown == _buttonHover) && (_buttonHover == '3')) {
        [bitmap drawCString:calculatorPixels palette:"3 #ffffff\n# #000000\n" x:0 y:0];
    } else {
        [bitmap drawCString:calculatorPixels palette:"3 #000000\n# #ffffff\n" x:0 y:0];
    }
    if ((_buttonDown == _buttonHover) && (_buttonHover == '4')) {
        [bitmap drawCString:calculatorPixels palette:"4 #ffffff\n$ #000000\n" x:0 y:0];
    } else {
        [bitmap drawCString:calculatorPixels palette:"4 #000000\n$ #ffffff\n" x:0 y:0];
    }
    if ((_buttonDown == _buttonHover) && (_buttonHover == '5')) {
        [bitmap drawCString:calculatorPixels palette:"5 #ffffff\n% #000000\n" x:0 y:0];
    } else {
        [bitmap drawCString:calculatorPixels palette:"5 #000000\n% #ffffff\n" x:0 y:0];
    }
    if ((_buttonDown == _buttonHover) && (_buttonHover == '6')) {
        [bitmap drawCString:calculatorPixels palette:"6 #ffffff\n^ #000000\n" x:0 y:0];
    } else {
        [bitmap drawCString:calculatorPixels palette:"6 #000000\n^ #ffffff\n" x:0 y:0];
    }
    if ((_buttonDown == _buttonHover) && (_buttonHover == '7')) {
        [bitmap drawCString:calculatorPixels palette:"7 #ffffff\n& #000000\n" x:0 y:0];
    } else {
        [bitmap drawCString:calculatorPixels palette:"7 #000000\n& #ffffff\n" x:0 y:0];
    }
    if ((_buttonDown == _buttonHover) && (_buttonHover == '8')) {
        [bitmap drawCString:calculatorPixels palette:"8 #ffffff\n* #000000\n" x:0 y:0];
    } else {
        [bitmap drawCString:calculatorPixels palette:"8 #000000\n* #ffffff\n" x:0 y:0];
    }
    if ((_buttonDown == _buttonHover) && (_buttonHover == '9')) {
        [bitmap drawCString:calculatorPixels palette:"9 #ffffff\n( #000000\n" x:0 y:0];
    } else {
        [bitmap drawCString:calculatorPixels palette:"9 #000000\n( #ffffff\n" x:0 y:0];
    }
    if ((_buttonDown == _buttonHover) && (_buttonHover == '0')) {
        [bitmap drawCString:calculatorPixels palette:"0 #ffffff\n) #000000\n" x:0 y:0];
    } else {
        [bitmap drawCString:calculatorPixels palette:"0 #000000\n) #ffffff\n" x:0 y:0];
    }
    if ((_buttonDown == _buttonHover) && (_buttonHover == 'c')) {
        [bitmap drawCString:calculatorPixels palette:"c #ffffff\nC #000000\n" x:0 y:0];
    } else {
        [bitmap drawCString:calculatorPixels palette:"c #000000\nC #ffffff\n" x:0 y:0];
    }
    if ((_buttonDown == _buttonHover) && (_buttonHover == 'e')) {
        [bitmap drawCString:calculatorPixels palette:"e #ffffff\nE #000000\n" x:0 y:0];
    } else {
        [bitmap drawCString:calculatorPixels palette:"e #000000\nE #ffffff\n" x:0 y:0];
    }
    if ((_buttonDown == _buttonHover) && (_buttonHover == 'd')) {
        [bitmap drawCString:calculatorPixels palette:"d #ffffff\nD #000000\n" x:0 y:0];
    } else {
        [bitmap drawCString:calculatorPixels palette:"d #000000\nD #ffffff\n" x:0 y:0];
    }
    if ((_buttonDown == _buttonHover) && (_buttonHover == 'm')) {
        [bitmap drawCString:calculatorPixels palette:"m #ffffff\nM #000000\n" x:0 y:0];
    } else {
        [bitmap drawCString:calculatorPixels palette:"m #000000\nM #ffffff\n" x:0 y:0];
    }
    if ((_buttonDown == _buttonHover) && (_buttonHover == 's')) {
        [bitmap drawCString:calculatorPixels palette:"s #ffffff\nS #000000\n" x:0 y:0];
    } else {
        [bitmap drawCString:calculatorPixels palette:"s #000000\nS #ffffff\n" x:0 y:0];
    }
    if ((_buttonDown == _buttonHover) && (_buttonHover == 'a')) {
        [bitmap drawCString:calculatorPixels palette:"a #ffffff\nA #000000\n" x:0 y:0];
    } else {
        [bitmap drawCString:calculatorPixels palette:"a #000000\nA #ffffff\n" x:0 y:0];
    }
    if ((_buttonDown == _buttonHover) && (_buttonHover == 'r')) {
        [bitmap drawCString:calculatorPixels palette:"r #ffffff\nR #000000\n" x:0 y:0];
    } else {
        [bitmap drawCString:calculatorPixels palette:"r #000000\nR #ffffff\n" x:0 y:0];
    }
    if ((_buttonDown == _buttonHover) && (_buttonHover == 'p')) {
        [bitmap drawCString:calculatorPixels palette:"p #ffffff\nP #000000\n" x:0 y:0];
    } else {
        [bitmap drawCString:calculatorPixels palette:"p #000000\nP #ffffff\n" x:0 y:0];
    }
    Int4 valueRect = [self rectForButton:'v'];
    id val = _value;
    if (!val) {
        val = _firstValue;
    }
    if (val) {
        [bitmap setColorIntR:0 g:0 b:0 a:255];
        [bitmap drawBitmapText:val rightAlignedInRect:valueRect];
    } else {
        if (!_operator) {
            [bitmap setColorIntR:0 g:0 b:0 a:255];
            [bitmap drawBitmapText:@"0" rightAlignedInRect:valueRect];
        }
    }
}

@end

