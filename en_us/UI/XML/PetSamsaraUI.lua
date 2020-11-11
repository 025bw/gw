local uiapi     = UIAPI;
-- 主窗体
local win       = nil;

local str_random_upate = PETSAM_X0_1;
local str_update_1   = PETSAM_X0_2;
local str_update_2   = PETSAM_X0_3;
local str_update_3   = PETSAM_X0_4;
local str_update_4   = PETSAM_X0_5;
local str_update_5   = PETSAM_X0_6;

local str_samsara          = PETSAM_X0_7;
local str_samsara_continue = PETSAM_X0_8;
local str_samsara_finish   = PETSAM_X0_9;

local str_samsara_review   = PETSAM_X0_10;
local str_samsara_view     = PETSAM_X0_11;
local str_samsara_trait    = PETSAM_X0_12;

local str_samsara_growing  = PETSAM_X0_13;
local str_samsara_baseadd  = PETSAM_X0_14;

local MSG = {};

-- 食品类型
MSG.PETFOODTYPE1 = PETSAM_X0_15;
MSG.PETFOODTYPE2 = PETSAM_X0_16;
MSG.PETFOODTYPE3 = PETSAM_X0_17;
MSG.PETFOODTYPE4 = PETSAM_X0_18;

-- 灵魂契约
MSG.PETINDENTURE0 = PETSAM_X0_19;
MSG.PETINDENTURE1 = PETSAM_X0_20;

function SamseraUI_OnLoad()
	win = uiapi:GetElement("SamsaraWin");
	win:UpdateRenderBuffer();
end


-- 状态改变
function Samsera_StateChange(state)
	samsera_opButton = uiapi:GetElement(873015);
	samsera_viewInfo = uiapi:GetElement(873016);
	samsera_descInfo = uiapi:GetElement(873013);

	if 1 == state then
		samsera_opButton:SetText(str_samsara);
		samsera_viewInfo:SetText(str_samsara_review);
		samsera_descInfo:SetText(str_samsara_growing);
	elseif 2 == state then
		samsera_opButton:SetText(str_samsara_continue);
		samsera_viewInfo:SetText(str_samsara_view);
		samsera_descInfo:SetText(str_samsara_growing);
	elseif 3 == state then
		samsera_opButton:SetText(str_samsara_finish);
		samsera_viewInfo:SetText(str_samsara_trait);
		samsera_descInfo:SetText(str_samsara_baseadd);
	end
end

-- 设置类型
function Samsera_PetSetType(value)
	pettype = uiapi:GetElement(873002);
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

-- 设置资质
function Samsera_PetSetAptitude(value)
	aptitude = uiapi:GetElement(873003);
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
	end;
end

-- 设置性别
function Samsera_PetSetSex(value)
	petsex = uiapi:GetElement(873004);
	if value == 1 then
		petsex:SetText(PETDP_X0_13);
	else
		petsex:SetText(PETDP_X0_14);
	end;
end

-- 设置星座值
function Samsera_UpdatePetConstellation(id)
	petConstellation = uiapi:GetElement(873006);
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
function Samsera_UpdatePetFoodType(id)
	petFoodType = uiapi:GetElement(873007);
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
function Samsera_UpdatePetIndenture(done)
	PetBond = uiapi:GetElement(873008);
	if 1 == done then
		PetBond:SetText(MSG.PETINDENTURE1);
  else
		PetBond:SetText(MSG.PETINDENTURE0);
 end;
end

-- 设置特点基础属性列
function Samsera_UpdateTraitBaseCol(state, id, value)
	pElement = uiapi:GetElement(id);
	if 1 == state then
		pElement:SetText(str_random_upate);
	elseif 2 == state then
		if 1 == value then
			pElement:SetText(str_update_1);
		elseif 2 == value then
			pElement:SetText(str_update_2);
		elseif 3 == value then
			pElement:SetText(str_update_3);
		elseif 4 == value then
			pElement:SetText(str_update_4);
		elseif 5 == value then
			pElement:SetText(str_update_5);
		end
	end
end

SamseraUI_OnLoad();






