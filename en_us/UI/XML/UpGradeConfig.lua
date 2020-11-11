-- 2008.09.08 tavia
--UpGradeConfig.lua升级提示的配置------

local UpGrade_Cofig = {};

UpGrade_Cofig[5] = {
 static_text="       Main quests reward |cffFFB90F high quality equipment. |cffffffff"
 }


UpGrade_Cofig[15] = {
 static_text="       From Level 20, you can claim |cffFFB90F Nameplates|cffffffff from the Faction Crier (142,-159) in the main city, and exchange them for lots of |cffFFB90FExp|cffffffff."
 }


UpGrade_Cofig[30] = {
 static_text="    Congratulate that you are on level 30！Visit our official website and fill some info the purpose of verification. http://www.igg.com/member/account_center.php ",
 }

UpGrade_Cofig[35] = {
 static_text="        From Level 40, you can learn |cffFFB90FRiding Skills|cffFFB90F from main quests as well as obtain a sturdy Greek Steed."
 }

UpGrade_Cofig[45] = {
 static_text="        From Level 50, you can join the new event |cffFFB90FEuropa's Clue|cffffffff."
 }

UpGrade_Cofig[47] = {
 static_text="        From Level 50, you can go to the instance |cffFFB90F Bay under Attack|cffffffff with the help of the Instance Caller (136,-38) in the main city. The instance rewards |cffFFB90Fan array of useful items and Skillbooks|cffffffff."
}

UpGrade_Cofig[50] = {
 static_text="        From Level 55, you can access the |cffFFB90FCursed Zone|cffffffff with the help of the Event transporter (142, 38) to earn a variety of top quality|cffFFB90Fequipment|cffffffff."
}

UpGrade_Cofig[52] = {
 static_text="        From Level 55, you can join the |cffFFB90FZeus' Gift|cffffffff event by visiting his faithful follower (153, -58) in the main city each day. Lots of |cffFFB90FExp|cffffffff  can be won "
}

UpGrade_Cofig[55] = {
 static_text="        From Level 60, you can join the marathon available from the Fitness Trainer  (90, -125) in the suburbs of the main cities. Lots of |cffFFB90FB-GOLD|cffffffff can be won by participating"
}

UpGrade_Cofig[57] = {
 static_text="        From Level 60, you can enter the Treasure Land event by visiting the Event Transporter (142, 38) to win rich rewards of |cffFFB90F gems and B-GOLD!|cffffffff"
}

UpGrade_Cofig[59] = {
 static_text="        From Level 60, you can enter the deadly battlefields by visiting the Battlefield Transporter (174, -38) and prove your bravery and valor."
}



function Get_UpGrade_Cofig(level)
	return UpGrade_Cofig[level];
end
