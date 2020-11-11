local uiapi=UIAPI
local win = nil;
local win1 = nil;
local container1 = nil;
local container2 = nil;
local cont1_text = nil;
local cont2_text = nil;

local		Aries_1					= 0;--白羊座
local		Taurus_2				= 1;--金牛座
local		Gemini_3				= 2;--双子座
local		Cancer_4				= 3;--巨蟹座
local		Leo_5					= 4;--狮子座
local		Virgo_6					= 5;--处女座
local		Libra_7					= 6;--天秤座
local		Scorpio_8				= 7;--天蝎座
local		Sagittarius_9			= 8;--射手座
local		Capricorn_10			= 9;--摩羯座
local		Aquarius_11				= 10;--水瓶座
local		Pisces_12				= 11;--双鱼座

--tavia 增加
local         win_main = nil;
--local         comulate_speed= nil;
local         need_energy_text = nil;
local         need_energy = nil;
local         need_lev_text = nil;
local         need_lev = nil;
local         star_array = {};

local	       exp_accumulate = nil
local	       special_accumulate = nil
local	       next_lev = nil
local	       next_exp_accumulate_text = nil
local	       next_exp_accumulate = nil
local	       next_special_accumulate_text = nil
local	       next_special_accumulate = nil
local	       lev_up = nil
local	       exp_levup_energy_text = nil
local	       exp_levup_energy = nil
local	       exp_levup_gold_text = nil
local	       exp_levup_gold = nil

local	       exp_all_accumulate = nil
local	       special_all_accumulate = nil

local         add_btn = nil;
local         constellation_tab = nil;
local         exp_accumulate_tab = nil;
local         lev_up_btn = nil;




function Constellation_OnLoad()
    win = uiapi:GetElement("RoleCreateShowWin");
    win1 = uiapi:GetElement("RoleCreateWin");
    container2 = win:GetChild("Container2");
	cont1_text =win1:GetChild("ConstellationEditText");
	cont1_text:SetText(L_X0_20);
	cont2_text =container2:GetChild("ConstellationContent");
	cont2_text:SetText(Get_Constellation_Cofig(0).static_text);

end

function Constellation_Init()
	win_main = uiapi:GetElement("ConstellationWin");
	--comulate_speed = win_main:GetChild("AccumulateSp");
	need_energy_text = win_main:GetChild("NeedPowerName");
	need_energy = win_main:GetChild("NeedPower");
	need_lev_text = win_main:GetChild("NeedLevName");
	need_lev = win_main:GetChild("NeedLev");

	--20个星星
	for i = 1, 20 ,1 do
		str = "Star"
		star_array[i] = win_main:GetChild(str..i);
	end
	tabbar = win_main:GetChild("ConstellationTabBar")
	exp_tab = tabbar:GetChild("ExpAccumulate")
	exp_accumulate = exp_tab:GetChild("NowExpAccumulate")
	special_accumulate = exp_tab:GetChild("NowSpecialAccumulate")
	max_exp_accumulate = exp_tab:GetChild("MaxExpAccumulate")
	max_special_accumulate = exp_tab:GetChild("MaxSpecialAccumulate")
	next_lev = exp_tab:GetChild("NextLev")
	next_exp_accumulate_text = exp_tab:GetChild("NextExpAccumulateText")
	next_exp_accumulate = exp_tab:GetChild("NextExpAccumulate")
	next_special_accumulate_text = exp_tab:GetChild("NextSpecialAccumulateText")
	next_special_accumulate = exp_tab:GetChild("NextSpecialAccumulate")
	lev_up = exp_tab:GetChild("LevUp")
	exp_levup_energy_text = exp_tab:GetChild("LevUpPowerText")
	exp_levup_energy = exp_tab:GetChild("LevUpPower")
	exp_levup_gold_text = exp_tab:GetChild("LevUpGoldText")
	exp_levup_gold = exp_tab:GetChild("LevUpGold")
	exp_all_accumulate =  exp_tab:GetChild("ExpText")
	special_all_accumulate =  exp_tab:GetChild("SpecialText")

	add_btn = win_main:GetChild("AddBtn");
	constellation_tab = win_main:GetChild("ConstellationTabBar");
	exp_accumulate_tab = constellation_tab:GetChild("ExpAccumulate");
    lev_up_btn = exp_accumulate_tab:GetChild("LevUpBtn");

	win_main:UpdateRenderBuffer();

end
--白羊座
function Constellation_OnClickAriesBtn()
    win = uiapi:GetElement("RoleCreateShowWin");
    container2 = win:GetChild("Container2");
	cont2_text =container2:GetChild("ConstellationContent");
	cont2_text:SetText(Get_Constellation_Cofig(0).static_text);

	win1 = uiapi:GetElement("ConstellationChooseWin");
	win1:Visible(not win1:IsVisible());
	if win1:IsVisible() then
		win1:Top();
	end

	win2 = uiapi:GetElement("RoleCreateWin");
	cont1_text =win2:GetChild("ConstellationEditText");
	cont1_text:SetText(L_X0_20);
	GameAPI:SetConsSelect(Aries_1);--C++接口，设置所选
end

--金牛座
function Constellation_OnClickTaurusBtn()
    win = uiapi:GetElement("RoleCreateShowWin");
    container2 = win:GetChild("Container2");
	cont2_text =container2:GetChild("ConstellationContent");
	cont2_text:SetText(Get_Constellation_Cofig(1).static_text);

	win1 = uiapi:GetElement("ConstellationChooseWin");
	win1:Visible(not win1:IsVisible());
	if win1:IsVisible() then
		win1:Top();
	end

	win2 = uiapi:GetElement("RoleCreateWin");
	cont1_text =win2:GetChild("ConstellationEditText");
	cont1_text:SetText(L_X0_21);
	GameAPI:SetConsSelect(Taurus_2);--C++接口，设置所选
end

--双子座
function Constellation_OnClickGeminiBtn()
    win = uiapi:GetElement("RoleCreateShowWin");
    container2 = win:GetChild("Container2");
	cont2_text =container2:GetChild("ConstellationContent");
	cont2_text:SetText(Get_Constellation_Cofig(2).static_text);

	win1 = uiapi:GetElement("ConstellationChooseWin");
	win1:Visible(not win1:IsVisible());
	if win1:IsVisible() then
		win1:Top();
	end

	win2 = uiapi:GetElement("RoleCreateWin");
	cont1_text =win2:GetChild("ConstellationEditText");
	cont1_text:SetText(L_X0_22);
	GameAPI:SetConsSelect(Gemini_3);--C++接口，设置所选
end

--巨蟹座
function Constellation_OnClickCancerBtn()
    win = uiapi:GetElement("RoleCreateShowWin");
    container2 = win:GetChild("Container2");
	cont2_text =container2:GetChild("ConstellationContent");
	cont2_text:SetText(Get_Constellation_Cofig(3).static_text);

	win1 = uiapi:GetElement("ConstellationChooseWin");
	win1:Visible(not win1:IsVisible());
	if win1:IsVisible() then
		win1:Top();
	end

	win2 = uiapi:GetElement("RoleCreateWin");
	cont1_text =win2:GetChild("ConstellationEditText");
	cont1_text:SetText(L_X0_23);
	GameAPI:SetConsSelect(Cancer_4);
end

--狮子座
function Constellation_OnClickLeoBtn()
    win = uiapi:GetElement("RoleCreateShowWin");
    container2 = win:GetChild("Container2");
	cont2_text =container2:GetChild("ConstellationContent");
	cont2_text:SetText(Get_Constellation_Cofig(4).static_text);

	win1 = uiapi:GetElement("ConstellationChooseWin");
	win1:Visible(not win1:IsVisible());
	if win1:IsVisible() then
		win1:Top();
	end

	win2 = uiapi:GetElement("RoleCreateWin");
	cont1_text =win2:GetChild("ConstellationEditText");
	cont1_text:SetText(L_X0_24);
	GameAPI:SetConsSelect(Leo_5);
end

--处女座
function Constellation_OnClickVirgoBtn()
    win = uiapi:GetElement("RoleCreateShowWin");
    container2 = win:GetChild("Container2");
	cont2_text =container2:GetChild("ConstellationContent");
	cont2_text:SetText(Get_Constellation_Cofig(5).static_text);

	win1 = uiapi:GetElement("ConstellationChooseWin");
	win1:Visible(not win1:IsVisible());
	if win1:IsVisible() then
		win1:Top();
	end

	win2 = uiapi:GetElement("RoleCreateWin");
	cont1_text =win2:GetChild("ConstellationEditText");
	cont1_text:SetText(L_X0_25);
	GameAPI:SetConsSelect(Virgo_6);
end

--天枰座
function Constellation_OnClickLibraBtn()
    win = uiapi:GetElement("RoleCreateShowWin");
    container2 = win:GetChild("Container2");
	cont2_text =container2:GetChild("ConstellationContent");
	cont2_text:SetText(Get_Constellation_Cofig(6).static_text);

	win1 = uiapi:GetElement("ConstellationChooseWin");
	win1:Visible(not win1:IsVisible());
	if win1:IsVisible() then
		win1:Top();
	end

	win2 = uiapi:GetElement("RoleCreateWin");
	cont1_text =win2:GetChild("ConstellationEditText");
	cont1_text:SetText(L_X0_26);
	GameAPI:SetConsSelect(Libra_7);
end

--天蝎座
function Constellation_OnClickScorpioBtn()
    win = uiapi:GetElement("RoleCreateShowWin");
    container2 = win:GetChild("Container2");
	cont2_text =container2:GetChild("ConstellationContent");
	cont2_text:SetText(Get_Constellation_Cofig(7).static_text);

	win1 = uiapi:GetElement("ConstellationChooseWin");
	win1:Visible(not win1:IsVisible());
	if win1:IsVisible() then
		win1:Top();
	end

	win2 = uiapi:GetElement("RoleCreateWin");
	cont1_text =win2:GetChild("ConstellationEditText");
	cont1_text:SetText(L_X0_27);
	GameAPI:SetConsSelect(Scorpio_8);
end

--射手座
function Constellation_OnClickSagittariusBtn()
    win = uiapi:GetElement("RoleCreateShowWin");
    container2 = win:GetChild("Container2");
	cont2_text =container2:GetChild("ConstellationContent");
	cont2_text:SetText(Get_Constellation_Cofig(8).static_text);

	win1 = uiapi:GetElement("ConstellationChooseWin");
	win1:Visible(not win1:IsVisible());
	if win1:IsVisible() then
		win1:Top();
	end

	win2 = uiapi:GetElement("RoleCreateWin");
	cont1_text =win2:GetChild("ConstellationEditText");
	cont1_text:SetText(L_X0_28);
	GameAPI:SetConsSelect(Sagittarius_9);
end

--魔杰座
function Constellation_OnClickCapricornBtn()
    win = uiapi:GetElement("RoleCreateShowWin");
    container2 = win:GetChild("Container2");
	cont2_text =container2:GetChild("ConstellationContent");
	cont2_text:SetText(Get_Constellation_Cofig(9).static_text);

	win1 = uiapi:GetElement("ConstellationChooseWin");
	win1:Visible(not win1:IsVisible());
	if win1:IsVisible() then
		win1:Top();
	end

	win2 = uiapi:GetElement("RoleCreateWin");
	cont1_text =win2:GetChild("ConstellationEditText");
	cont1_text:SetText(L_X0_29);
	GameAPI:SetConsSelect(Capricorn_10);
end

--水瓶座
function Constellation_OnClickAquariusBtn()
    win = uiapi:GetElement("RoleCreateShowWin");
    container2 = win:GetChild("Container2");
	cont2_text =container2:GetChild("ConstellationContent");
	cont2_text:SetText(Get_Constellation_Cofig(10).static_text);

	win1 = uiapi:GetElement("ConstellationChooseWin");
	win1:Visible(not win1:IsVisible());
	if win1:IsVisible() then
		win1:Top();
	end

	win2 = uiapi:GetElement("RoleCreateWin");
	cont1_text =win2:GetChild("ConstellationEditText");
	cont1_text:SetText(L_X0_30);
	GameAPI:SetConsSelect(Aquarius_11);
end

--双鱼座
function Constellation_OnClickPiscesBtn()
    win = uiapi:GetElement("RoleCreateShowWin");
    container2 = win:GetChild("Container2");
	cont2_text =container2:GetChild("ConstellationContent");
	cont2_text:SetText(Get_Constellation_Cofig(11).static_text);

	win1 = uiapi:GetElement("ConstellationChooseWin");
	win1:Visible(not win1:IsVisible());
	if win1:IsVisible() then
		win1:Top();
	end

	win2 = uiapi:GetElement("RoleCreateWin");
	cont1_text =win2:GetChild("ConstellationEditText");
	cont1_text:SetText(L_X0_31);
	GameAPI:SetConsSelect(Pisces_12);
end

local	CONS_CREATED		= 0;
--同步
local	SID_SYN_ALL			= 1;
--更换星座
local	CONS_CHANGE			= 2;
--星座升级
local	SID_CONS_LEVUP		= 3;
--宝石开户
local	CONS_STONE_OPEN		= 4;
--星座能量增长
local	SID_ENERGY_INCR		= 5;
--宝石升级
local	CONS_STONE_LEVUP	= 6;

local	SID_EXP_SK_INCR		= 7;
local   SID_ENERGY_RETURN   = 8;

local   SID_GET_EXPSK		= 9;
local   SID_STONE_LEVUP     = 10;
local   SID_SYN_SK		    = 11;
--技能培养
local   CONS_STONE_SKILLGROW     = 12;
----激活格子
local   CONS_GIRD_ACTIVE     = 100;
---升级格子
local   CONS_GIRD_LEVUP     = 101;

local   FREE = 1;
local   GOLD = 2;

--cons attr
local   		CONSATTR_TYPE 	= 1;
local   		CONSATTR_STATU 	= 2;
local   		CONSATTR_LEV 	= 3;
local   		CONSATTR_ENERGY = 4;
local   		CONSATTR_EXP 	= 5;
local   		CONSATTR_SKILL 	= 6;
local   		CONSATTR_STONES = 7;
local   		CONSATTR_8 		= 8;
local   		CONSATTR_9 	 	= 9;


local 	OPEN = 1;
local 	LEVUP= 2;

local  STONE_EXP_SK = 0;
local	STONE_SKILL_STAS = 1;
local	STONE_2		 = 2;

local   wincon= nil;
local   winskill=nil;
local   lev= nil;
local    btn_skillGrow = nil;
local   type= nil;
local   energy= nil;
local   SkillNumText=nil;
local   Stone=nil;
local   Flag = nil;

local   s_statuhov = nil;



--此函数提供给C++接口调用
function SMsg(sid,v1,v2,v3)

	if wincon == nil then

		wincon = uiapi:GetElement("ConstellationWin");
		energy =wincon:GetChild("PowerText");
		type = wincon:GetChild("ConstellationName");
		lev = wincon:GetChild("LevelText");
		btn_skillGrow = wincon:GetChild("Button2");
		LuckyDay = wincon:GetChild("LuckyDay");
		ifstate = GameAPI:GetConsAttr(CONSATTR_STATU,0);

		winskill = uiapi:GetElement("SkillViewUI");
		SkillNumText =winskill:GetChild("SkillNumText");




	end

	ifstate = GameAPI:GetConsAttr(CONSATTR_STATU,0);

	if ifstate==0 then
     LuckyDay:SetTexturePos(433,167);
	 s_statuhov = "Not in Lucky Day Mode. Please visit the Zodiac Adviser to activate."
    elseif ifstate==1 then
     LuckyDay:SetTexturePos(433,75);
	 s_statuhov = CON_L0_20
    end

	if sid == SID_ENERGY_INCR then

		energy:SetText(v1..MaxPower_text);
		GameAPI:SetConsAttr(CONSATTR_ENERGY,v1,0);
		--s = CON_L0_1;
		--v2 = v2 / 100;
		--GameAPI:AddPersonalMessage_UTF8(s..v2,6,1);

		--comulate_speed:SetText(v2)

	elseif sid == CONS_CHANGE then

		synconstype(v1);

	elseif sid == SID_STONE_LEVUP then
		print("stonelevup");
		s = CON_L0_2;
		s2= CON_L0_3;
		print("v3=",v3);
		if v3 == GOLD then
			GameAPI:AddPersonalMessage_UTF8(s..v2,6,1);
		elseif v3 ==  FREE then
			GameAPI:AddPersonalMessage_UTF8(s2..v2,6,1);
		end

		levold= GameAPI:GetConsAttr(CONSATTR_STONES,STONE_EXP_SK,0);
		levold = levold + 1;
		lev = wincon:GetChild("LevelText");
		lev:SetText(levold);
		GameAPI:SetConsAttr(CONSATTR_STONES,STONE_EXP_SK,LEVUP);

	elseif sid == SID_SYN_ALL then
		GameAPI:SetConsAttr(CONSATTR_EXP,v1);
		GameAPI:SetConsAttr(CONSATTR_SK,v2);
		synconstype(v1);
		t = GameAPI:GetConsAttr(1,0);
		print("type = ", t);
		type:SetText(t);

		SMsg(CONS_CHANGE,t,0);

		l = GameAPI:GetConsAttr(3,0);
		print("lev = ", l);
		lev = wincon:GetChild("LevelText");
		lev:SetText(l);
		Power_lev= GameAPI:GetConsAttr(CONSATTR_LEV,0);
		local t_conslevup=Get_Constellationlevup_Cofig();
	    MaxPower="MaxPower"..Power_lev;
	    MaxPower_text="/"..t_conslevup[MaxPower]
		e = GameAPI:GetConsAttr(4,0);
		energy:SetText(e..MaxPower_text);
		--同步显示
		Constellation_SynDisplay()

	elseif sid == SID_CONS_LEVUP then

		lev = wincon:GetChild("LevelText");
		lev:SetText(v1);
		energy:SetText(v2);

		GameAPI:SetConsAttr(3,v1,0);

		s = CON_L0_4;
		s2= CON_L0_5
		GameAPI:AddPersonalMessage_UTF8(s..v1..s2,6,1);
		--同步显示
		Constellation_SynDisplay()

	elseif sid == SID_ENERGY_RETURN then

		energy:SetText(v1..MaxPower_text);
		energy:SetText(v1..MaxPower_text);

		--s = CON_L0_6;
		--GameAPI:AddPersonalMessage_UTF8(s..v2,6,1);

	--elseif sid == SID_GET_EXPSK then

		--s2= CON_L0_8;
		--GameAPI:AddPersonalMessage_UTF8(s2..v2,6,1);

	elseif sid == SID_EXP_SK_INCR then

		s = CON_L0_9;
		s2= CON_L0_10;

		if v1 > 0 then
			GameAPI:AddPersonalMessage_UTF8(s..v1,6,1);
		end
		if v2 > 0 then
			GameAPI:AddPersonalMessage_UTF8(s2..v2,6,1);
		end
		Constellation_SynAccumulate()

	elseif sid == SID_SYN_SK then
		SkillNumText:SetText(v1);

		--win3 = uiapi:GetElement("StatusUI");
		--Exp = win2:GetChild("Exp");
		GameAPI:SetAttr(1,v2);
		--Exp:SetText(v2);

		print(v1);
		print(v2);
	elseif sid == CONS_STONE_SKILLGROW then
		print(CON_L0_35);
		btn_skillGrow:SetText(CON_X0_10);

	elseif sid == CONS_GIRD_ACTIVE then
		print(CON_L0_36);
		SkillTrain_ActiveSucceed(v1);

	elseif sid == CONS_GIRD_LEVUP then
		print(CON_L0_37);
		local lev = GameAPI:GetSKGirdAttr(v1);
		local gird = Get_SkillTrain_Config(v1+1);
		local ene = GameAPI:GetConsAttr(CONSATTR_ENERGY,0);

		ene = ene-gird.UpdateE[lev-1]
		energy:SetText(ene..MaxPower_text);
		GameAPI:SetConsAttr(CONSATTR_ENERGY,ene,0);

		SkillTrain_UpGradeSucceed(v1);
	end
end

function Constellation_OnClick()
	print("free");
   GameAPI:ConsEventRequest(0,SID_CONS_LEVUP,1,1);
end

function GetExpSk()
   exp= GameAPI:GetConsAttr(CONSATTR_EXP,0);
   sk = GameAPI:GetConsAttr(CONSATTR_SKILL,0);

   GameAPI:ConsEventRequest(0,SID_GET_EXPSK,0,0);

end
--flags：1：升级 2：技能培养
--小窗口，选择能量还是金币
function StoneOnClick(flags)
	Flag = flags ;
	if flags == 1 then
	   	--statu = GameAPI:GetConsAttr(CONSATTR_STONES,STONE_SKILL_STAS);
		--技能培养宝石已开启
		skill_win = uiapi:GetElement("SkillTrainingWin");
		skill_win:Visible(not skill_win:IsVisible());
		if skill_win:IsVisible() then
			skill_win:Top();
		end
	else
		win = uiapi:GetElement("UpgradeWin");
		container1 = win:GetChild("PowerLevup");
		container2 = win:GetChild("GoldLevup");
		win:Visible(true);
		win:Top();

		uiapi:SetChecked(true,container1);
		uiapi:SetChecked(false,container2);
		Stone=1;
	end


end

function PowerCheck()
	win = uiapi:GetElement("UpgradeWin");
	container2 = win:GetChild("GoldLevup");
	uiapi:SetChecked(false,container2);
    Stone=1;
end

function GoldCheck()
	win = uiapi:GetElement("UpgradeWin");
	container2 = win:GetChild("PowerLevup");
    uiapi:SetChecked(false,container2);
	Stone=2;
end
--判断是哪个功能
function Stone1OnClick()
	if Flag == 0 then
		GameAPI:ConsEventRequest(0,SID_STONE_LEVUP,0,Stone);
	elseif Flag == 1 then
		GameAPI:ConsEventRequest(0,CONS_STONE_SKILLGROW,0,Stone);
	end

	win = uiapi:GetElement("UpgradeWin");
	win:Visible(false);
end

function Stone2OnClick()
	win = uiapi:GetElement("UpgradeWin");
	win:Visible(false);
end

function GetExpSkHov()
	exp= GameAPI:GetConsAttr(CONSATTR_EXP,0);
	sk = GameAPI:GetConsAttr(CONSATTR_SKILL,0);
	print(exp);
	print(sk);
	exp = exp / 100
	sk = sk/100
	lev= GameAPI:GetConsAttr(CONSATTR_STONES,STONE_EXP_SK);
	s2= CON_L0_11;
	s3= CON_L0_12;
	win = uiapi:GetElement("ConstellationWin");
	stone1 =win:GetChild("Button1");

	uiapi:Helper(false,s2..exp..s3..sk,this:Instance());
end

local levupenergy = {720,2880,7200,14400,24000,36000,54000,72000,96000,105000,130000,155000,185000,215000,250000,285000,325000,365000,420000,}
local MAXLEVEL=20;

function LevUpHov(textID)

  local t_conslev=Get_Constellationlev_Cofig();
  local t_conslevup=Get_Constellationlevup_Cofig();
  local t_Stoneslev=Get_Stoneslev_Cofig(textID);
  local t_stoneslevup=Get_Stoneslevup_Cofig(textID);
  if textID==0 then
	lev= GameAPI:GetConsAttr(CONSATTR_STONES,0);
	lev_next=lev+1;

	Constellationlev_Level="Constellationlev_Level"..lev
	Speciality_Level="Speciality_Level"..lev;
	Speciality_Level_Next="Speciality_Level"..lev_next;
	Experience_Level="Experience_Level"..lev;
	Experience_Level_Next="Experience_Level"..lev_next;
	Power_Level="Power_Level"..lev_next;
	Gold_Level="Gold_Level"..lev_next;

	if lev < MAXLEVEL then
	   s=CON_L0_14..t_conslev[Constellationlev_Level].."\n"..CON_L0_15..t_Stoneslev[Speciality_Level].."\n"..CON_L0_11..t_Stoneslev[Experience_Level].."\n"..CON_L0_39.."\n"..CON_L0_15..t_Stoneslev[Speciality_Level_Next].."\n"..CON_L0_21..t_Stoneslev[Experience_Level_Next].."\n"..CON_L0_16..t_stoneslevup[Power_Level].."\n"..CON_L0_22.."\n"..CON_L0_17..t_stoneslevup[Gold_Level];
	else
	   s=CON_L0_14..t_conslev[Constellationlev_Level].."\n"..CON_L0_15..t_Stoneslev[Speciality_Level].."\n"..CON_L0_21..t_Stoneslev[Experience_Level];
	end
  elseif textID==8 then
    lev= GameAPI:GetConsAttr(CONSATTR_LEV,0);
	Constellationlev_Level="Constellationlev_Level"..lev;
	Constellationlevup_Level="Constellationlevup_Level"..lev;
	Player_Level="Player_Level"..lev;

	s="Grade:"..t_conslev[Constellationlev_Level];

  end

	uiapi:Helper(false,s,this:Instance());
end

--function Stone1Hov()
	--lev= GameAPI:GetConsAttr(CONSATTR_STONES,STONE_EXP_SK);
	--s = "等级: ";

	--uiapi:Helper(false,s..lev,this:Instance());
--end
--技能培养的悬停，未开启显示：开启需要的资源，开启后显示：打开技能培养面板等
function SkillGrowHov()
	s = CON_L0_38;

	uiapi:Helper(false,s,this:Instance());
end
function Stone1Hov()
	s = CON_L0_13;

	uiapi:Helper(false,s,this:Instance());
end

function StoneOnLeft()
	uiapi:Helper();
end

function synconstype(v1)
    win = uiapi:GetElement("GodSkillUI");
	picbtn = win:GetChild("Constellation");
	pic =wincon:GetChild("ConstellationPic");
	type=wincon:GetChild("ConstellationName");
	name = CON_L0_23
	if v1 == 0 then
		pic:SetTexture("./Localization/en_us/UI/Texture/000.gwo");
		picbtn:SetTexture("./Localization/en_us/UI/Texture/000.gwo");
		name = CON_L0_23
	elseif v1==1 then
		pic:SetTexture("./Localization/en_us/UI/Texture/001.gwo");
		picbtn:SetTexture("./Localization/en_us/UI/Texture/001.gwo");
		name = CON_L0_24
	elseif v1==2 then
		pic:SetTexture("./Localization/en_us/UI/Texture/002.gwo");
		picbtn:SetTexture("./Localization/en_us/UI/Texture/002.gwo");
		name = CON_L0_25
	elseif v1==3 then
		pic:SetTexture("./Localization/en_us/UI/Texture/003.gwo");
		picbtn:SetTexture("./Localization/en_us/UI/Texture/003.gwo");
		name = CON_L0_26
	elseif v1==4 then
		pic:SetTexture("./Localization/en_us/UI/Texture/004.gwo");
		picbtn:SetTexture("./Localization/en_us/UI/Texture/004.gwo");
		name = CON_L0_27
	elseif v1==5 then
		pic:SetTexture("./Localization/en_us/UI/Texture/005.gwo");
		picbtn:SetTexture("./Localization/en_us/UI/Texture/005.gwo");
		name = CON_L0_28
	elseif v1==6 then
		pic:SetTexture("./Localization/en_us/UI/Texture/006.gwo");
		picbtn:SetTexture("./Localization/en_us/UI/Texture/006.gwo");
		name = CON_L0_29
	elseif v1==7 then
		pic:SetTexture("./Localization/en_us/UI/Texture/007.gwo");
		picbtn:SetTexture("./Localization/en_us/UI/Texture/007.gwo");
		name = CON_L0_30
	elseif v1==8 then
		pic:SetTexture("./Localization/en_us/UI/Texture/008.gwo");
		picbtn:SetTexture("./Localization/en_us/UI/Texture/008.gwo");
		name = CON_L0_31
	elseif v1==9 then
		pic:SetTexture("./Localization/en_us/UI/Texture/009.gwo");
		picbtn:SetTexture("./Localization/en_us/UI/Texture/009.gwo");
		name = CON_L0_32
	elseif v1==10 then
		pic:SetTexture("./Localization/en_us/UI/Texture/010.gwo");
		picbtn:SetTexture("./Localization/en_us/UI/Texture/010.gwo");
		name = CON_L0_33
	elseif v1==11 then
		pic:SetTexture("./Localization/en_us/UI/Texture/011.gwo");
		picbtn:SetTexture("./Localization/en_us/UI/Texture/011.gwo");
		name = CON_L0_34
	end

	GameAPI:SetConsAttr(CONSATTR_TYPE,v1);
	type:SetText(name);

end

function ConstellationBtn_OnClick()
  win = uiapi:GetElement("ConstellationWin");

  win:Visible(not win:IsVisible());
	if win:IsVisible() then
	   win:SetPosition(101,150)
	   win:Top();
	   GameAPI:ConsEventRequest(0,1,0,0); --1：SID_SYN_ALL
	end


end



function StatuHov()



  uiapi:Helper(false,s_statuhov,this:Instance());

end

function Constellation_WinVisible()
    win = uiapi:GetElement("ConstellationWin");
	win:Visible(not win:IsVisible());
	if win:IsVisible() then
		win:Top();
	end

	 win:SetPosition(100,149);
end

function Constellation_SynDisplay()
    local t_conslev=Get_Constellationlev_Cofig();
    local t_conslevup=Get_Constellationlevup_Cofig();
    local t_Stoneslev=Get_Stoneslev_Cofig(0);
    local t_stoneslevup=Get_Stoneslevup_Cofig(0);
	--textid = 8
    local cons_lev= GameAPI:GetConsAttr(CONSATTR_LEV,0);
	local Constellationlevup_Level="Constellationlevup_Level"..cons_lev;
	local Player_Level="Player_Level"..cons_lev;
	--textid = 0
	local lev= GameAPI:GetConsAttr(CONSATTR_STONES,0);
	local lev_next=lev+1;

	local Constellationlev_Level="Constellationlev_Level"..lev
	local Speciality_Level="Speciality_Level"..lev;
	local Speciality_Level_Next="Speciality_Level"..lev_next;
	local Experience_Level="Experience_Level"..lev;
	local Experience_Level_Next="Experience_Level"..lev_next;
	local Power_Level="Power_Level"..lev_next;
	local Gold_Level="Gold_Level"..lev_next;
	local exp_max_lev="exp_max"..lev;
	local sk_max_lev="sk_max"..lev;

	--textid = 8
	if cons_lev < MAXLEVEL then

		need_energy:SetText(t_conslevup[Constellationlevup_Level])
		need_lev:SetText(t_conslev[Player_Level])
	else
	    need_energy_text:SetText("");
		need_lev_text:SetText(CON_L0_40);
		need_lev_text:SetPosition(15,340);
		need_energy:SetText("");
		need_lev:SetText("");
		add_btn:Enable(false);
	end

	--20个星星
	for i = 1, 20 ,1 do
		if cons_lev >= i then
			star_array[i]:SetTexturePos(567,587);

		else
			star_array[i]:SetTexturePos(485,587);
		end

	end

	--textid =0
	if lev < MAXLEVEL then
		exp_accumulate:SetText(t_Stoneslev[Experience_Level])
		max_exp_accumulate:SetText(t_Stoneslev[exp_max_lev])
		special_accumulate:SetText(t_Stoneslev[Speciality_Level])
		max_special_accumulate:SetText(t_Stoneslev[sk_max_lev])
		next_exp_accumulate:SetText(t_Stoneslev[Experience_Level_Next])
		next_special_accumulate:SetText(t_Stoneslev[Speciality_Level_Next])
		exp_levup_energy:SetText(t_stoneslevup[Power_Level])
		exp_levup_gold:SetText(t_stoneslevup[Gold_Level])

	else
		exp_accumulate:SetText(t_Stoneslev[Experience_Level]);
		special_accumulate:SetText(t_Stoneslev[Speciality_Level]);
		max_exp_accumulate:SetText(t_Stoneslev[exp_max_lev])
		max_special_accumulate:SetText(t_Stoneslev[sk_max_lev])

		next_lev:SetText("");
		next_exp_accumulate_text:SetText(CON_L0_41);
		next_special_accumulate_text:SetText(CON_L0_42);
		exp_levup_energy_text:SetText("");
		exp_levup_gold_text:SetText("");
		next_exp_accumulate:SetText("");
		next_special_accumulate:SetText("");
		exp_levup_energy:SetText("");
		exp_levup_gold:SetText("");
        lev_up:SetText("");
		lev_up_btn:Enable(false);
	end

	--累积经验，专长经验
	Constellation_SynAccumulate()

end

--累积经验，专长经验
function Constellation_SynAccumulate()
	exp= GameAPI:GetConsAttr(CONSATTR_EXP,0);
	sk = GameAPI:GetConsAttr(CONSATTR_SKILL,0);
	exp = exp / 100;
	sk = sk/100;
	exp_all_accumulate :SetText(string.format("%.2f",exp));
	special_all_accumulate :SetText(string.format("%.2f",sk));

end




