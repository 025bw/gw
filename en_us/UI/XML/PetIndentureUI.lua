local uiapi     = UIAPI;
-- 主窗体
local win       = nil;

local str_indenture          = PETIN_X1_1;
local str_indenture_continue = PETIN_X1_2;
local str_indenture_finish   = PETIN_X1_3;
local str_indenture_baseadd  = PETIN_X1_4;
local str_indenture_baseadd_1  = PETIN_X1_5;
local str_indenture_info_onBegin      = PETIN_X1_6;
local str_indenture_info_onIndenture  = PETIN_X1_7;
local str_indenture_info_onFinish     = PETIN_X1_8;

local MSG = {};
-- 食品类型
MSG.PETFOODTYPE1 = PETIN_X1_9;
MSG.PETFOODTYPE2 = PETIN_X1_10;
MSG.PETFOODTYPE3 = PETIN_X1_11;
MSG.PETFOODTYPE4 = PETIN_X1_12;

-- 灵魂契约
MSG.PETINDENTURE0     = PETIN_X1_13;
MSG.PETINDENTURE1     = PETIN_X1_14;
MSG.PETINDENTUREOTHER = PETIN_X1_17;

MSG.PetIndentureUpFixed = PETIN_X1_15;
MSG.PetIndentureUpLast  = PETIN_X1_16;

local uiElement = nil;

-- 初始化
function IndentureUI_OnLoad()
	win = uiapi:GetElement("BondWin");
	win:UpdateRenderBuffer();
end

-- 状态改变
function Indenture_StateChange(state)
	indenture_opButton = uiapi:GetElement(871015);
	indenture_viewInfo = uiapi:GetElement(871017);
	baseAdd = uiapi:GetElement(871016);
	if 1 == state then
		indenture_opButton:SetText(str_indenture);
		baseAdd:SetText(str_indenture_baseadd_1);
		indenture_viewInfo:SetText(str_indenture_info_onBegin);
	elseif 2 == state then
		indenture_opButton:SetText(str_indenture_continue);
		baseAdd:SetText(str_indenture_baseadd_1);
		indenture_viewInfo:SetText(str_indenture_info_onIndenture);
	elseif 3 == state then
		indenture_opButton:SetText(str_indenture_finish);
		baseAdd:SetText(str_indenture_baseadd);
		indenture_viewInfo:SetText(str_indenture_info_onFinish);
	end
end

-- 设置资质
function Indenture_PetSetAptitude(value)
	aptitude = uiapi:GetElement(871003);
	if value == 1 then
		aptitude:SetText(PETAPTITUDE1);
	elseif value == 2 then
		aptitude:SetText(PETAPTITUDE2);
	elseif value == 3 then
		aptitude:SetText(PETAPTITUDE3);
	elseif value == 4 then
		aptitude:SetText(PETAPTITUDE4);
	elseif value == 5 then
		aptitude:SetText(PETAPTITUDE5);
	elseif value == 6 then
		aptitude:SetText(PETAPTITUDE6);
	elseif value == 7 then
		aptitude:SetText(PETAPTITUDE7);
	elseif value == 8 then
		aptitude:SetText(PETAPTITUDE8);
	elseif value == 9 then
		aptitude:SetText(PETAPTITUDE9);
	elseif value == 10 then
		aptitude:SetText(PETAPTITUDE10);
	elseif value == 11 then
		aptitude:SetText(PETAPTITUDE11);
	elseif value == 12 then
		aptitude:SetText(PETAPTITUDE12);
	elseif value == 13 then
		aptitude:SetText(PETAPTITUDE13);
	elseif value == 14 then
		aptitude:SetText(PETAPTITUDE14);
	elseif value == 15 then
		aptitude:SetText(PETAPTITUDE15);
	elseif value == 16 then
		aptitude:SetText(PETAPTITUDE16);
	end;
end

-- 设置类型
function Indenture_PetSetType(value)
	pettype = uiapi:GetElement(871002);

	if value == 1 then
		pettype:SetText(PETTYPE1);
	elseif value == 2 then
		pettype:SetText(PETTYPE2);
	elseif value == 3 then
		pettype:SetText(PETTYPE3);
	elseif value == 4 then
		pettype:SetText(PETTYPE4);
	elseif value == 5 then
		pettype:SetText(PETTYPE5);
	elseif value == 6 then
		pettype:SetText(PETTYPE6);
	elseif value == 7 then
		pettype:SetText(PETTYPE7);
	elseif value == 8 then
		pettype:SetText(PETTYPE8);
	elseif value == 9 then
		pettype:SetText(PETTYPE9);
	elseif value == 10 then
		pettype:SetText(PETTYPE10);
	elseif value == 11 then
		pettype:SetText(PETTYPE11);
	elseif value == 12 then
		pettype:SetText(PETTYPE12);
	elseif value == 13 then
		pettype:SetText(PETTYPE13);
	elseif value == 14 then
		pettype:SetText(PETTYPE14);
	elseif value == 15 then
		pettype:SetText(PETTYPE15);
	elseif value == 16 then
		pettype:SetText(PETTYPE16);
	elseif value == 17 then
		pettype:SetText(PETTYPE17);
	elseif value == 18 then
		pettype:SetText(PETTYPE18);
	elseif value == 19 then
		pettype:SetText(PETTYPE19);
	elseif value == 20 then
		pettype:SetText(PETTYPE20);
	elseif value == 21 then
		pettype:SetText(PETTYPE21);
	elseif value == 22 then
		pettype:SetText(PETTYPE22);
	elseif value == 23 then
		pettype:SetText(PETTYPE23);
	elseif value == 24 then
		pettype:SetText(PETTYPE24);
	elseif value == 25 then
		pettype:SetText(PETTYPE25);
	elseif value == 26 then
		pettype:SetText(PETTYPE26);
	elseif value == 27 then
		pettype:SetText(PETTYPE27);
	elseif value == 28 then
		pettype:SetText(PETTYPE28);
	elseif value == 29 then
		pettype:SetText(PETTYPE29);
	elseif value == 30 then
		pettype:SetText(PETTYPE30);
	elseif value == 31 then
		pettype:SetText(PETTYPE31);
	elseif value == 32 then
		pettype:SetText(PETTYPE32);
	elseif value == 33 then
		pettype:SetText(PETTYPE33);
	elseif value == 34 then
		pettype:SetText(PETTYPE34);
	elseif value == 35 then
		pettype:SetText(PETTYPE35);
	elseif value == 36 then
		pettype:SetText(PETTYPE36);
	elseif value == 37 then
		pettype:SetText(PETTYPE37);
	elseif value == 38 then
		pettype:SetText(PETTYPE38);
	elseif value == 39 then
		pettype:SetText(PETTYPE39);
	elseif value == 40 then
		pettype:SetText(PETTYPE40);
	elseif value == 41 then
		pettype:SetText(PETTYPE41);
	elseif value == 42 then
		pettype:SetText(PETTYPE42);
	elseif value == 43 then
		pettype:SetText(PETTYPE43);
	elseif value == 44 then
		pettype:SetText(PETTYPE44);
	end;
end

-- 设置性别
function Indenture_PetSetSex(value)
	petsex = uiapi:GetElement(871004);
	if value == 1 then
		petsex:SetText(PETDP_X0_13);
	else
		petsex:SetText(PETDP_X0_14);
	end;
end

-- 设置星座值
function Indenture_UpdatePetConstellation(id)
	petConstellation = uiapi:GetElement(871006);
	if id == 0 then
		petConstellation:SetText(NF_L0_XZ8);
  elseif id == 1 then
		petConstellation:SetText(NF_L0_XZ9);
  elseif id == 2 then
		petConstellation:SetText(NF_L0_XZ10);
  elseif id == 3 then
		petConstellation:SetText(NF_L0_XZ11);
  elseif id == 4 then
		petConstellation:SetText(NF_L0_XZ12);
  elseif id == 5 then
		petConstellation:SetText(NF_L0_XZ13);
  elseif id == 6 then
		petConstellation:SetText(NF_L0_XZ14);
  elseif id == 7 then
		petConstellation:SetText(NF_L0_XZ15);
  elseif id == 8 then
		petConstellation:SetText(NF_L0_XZ16);
  elseif id == 9 then
		petConstellation:SetText(NF_L0_XZ17);
  elseif id == 10 then
		petConstellation:SetText(NF_L0_XZ18);
  elseif id == 11 then
		petConstellation:SetText(NF_L0_XZ19);
	end;
end

-- 设置宠物食品类型
function Indenture_UpdatePetFoodType(id)
	petFoodType = uiapi:GetElement(871007);
	if id == 1 then
		petFoodType:SetText(MSG.PETFOODTYPE1);
  elseif id == 2 then
		petFoodType:SetText(MSG.PETFOODTYPE2);
  elseif id == 3 then
		petFoodType:SetText(MSG.PETFOODTYPE3);
  else
		petFoodType:SetText(MSG.PETFOODTYPE4);
 end;
end

-- 灵魂契约
function Indenture_UpdatePetIndenture(id)
	PetBond = uiapi:GetElement(871008);

 	if 0 == id then
		PetBond:SetText(MSG.PETINDENTURE0);
	elseif 1 == id then
		PetBond:SetText(MSG.PETINDENTURE1);
	elseif 2 == id then
		PetBond:SetText("Ⅰ"..MSG.PETINDENTUREOTHER);
	elseif 3 == id then
		PetBond:SetText("Ⅱ"..MSG.PETINDENTUREOTHER);
	elseif 4 == id then
		PetBond:SetText("Ⅲ"..MSG.PETINDENTUREOTHER);
	elseif 5 == id then
		PetBond:SetText("Ⅳ"..MSG.PETINDENTUREOTHER);
	elseif 6 == id then
		PetBond:SetText("Ⅴ"..MSG.PETINDENTUREOTHER);
	end;
end

-- 固定与最终提升的文字表述
function Indenture_UpdateBaseText(id,state)
	uiElement = uiapi:GetElement(id);

	if 0 == state then
		uiElement:SetText(MSG.PetIndentureUpFixed);
	elseif 1 == state then
		 uiElement:SetText(MSG.PetIndentureUpLast);
	end;
end

IndentureUI_OnLoad();






