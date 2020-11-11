print("load SrvMsg.lua Success!!!");
Base:dofile("./Localization/en_us/UI/Base/text.lua");
--显示的位置
local CHANNEL_MIDDLE = 0	--屏幕中间
local CHANNEL_PRESONAL = 1	--屏蔽右下角
local CHANNEL_MOVE = 2		--跑马灯

--句子的格式
local NOTE_1 = 0	--技能书
local NOTE_10 = 1	--战场
local NOTE_20 = 2	--跨级任务
local NOTE_30 = 3	--通缉令
local NOTE_40 = 4	--开启复活节礼包
local NOTE_50 = 5	--中秋
local NOTE_60 = 6	--新手活动3
local NOTE_70 = 7	--复活节
local NOTE_80 = 8	--
local NOTE_90 = 9	--
local NOTE_100 = 10	--
local NOTE_110 = 11	--
local NOTE_120 = 12	--
local NOTE_130 = 13	--
local NOTE_140 = 14
local NOTE_150 = 15
local NOTE_41 = 16
local NOTE_160 = 18	--健康跑
local NOTE_170 = 17
local NOTE_42 = 19
local NOTE_43 = 20
local NOTE_44 = 21
local NOTE_45 = 22
local NOTE_46 = 23
local NOTE_47 = 24
local NOTE_48 = 25
local NOTE_49 = 26
local NOTE_51 = 27
local NOTE_180 = 28	--副本
local NOTE_190 = 29	--潘神的化身
local NOTE_59 = 30
local NOTE_191 = 40	--道具调用脚本消息提示
local NOTE_193= 31
local NOTE_192= 32
SrvMsg_NOTE_181 = 33
SrvMsg_NOTE_182 = 41
SrvMsg_NOTE_183 = 42 --murder
SrvMsg_NOTE_184 = 43
SrvMsg_NOTE_185 = 44 --运气176/暑假礼包
SrvMsg_NOTE_186 = 45 --幸运神明
SrvMsg_NOTE_187 = 46 --恶魔岛
SrvMsg_NOTE_188 = 47 --跨服挑战赛
SrvMsg_NOTE_189 = 48 --跨服挑战赛
SrvMsg_NOTE_190 = 49 --跨服挑战赛
SrvMsg_NOTE_191 = 50 --特洛伊
SrvMsg_NOTE_192 = 51 --七夕
SrvMsg_NOTE_100 = 52 --许愿
SrvMsg_NOTE_193 = 53 --跨服战场
SrvMsg_NOTE_194 = 54 --跨服战场
SrvMsg_NOTE_195 = 55 --跨服战场
SrvMsg_NOTE_196 = 56 --万圣节积分
SrvMsg_NOTE_197 = 57 --春节
SrvMsg_NOTE_198 = 58 --彩票1
SrvMsg_NOTE_199 = 59 --彩票2
SrvMsg_NOTE_200 = 60 --彩票3
SrvMsg_NOTE_201 = 61 --传说
SrvMsg_NOTE_202 = 62 --圣石礼包兑换
SrvMsg_NOTE_203 = 63 --pvp
SrvMsg_NOTE_204 = 64 --金币兑换双倍绑定金币
SrvMsg_NOTE_205 = 65 --IGG周年庆
SrvMsg_NOTE_206 = 66 --奖章袋
SrvMsg_NOTE_207 = 67 --特洛伊公告修改
SrvMsg_NOTE_208 = 68 --守护称号
SrvMsg_NOTE_209 = 69 --兑换宗师级技能書
SrvMsg_NOTE_210 = 70 --宙斯宝箱

--skillbook
skillbook = {
["5043"] = LuaText.skillbook100m,
["5044"] = LuaText.skillbook101m,
["5045"] = LuaText.skillbook102m,
["5046"] = LuaText.skillbook103m,
["5047"] = LuaText.skillbook104m,
["5048"] = LuaText.skillbook105m,
["5049"] = LuaText.skillbook106m,
["5246"] = LuaText.skillbook110m,
["5247"] = LuaText.skillbook111m,
["5248"] = LuaText.skillbook112m,
["5249"] = LuaText.skillbook113m,
["5250"] = LuaText.skillbook114m,
["5251"] = LuaText.skillbook115m,
["5252"] = LuaText.skillbook116m,
["5253"] = LuaText.skillbook117m,
["5254"] = LuaText.skillbook118m,
["5651"] = LuaText.skillbook120m,
["5652"] = LuaText.skillbook121m,
["5653"] = LuaText.skillbook122m,
["5654"] = LuaText.skillbook123m,
["5655"] = LuaText.skillbook124m,
["5656"] = LuaText.skillbook125m,
["5657"] = LuaText.skillbook126m,
["5658"] = LuaText.skillbook127m,
["5659"] = LuaText.skillbook128m,
["5446"] = LuaText.skillbook130m,
["5447"] = LuaText.skillbook131m,
["5448"] = LuaText.skillbook132m,
["5449"] = LuaText.skillbook133m,
["5450"] = LuaText.skillbook134m,
["5451"] = LuaText.skillbook135m,
["5452"] = LuaText.skillbook136m,
["5453"] = LuaText.skillbook137m,
["5454"] = LuaText.skillbook138m,
}

--pvp
pvp_msg = {
["1001"] = pvp_msg1001,
["1002"] = pvp_msg1002,
["1003"] = pvp_msg1003,
["1004"] = pvp_msg1004,
["1005"] = pvp_msg1005,
["1101"] = pvp_msg1101,
["1102"] = pvp_msg1102,
["1103"] = pvp_msg1103,
["1104"] = pvp_msg1104,
["1105"] = pvp_msg1105,
}
--春节
fire_msg = {
["1"] = CJ_FIREM1002,
["2"] = CJ_FIREM1003,
["101"] = CJ_FIREM1006,
["102"] = CJ_FIREM1007,
["103"] = CJ_FIREM1008,
["104"] = CJ_FIREM1009,
["105"] = CJ_FIREM1004,
["106"] = CJ_FIREM1005,

}
--周年庆
permit_msg = {
["11056"] = 	NF_L0_TZN11056,
["14260"] = 	NF_L0_TZN14260,
["14240"] = 	NF_L0_TZN14240,
["14280"] = 	NF_L0_TZN14280,
["13009"] =	NF_L0_TZN13009,
["13414"] =	NF_L0_TZN13414,
["13010"] =	NF_L0_TZN13010,
["13420"] =	NF_L0_TZN13420,
["13014"] =	NF_L0_TZN13014,
["13421"] =	NF_L0_TZN13421,
["13016"] =	NF_L0_TZN13016,
["13424"] =	NF_L0_TZN13424,
["13022"] =	NF_L0_TZN13022,
["13425"] =	NF_L0_TZN13425,
["13025"] =	NF_L0_TZN13025,
["13426"] =	NF_L0_TZN13426,
["13032"] =	NF_L0_TZN13032,
["13430"] =	NF_L0_TZN13430,
["13200"] =	NF_L0_TZN13200,
["13433"] =	NF_L0_TZN13433,
["13205"] =	NF_L0_TZN13205,
["13616"] =	NF_L0_TZN13616,
["13207"] =	NF_L0_TZN13207,
["13617"] =	NF_L0_TZN13617,
["13208"] =	NF_L0_TZN13208,
["13626"] =	NF_L0_TZN13626,
["13211"] =	NF_L0_TZN13211,
["13627"] =	NF_L0_TZN13627,
["13213"] =	NF_L0_TZN13213,
["13640"] =	NF_L0_TZN13640,
["13413"] =	NF_L0_TZN13413,
["13641"] =	NF_L0_TZN13641,
["10241"] =	NF_L0_TZN10241,
["10243"] =	NF_L0_TZN10243,
["10253"] =	NF_L0_TZN10253,
["10277"] =	NF_L0_TZN10277,
["10279"] =	NF_L0_TZN10279,
["10299"] =	NF_L0_TZN10299,
["10242"] =	NF_L0_TZN10242,
["10244"] =	NF_L0_TZN10244,
["10254"] =	NF_L0_TZN10254,
["10278"] =	NF_L0_TZN10278,
["10280"] =	NF_L0_TZN10280,
["10300"] =	NF_L0_TZN10300,
["10235"] =	NF_L0_TZN10299,
["4230"] =	NF_L0_TZN10242,
["4231"] = 	NF_L0_TZN10244,
["4232"] =	NF_L0_TZN10254,
["4233"] =	NF_L0_TZN10278,
["9961"] = 	NF_L0_TZN10280,
["9962"] = 	NF_L0_TZN10300,

}

--运气大比拼
luck_msg =
{
        ["100"]=NF_Z_M0,
        ["101"]=NF_Z_M1,
        ["102"]=NF_Z_M2,
        ["103"]=NF_Z_M3,
        ["104"]=NF_Z_M4,
        ["105"]=NF_Z_M5,
        ["106"]=NF_Z_M6,
        ["107"]=NF_Z_M12
}
-- 技能书配置表
local skill_msg =
{
        ["3875"]=SM_875,
        ["5001"]=SM_001,
        ["5002"]=SM_002,
        ["5005"]=SM_003,
        ["5006"]=SM_004,
        ["5009"]=SM_005,
        ["5010"]=SM_006,
        ["5013"]=SM_007,
        ["5014"]=SM_008,
        ["5017"]=SM_009,
        ["5018"]=SM_010,
        ["5021"]=SM_011,
        ["5022"]=SM_012,
        ["5025"]=SM_013,
        ["5026"]=SM_014,
        ["5030"]=SM_015,
        ["5031"]=SM_016,
        ["5035"]=SM_017,
        ["5036"]=SM_018,
        ["5040"]=SM_019,
        ["5041"]=SM_020,
        ["5201"]=SM_021,
        ["5202"]=SM_022,
        ["5205"]=SM_023,
        ["5206"]=SM_024,
        ["5209"]=SM_025,
        ["5210"]=SM_026,
        ["5213"]=SM_027,
        ["5214"]=SM_028,
        ["5217"]=SM_029,
        ["5218"]=SM_030,
        ["5221"]=SM_031,
        ["5222"]=SM_032,
        ["5225"]=SM_033,
        ["5226"]=SM_034,
        ["5229"]=SM_035,
        ["5230"]=SM_036,
        ["5233"]=SM_037,
        ["5234"]=SM_038,
        ["5238"]=SM_039,
        ["5239"]=SM_040,
        ["5243"]=SM_041,
        ["5244"]=SM_042,
        ["5401"]=SM_043,
        ["5402"]=SM_044,
        ["5405"]=SM_045,
        ["5406"]=SM_046,
        ["5409"]=SM_047,
        ["5410"]=SM_048,
        ["5413"]=SM_049,
        ["5414"]=SM_050,
        ["5417"]=SM_051,
        ["5418"]=SM_052,
        ["5421"]=SM_053,
        ["5422"]=SM_054,
        ["5425"]=SM_055,
        ["5426"]=SM_056,
        ["5430"]=SM_057,
        ["5431"]=SM_058,
        ["5435"]=SM_059,
        ["5436"]=SM_060,
        ["5440"]=SM_061,
        ["5441"]=SM_062,
        ["5443"]=SM_063,
        ["5444"]=SM_064,
        ["5603"]=SM_065,
        ["5604"]=SM_066,
        ["5608"]=SM_067,
        ["5609"]=SM_068,
        ["5613"]=SM_069,
        ["5614"]=SM_070,
        ["5618"]=SM_071,
        ["5619"]=SM_072,
        ["5621"]=SM_073,
        ["5622"]=SM_074,
        ["5624"]=SM_075,
        ["5625"]=SM_076,
        ["5628"]=SM_077,
        ["5629"]=SM_078,
        ["5632"]=SM_079,
        ["5633"]=SM_080,
        ["5636"]=SM_081,
        ["5637"]=SM_082,
        ["5640"]=SM_083,
        ["5641"]=SM_084,
        ["5644"]=SM_085,
        ["5645"]=SM_086,
        ["5648"]=SM_087,
        ["5649"]=SM_088,
	["1000"]=SM_100,
	["1001"]=SM_101,
	["2000"]=SM_102,
	["2001"]=SM_103,
	["1003"]=SM_091,--YD雅典玩家
	["1004"]=SM_092--SBD

};

--战场
local Battlefield_msg =
{

	["100"]=SM_089,
	["1001"]=SM_091,--YD雅典玩家
	["1002"]=SM_092,--SBD
	["1003"]=SM_093,
	["1004"]=SM_094,
	["51040"]=SM_51040,
	["51050"]=SM_51050,
	["10001"]=LD_10001,
	["10002"]=LD_10002,
	["10003"]=LD_10003,
	["10004"]=LD_10004,
	["10005"]=LD_10005,
	["10012"]=NF_L0_WKD10012,
	["10013"]=NF_L0_WKD10013,
	["10022"]=NF_L0_WKD10022,
	["10023"]=NF_L0_WKD10023,
	["10031"]=NF_L0_WKD10031,
	["10032"]=NF_L0_WKD10032,
	["10041"]=NF_L0_THWAR10041,
	["10042"]=NF_L0_THWAR10042,
	["10043"]=NF_L0_THWAR10043,
	["10044"]=NF_L0_THWAR10044,
	["10051"]=NF_L0_THWAR10051,
	["10052"]=NF_L0_THWAR10052,
	["10053"]=NF_L0_THWAR10053,
	["000021"] = Twar_msg_000021,
	["000022"] = Twar_msg_000022,

};

--公会保卫活动
local Association_msg =
{

	["1000"]=SM_102,
	["1001"]=SM_103,
	["1002"]=SM_104,
	["1003"]=SM_105,
	["1004"]=SM_106,
	["1005"]=SM_107,
	["1006"]=SM_108,
	["1007"]=SM_109,
	["1008"]=SM_110,
	["1009"]=SM_111
};

--公会保卫活动2杀怪公告积分
local Association_msg2 =
{

	["1"] = SM_121,
	["2"] = SM_122,
	["3"] = SM_123,
	["4"] = SM_124,
	["5"] = SM_125,
	["11"] = SM_127,
	["12"] = SM_128,
	["13"] = SM_129,
	["14"] = SM_130,
	["15"] = SM_131,
	["32"] = SM_132,
	["33"] = SM_133,
	["34"] = SM_134,
	["35"] = SM_135,
	["36"] = SM_136,
	["37"] = SM_137,
	["38"] = SM_138
};

--公会保卫活动3boss
local Association_msg3 =
{
	["1"]=SM_126

};

--公会活动
local Union_msg =
{

	["1"]=SM_201,
	["2"]=SM_202

};

--新手活动
local New_msg =
{

	["101"]=SM_2000,
	["102"]=SM_2001,
	["103"]=SM_2002,
        ["0"]=SM_2003,
        ["9"]=SM_2004,
        ["49"]=SM_2005,
        ["99"]=SM_2006,
        ["199"]=SM_2007,
        ["299"]=SM_2008,
        ["399"]=SM_2009,
        ["499"]=SM_2010,
        ["599"]=SM_2011,
        ["699"]=SM_2012,
	["799"]=SM_2013,
	["899"]=SM_2014,
	["999"]=SM_2015,
	["1099"]=SM_2016,
	["1199"]=SM_2017


};

--中秋
local Newone_msg =
{
["101"]	=	GW_101,
["0"]	=	GW_0,
["1"]	=	GW_1,
["100"]	=	GW_100,
["102"]	=	GW_102,
["2"]	=	GW_2,
["103"]	=	GW_103,
["53"]	=	GW_53,
["3"]	=	GW_3,
["52"]	=	GW_52,
["104"]	=	GW_104,
["50"]	=	GW_50,
["51"]	=	GW_51,
["54"]	=	GW_54,
["4"]	=	GW_4,
["152"]	=	GW_152
};


--新手活动2
local Newtwo_msg =
{

	["105"]=SM_2019,
	["106"]=SM_2020,
        ["0"]=SM_2003,
        ["9"]=SM_2004,
        ["49"]=SM_2005,
        ["99"]=SM_2006,
        ["199"]=SM_2007,
        ["299"]=SM_2008,
        ["399"]=SM_2009,
        ["499"]=SM_2010,
        ["599"]=SM_2011,
        ["699"]=SM_2012,
	["799"]=SM_2013,
	["899"]=SM_2014,
	["999"]=SM_2015,
	["1099"]=SM_2016,
	["1199"]=SM_2017

};

--健康跑
local Health_msg =
{
	["1"] = SM_001,
	["2"] = SM_002,
	["3"] = SM_003,
	["4"] = SM_004,
	["5"] = SM_005,
	["6"] = SM_006,
	["7"] = SM_007,
	["8"] = SM_008,
	["9"] = SM_009,
	["10"] = SM_010,
	["100"] = SM_312,
	["1000"] = SM_300,
	["1001"] = SM_301,
	["1002"] = SM_302,
	["1003"] = SM_303,
	["1004"] = SM_304,
	["1005"] = SM_305,
	["1006"] = SM_306,
	["1007"] = SM_307,
	["1008"] = SM_308,
	["1009"] = SM_309,
	["1010"] = SM_310,
	["1011"] = SM_311,
	["1012"] = SM_312,
	["1013"] = SM_313,
	["1014"] = SM_314,
	["1015"] = SM_315,
	["1016"] = SM_316,
	["1017"] = SM_317,
	["1018"] = SM_318,
	["1019"] = SM_319

}
--战场奖励
local Tige_msg =
{
	["3102"]=SM_3102,
	["3103"]=SM_3103,
	["3104"]=SM_3104,
	["3105"]=SM_3105,
	["3106"]=SM_3106,
	["3107"]=SM_3107,
	["5000"]=SM_5000,
	["5001"]=SM_5001,
	["5102"]=SM_5102,
	["51060"]=SM_51060,
	["51160"]=SM_51160,
	["4822"] = SKL_MS4822,
	["4823"] = SKL_MS4823,
	["4824"] = SKL_MS4824,
	["4826"] = SKL_MS4826,
    ["16119"] = SM_16119,
    ["16120"] = SM_16120,
    ["26120"] = SM_26120,
    ["00002"] = NF_L0_TR0002,
    ["00005"] = NF_L0_TR0005,
    ["002001"] = Twar_msg_002001,
    ["008003"] = Twar_msg_008003,



};
--战场奖励
local Tiges_msg =
{
	["1000"]=SM_3111,
	["1001"]=SM_3112,
	["1002"]=SM_3113,
	["1003"]=SM_3114,
	["2001"]=SM_3115,
	["2002"]=SM_3116,
	["4004"]=SM_4004,
	["4005"]=SM_4005,
	["4006"]=SM_4006,
	["4007"]=SM_4007,
	["4008"]=SM_4008,
	["4009"]=SM_4009,
	["4010"]=SM_4010,
	["4011"]=SM_4011,
	["4012"]=SM_4012,
	["5001"]=SM_3115,
	["5002"]=SM_5002,
	["5003"]=SM_5003,
	["51010"]=SM_51010,
	["51020"]=SM_51020,
	["51100"]=SM_092,
	["51110"]=SM_091,
	["51180"]=SM_51180,
	["51190"]=SM_51190,
    ["61001"]=SM_61001,
    ["61002"]=SM_61002,
	["10004"]=WARMS_10004,
	["10005"]=WARMS_10005,
	["0"]=WARMS_0,
	["1"]=WARMS_1,
};
--1
local Newthree_msg =
{

	["107"]=SM_2021

};


--2
local Newfour_msg =
{

	["108"]=SM_2022

};


--3
local Newfive_msg =
{

	["109"]=SM_2023

};

--4
local Newsix_msg =
{

	["110"]=SM_2024

};


--5
local Newseven_msg =
{

	["111"]=SM_2025

};


--6
local Neweight_msg =
{

	["112"]=SM_2026

};


--7
local Newnight_msg =
{

	["113"]=SM_2027

};

--zeus
local Zeus_msg =
{

	["1230"]=ZEUS_1230,
	["1231"]=ZEUS_1231,
	["1232"]=ZEUS_1232,
	["1233"]=ZEUS_1233,
	["1234"]=ZEUS_1234,
	["1235"]=ZEUS_1235,
	["1236"]=ZEUS_1236

};

--副本
local FuBen_msg =
{

	["1"]=FB_0001,
	["2"]=FB_0002,
	["3"]=FB_0003,
	["4"]=FB_0004,
	["5"]=FB_0005,
        ["6"]=FB_0006,
};
--道具调用技能
local DaoJu_msg =
{

	["50"]=DJ_0001,
	["51"]=DJ_0002,
	["52"]=DJ_0003,
	["53"]=DJ_0004,
	["54"]=DJ_0005,
	["00051"]=Twar_msg_00051,
	["00052"]=Twar_msg_00052,

};

-- 潘神的化身
local pan_msg =
{

        ["3820"]=XD_001,
        ["3821"]=XD_002,
        ["3822"]=XD_003,
        ["3823"]=XD_004,
        ["3824"]=XD_005,
        ["3825"]=XD_006,
        ["4262"]=XD_007,
        ["4263"]=XD_008,
        ["4264"]=XD_009,
        ["4265"]=XD_010,
        ["4222"]=XD_011,
        ["4212"]=XD_012,
        ["4202"]=XD_013,
        ["4252"]=XD_014,
        ["9961"]=XD_015,
        ["4182"]=XD_016,
        ["4062"]=XD_017,
        ["4061"]=XD_018,
        ["10106"]=XD_019,
	["4109"]=XD_020,
	["9991"]=XD_021,
	["4232"]=XD_022,
	["4201"]=XD_023,
	["4231"]=XD_024,
	["4221"]=XD_025,
	["4211"]=XD_026,
	["4230"]=XD_027,
	["9990"]=XD_028,
	["9960"]=XD_029,
	["4112"]=XD_030,
	["4151"]=XD_031,
	["4511"]=XD_032,
	["4502"]=XD_033,
	["10083"]=XD_034,
	["3819"]=XD_035,
	["1"]=XD_067,		--YD雅典玩家
	["0"]=XD_068,		--SBD
	["1000"]=XD_069

};


--结婚
local Mail_msg =
{

	["5101"]=MAIL_5101,
	["5102"]=MAIL_5102,
	["5103"]=MAIL_5103,
	["5203"]=MAIL_5203,
	["5303"]=MAIL_5303,
	["5403"]=MAIL_5403


};
--利兰丁农场
SrvMsg_Lelantine_msg =
{
	["51070"]=SM_51070,
	["51080"]=SM_51080,
	["51090"]=SM_51090,
	["5201"]=NF_L0_THWAR5201,
	["5202"]=NF_L0_THWAR5202,
	["5203"]=NF_L0_THWAR5203,
	["5204"]=NF_L0_THWAR5204,
	["5301"]=NF_L0_THWAR5301,
	["5303"]=NF_L0_THWAR5303,
	["5402"]=NF_L0_THWAR5402,
	["5403"]=NF_L0_THWAR5403,
	["5602"]=NF_L0_THWAR5602,

};
---跨服战场
SrvMsg_Twar_msg =
{
	["002101"]=Twar_msg_002101,
	["002102"]=Twar_msg_002102,
	["002111"]=Twar_msg_002111,
	["002112"]=Twar_msg_002112,
	["002113"]=Twar_msg_002113,
	["002211"]=Twar_msg_002211,
	["002213"]=Twar_msg_002213,
	["008001"]=NF_L0_THWAR008001,
	["008011"]=NF_L0_THWAR008011,
	["008002"]=NF_L0_THWAR008002,
	["008012"]=NF_L0_THWAR008012,

};
function Broadcastmsg(notetype,channel,name,note)

	strText = "";
	if notetype == NOTE_1  then--技能书
		msg_table = Split(note,"#");
		strText ="|cff76EE00"..skill_msg[msg_table[0]]..name..skill_msg[msg_table[1]]..skill_msg[msg_table[2]].."|cFFFFFFFF";
		elseif notetype == NOTE_10  then--战场
		msg_table = Split(note,"#");
		strText = Battlefield_msg[msg_table[0]] .. name .. LuaText["War_PDS_Notice100"] .. msg_table[1] .. LuaText["War_PDS_Notice101"];

   	elseif notetype == SrvMsg_NOTE_209 then --宙斯宝箱
        	msg_table = Split(note,"#");
        	strText = string.format(LuaText["zeusskillbookmsg"], name, skillbook[msg_table[0]])

    	elseif notetype == SrvMsg_NOTE_210 then --兑换宗师级技能
        	msg_table = Split(note,"#");
        	strText = string.format(LuaText["skillbookmsg"], name, skillbook[msg_table[0]])

	elseif notetype == NOTE_20  then----跨级任务

		strText = SM_L0_05.."\""..name.."\""..SM_L0_06;

	elseif notetype == SrvMsg_NOTE_208 then --特洛伊公告修改
		strText = GuardianDesign

	elseif notetype == SrvMsg_NOTE_207 then --特洛伊公告修改
		strText = string.format(glory005m, name)

		elseif notetype == NOTE_30  then--公会活动
		msg_table = Split(note,"#");
		strText =  SM_3115 .. name .. Union_msg[msg_table[0]];

		elseif notetype == SrvMsg_NOTE_183  then--运气大比拼-领 / 刺杀
				if name == "murderHpPercent" then --血量公告
					camp = "";
					add = "";
					msg_table = Split(note,"#")

					if msg_table[1] == "0" then -- 判断地点
						add = LuaText["Murder_NoticeAGLS"];
						camp = LuaText["Murder_NoticeSBD"];
					else
						add = LuaText["Murder_NoticeMJLHA"];
						camp = LuaText["Murder_NoticeYD"];
					end;

					if msg_table[0] == "10" then
						strText =  LuaText["Murder_Notice6"] .. add .. LuaText["Murder_Notice3"];
					elseif msg_table[0] == "30" then
						strText =  LuaText["Murder_Notice5"] .. add .. LuaText["Murder_Notice3"];
					elseif msg_table[0] == "50" then
						strText =  LuaText["Murder_Notice4"] .. add .. LuaText["Murder_Notice3"];
					elseif msg_table[0] == "80" then
						strText = LuaText["Murder_Notice1"] .. add .. LuaText["Murder_Notice3"];
					end;

				elseif name == "murderOver" then --死亡（活动结束）
					camp = "";
					if note == "0"  then
						camp = LuaText["Murder_NoticeSBD"];
					else
						camp = LuaText["Murder_NoticeYD"];
					end;
					strText =  LuaText["Murder_Notice7"] .. camp .. LuaText["Murder_Notice8"] .. camp .. LuaText["Murder_Notice9"];
				else
		    msg_table = Split(note,"#");
			strText =  NF_Z_M7 .. name .. NF_Z_M8 .. luck_msg[msg_table[0]];
				end;

        elseif notetype == SrvMsg_NOTE_204 then--金币兑换双倍绑定金币
		msg_table = Split(note,"#");
                strText = MONEYCHANGE1 .. name .. MONEYCHANGE2;
		elseif notetype == SrvMsg_NOTE_205 then --IGG5周年
			strText = string.format(igg5years,name,note)

		elseif notetype == SrvMsg_NOTE_206 then --奖章袋
				strText = string.format(MedalPrice,note)

        elseif notetype == SrvMsg_NOTE_203  then--pvp
		msg_table = Split(note,"#");
                strText =  pvp_msg[msg_table[0]]

        elseif notetype == SrvMsg_NOTE_197  then--春节.....
		msg_table = Split(note,"#");
                strText =  fire_msg[msg_table[0]] .. "|cffF14187" .. name .. "|cFFFFFFFF" .. fire_msg[msg_table[1]];

        elseif notetype == SrvMsg_NOTE_184  then--运气大比拼-111，222，333.....
		msg_table = Split(note,"#");
		strText =  NF_Z_M7 .. name .. NF_Z_M9 .. msg_table[0] .. NF_Z_M10;
        elseif notetype == SrvMsg_NOTE_185  then--运气大比拼-176 / 暑期大礼包
		msg_table = Split(note,"#");
		if msg_table[0] == "SummerVacation" then
			if msg_table[1] == "GiftBag" then --礼包
		        strText =  name .. LuaText["Summer_Notice_GiftBag"];
		    elseif msg_table[1] == "Long" then --龙
		        strText =  name .. LuaText["Summer_Notice_Long"];
			end;
		else
		    strText =  NF_Z_M7 .. name .. NF_Z_M11 .. luck_msg[msg_table[0]];

		end;
	elseif notetype == SrvMsg_NOTE_186  then--幸运神明
		msg_table = Split(note,"#");
		strText =  NF_Z_M7 .. name .. NF_L0_L019 .. msg_table[0] .. NF_L0_L020 .. msg_table[1] .. NF_L0_L021;

	elseif notetype == SrvMsg_NOTE_187  then--恶魔岛
		strText =  name .. LuaText["NF_EM_G100"];

	elseif notetype == SrvMsg_NOTE_100  then--周年庆
                msg_table = Split(note,"#");
		strText = NF_L0_TZN926 .. name .. NF_L0_TZN927 .. permit_msg[msg_table[0]];

	elseif notetype == SrvMsg_NOTE_196  then--万圣节
                msg_table = Split(note,"#");
		strText = GW_GHOST112 .. name .. GW_GHOST113;

	elseif notetype == SrvMsg_NOTE_188  then--跨服挑战赛
		name_table = Split(name,"/");
		msg_table = Split(note,"#");
		strText = SrvMsg_Lelantine_msg[msg_table[0]] .. name_table[0] .. SrvMsg_Lelantine_msg[msg_table[1]].. SrvMsg_Lelantine_msg[msg_table[2]].. name_table[1].. SrvMsg_Lelantine_msg[msg_table[3]]

	elseif notetype == SrvMsg_NOTE_189  then--跨服挑战赛
		name_table = Split(name,"/");
		msg_table = Split(note,"#");
		strText = SrvMsg_Lelantine_msg[msg_table[0]] .. name_table[0] .. SrvMsg_Lelantine_msg[msg_table[1]].. SrvMsg_Lelantine_msg[msg_table[2]].. name_table[1]..NF_L0_THWAR0011.. msg_table[3] ..NF_L0_THWAR0001

	elseif notetype == SrvMsg_NOTE_190  then--跨服挑战赛
		msg_table = Split(note,"#");
		strText = SrvMsg_Lelantine_msg[msg_table[0]] .. name .. SrvMsg_Lelantine_msg[msg_table[1]].. msg_table[2].. NF_L0_THWAR0002

	elseif notetype == SrvMsg_NOTE_193  then--跨服战场
		name_table = Split(name,"/");
		msg_table = Split(note,"#");
		strText = "|cffF14187"..name_table[0] .. SrvMsg_Twar_msg[msg_table[0]] .. name_table[1] .. SrvMsg_Twar_msg[msg_table[1]].. msg_table[2].. SrvMsg_Twar_msg[msg_table[3]].."|cFFFFFFFF";

	elseif notetype == SrvMsg_NOTE_194  then--跨服战场
		name_table = Split(name,"/");
		msg_table = Split(note,"#");
		strText = "|cffF14187"..name_table[0] .. SrvMsg_Twar_msg[msg_table[0]] .. name_table[1] .. SrvMsg_Twar_msg[msg_table[1]].."|cFFFFFFFF";

	elseif notetype == SrvMsg_NOTE_195  then--跨服战场
		msg_table = Split(note,"#");
		strText = "|cffF14187".. name .. SrvMsg_Twar_msg[msg_table[0]] .. msg_table[1] .. SrvMsg_Twar_msg[msg_table[2]].."|cFFFFFFFF";


    elseif notetype == SrvMsg_NOTE_192  then--七夕
    	strText =  NF_Z_M7 .. name .. NF_L0_CD108;

	elseif notetype == SrvMsg_NOTE_191  then--特洛伊
		strText =  name .. note;

        elseif notetype == NOTE_40  then--开启复活节礼包
		msg_table = Split(note,"#");
		strText = name .. MSGREVIVE4;

        elseif notetype == NOTE_50  then--新手活动1
		msg_table = Split(note,"#");
		strText = Newone_msg[msg_table[0]] .. GW_map;

        elseif notetype == NOTE_60  then--新手活动2
		msg_table = Split(note,"#");
		strText = Newtwo_msg[msg_table[0]] .. Newtwo_msg[msg_table[1]] .. Newtwo_msg[msg_table[2]];

	elseif notetype == SrvMsg_NOTE_198 then --彩票1
		strText = string.format(Lottobroadcast1,note)

	elseif notetype == SrvMsg_NOTE_199 then --彩票2
		strText = note .. Lottobroadcast2

	elseif notetype == SrvMsg_NOTE_200 then --彩票2
		strText = Lottobroadcast3

	elseif notetype == SrvMsg_NOTE_201 then --传说
		strText = string.format(LegendaryMsg[tonumber(Split(note,"#")[0])],unpack(Split(note,"#")))


	elseif notetype == SrvMsg_NOTE_202 then--圣石礼包兑换
		msg_table = Split(note,"#");
		strText = HolyPackage8 .. name .. HolyPackage9;



	elseif notetype == NOTE_70  then--复活节
		msg_table = Split(note,"#");
		strText = MSGREVIVE1 .. name .. MSGREVIVE2 .. msg_table[0] .. MSGREVIVE3;

        elseif notetype == NOTE_80  then--1
		msg_table = Split(note,"#");
		strText = Newthree_msg[msg_table[0]];

        elseif notetype == NOTE_90  then--2
		msg_table = Split(note,"#");
		strText = Newfour_msg[msg_table[0]];

        elseif notetype == NOTE_100  then--3
		msg_table = Split(note,"#");
		strText = Newfive_msg[msg_table[0]];

        elseif notetype == NOTE_110  then--4
		msg_table = Split(note,"#");
		strText = Newsix_msg[msg_table[0]];

        elseif notetype == NOTE_120  then--5
		msg_table = Split(note,"#");
		strText = Newseven_msg[msg_table[0]];

        elseif notetype == NOTE_130  then--6
		msg_table = Split(note,"#");
		strText = Neweight_msg[msg_table[0]];

	elseif notetype == NOTE_140  then--公会活动2
		msg_table = Split(note,"#");
		strText = name .. Association_msg2[msg_table[0]] .. name .. SM_132 .. msg_table[1] .. SM_133 .. msg_table[2];

	elseif notetype == NOTE_150  then--公会活动3
		msg_table = Split(note,"#");
		strText = Association_msg2[msg_table[0]] .. Association_msg2[msg_table[1]];

        elseif notetype == NOTE_41  then--7
		msg_table = Split(note,"#");
		strText = Newnight_msg[msg_table[0]];

	elseif notetype == NOTE_160  then--健康跑
		msg_table = Split(note,"#");
		strText =SM_300 .. name .. SM_310 ..msg_table[0] .. SM_314;

	elseif notetype == NOTE_170  then
		msg_table = Split(note,"#");
		strText =Health_msg[msg_table[2]] .. name .. SM_306 .. msg_table[3] .. Health_msg[msg_table[1]];

        elseif notetype == NOTE_42  then
		msg_table = Split(note,"#");
		strText = name .. SM_310 .. msg_table[1] .. SM_303 .. msg_table[0] .. SM_304;

        elseif notetype == NOTE_43  then
		msg_table = Split(note,"#");
		strText = Health_msg[msg_table[0]];

        elseif notetype == NOTE_44  then
		msg_table = Split(note,"#");
		strText = Association_msg2[msg_table[0]] .. SM_132 .. msg_table[1] .. SM_132 .. msg_table[2];

        elseif notetype == NOTE_45  then
		msg_table = Split(note,"#");
		strText = Association_msg2[msg_table[0]] .. Association_msg2[msg_table[1]];
        elseif notetype == NOTE_46  then
		msg_table = Split(note,"#");
		strText = name .. NF_L0_Z1519;
        elseif notetype == NOTE_47  then
		msg_table = Split(note,"#");
		strText = name .. NF_L0_Z1520 .. Zeus_msg[msg_table[0]];
        elseif notetype == NOTE_48  then
		msg_table = Split(note,"#");
		strText = "|cffF14187"..name..Tige_msg[msg_table[0]].."|cFFFFFFFF";
        elseif notetype == NOTE_49  then
		msg_table = Split(note,"#");
		strText = Tiges_msg[msg_table[0]]..name..Tiges_msg[msg_table[1]];
        elseif notetype == NOTE_59  then
		msg_table = Split(note,"#");
		strText = Tiges_msg[msg_table[0]]..name..Tiges_msg[msg_table[1]]..Tiges_msg[msg_table[2]];
        elseif notetype == NOTE_51  then--战场/特洛伊
		msg_table = Split(note,"#");
		if msg_table[0] == "troy" then
		    strText = LuaText["Troy_Notice" .. msg_table[1]]
		else
		    strText = Battlefield_msg[msg_table[0]];
                end;
        elseif notetype == NOTE_180  then
		msg_table = Split(note,"#");
		strText = name .. FuBen_msg[msg_table[0]];
        elseif notetype == NOTE_190  then
		msg_table = Split(note,"#");
		strText = pan_msg[msg_table[0]] .. name .. pan_msg[msg_table[1]] .. pan_msg[msg_table[2]];
        elseif notetype == NOTE_180  then
		msg_table = Split(note,"#");
		strText = name .. FuBen_msg[msg_table[0]];
        elseif notetype == SrvMsg_NOTE_181  then
		msg_table = Split(note,"#");
		strText = name .. SrvMsg_Lelantine_msg[msg_table[0]]..msg_table[2]..SrvMsg_Lelantine_msg[msg_table[1]];
        elseif notetype == NOTE_191  then
		msg_table = Split(note,"#");
		strText = DaoJu_msg[msg_table[0]];
        elseif notetype == NOTE_193  then
		name_table = Split(name,"/");
		msg_table = Split(note,"#");
		strText = Mail_msg[msg_table[0]] .. name_table[0] .. Mail_msg[msg_table[1]].. name_table[1] .. Mail_msg[msg_table[2]];
        elseif notetype == NOTE_192  then
		name_table = Split(name,"/");
		msg_table = Split(note,"#");
		strText = name_table[0] .. Mail_msg[msg_table[0]] .. name_table[1] .. Mail_msg[msg_table[1]].. name_table[2] .. Mail_msg[msg_table[2]];
	    elseif notetype == SrvMsg_NOTE_182 then----答题系统
      		msg_table = Split(note,"#");
		if msg_table[0] == "1" then
			strText = AS_L0_005
		else
			strText = AS_L0_004
		end
		if msg_table[1] == "1" then
			strText = strText..name..AS_L0_001
		else
			strText = strText..name..AS_L0_002..msg_table[1]..AS_L0_003
		end
	    if msg_table[0] == "20" then
			strText = AS_L0_006..name..AS_L0_007
		end


	end;


	if channel == CHANNEL_MIDDLE  then
		GameAPI:AddProclaimMessage_UTF8(strText,1);
        elseif channel == CHANNEL_PRESONAL  then
		GameAPI:AddPersonalMessage_UTF8(strText,6,1);
        elseif channel == CHANNEL_MOVE  then
       		DynamicText_AddMsg(strText);
    	end;

end

function Split(szFullString, szSeparator)
	local nFindStartIndex = 1;
	local nSplitIndex = 0;
	local nSplitArray = {};
	while true do
   		local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex);
   		if not nFindLastIndex then
    			nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString));
    			break;
   		end;
   		nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1);
   		nFindStartIndex = nFindLastIndex + string.len(szSeparator);
   		nSplitIndex = nSplitIndex + 1;
	end;
	return nSplitArray;
end
