local MSG = {};

-- 饱食度对描述
MSG.PETFILL1 = PETDP_X0_1;
MSG.PETFILL2 = PETDP_X0_2;
MSG.PETFILL3 = PETDP_X0_3;
MSG.PETFILL4 = PETDP_X0_4;

-- 好感度对应描述
MSG.PETFAVOR1 = PETDP_X0_5;
MSG.PETFAVOR2 = PETDP_X0_6;
MSG.PETFAVOR3 = PETDP_X0_7;
MSG.PETFAVOR4 = PETDP_X0_8;

-- 寿命对应描述
MSG.PETLIFE1 = PETDP_X0_9;
MSG.PETLIFE2 = PETDP_X0_10;
MSG.PETLIFE3 = PETDP_X0_11;
MSG.PETLIFE4 = PETDP_X0_12;

-- 性别
MSG.PETSEX1 = PETDP_X0_13;
MSG.PETSEX2 = PETDP_X0_14;

-- 食品类型
MSG.PETFOODTYPE1 = PETDP_X0_15;
MSG.PETFOODTYPE2 = PETDP_X0_16;
MSG.PETFOODTYPE3 = PETDP_X0_17;
MSG.PETFOODTYPE4 = PETDP_X0_18;

-- 灵魂契约
MSG.PETINDENTURE0 = PETSAM_X0_19;
MSG.PETINDENTURE1 = PETSAM_X0_20;
MSG.PETINDENTUREOTHER = PETIN_X1_17;


local uiapi     = UIAPI;
-- 主窗体
local win       = nil;
-- 类型
local pettype   = nil;
-- 资质
local aptitude  = nil;
-- 饱食度
local fillstate = nil;
-- 好感度
local favorstate = nil;
-- 生命值
local lifestate = nil;
-- 性别
local petsex       = nil;
-- 技能按钮
local petSkillButton  = nil;
-- 星座
local petConstellation = nil;
-- 食品类型
local petFoodType = nil;
-- 绑定状态
local petBindState = nil;


-- 初始化
function PetDetail_OnLoad()
	win        = uiapi:GetElement("PetDetailWin");
	aptitude   = uiapi:GetElement(830004);
	pettype    = win:GetChild("PetType");
	fillstate  = win:GetChild("FoodStateCaption");
	favorstate = win:GetChild("FavorStateCaption");
	lifestate  = win:GetChild("LifeStateCaption");
	petsex     = win:GetChild("PetSex");
	petConstellation = win:GetChild("PetConstellation");
  petFoodType = win:GetChild("PetFoodType");

	win:UpdateRenderBuffer();
end

-- 寿命
function PetSetLife(value)
	if value < 40 then
		lifestate:SetText(MSG.PETLIFE4);
	elseif value < 60 then
		lifestate:SetText(MSG.PETLIFE3);
	elseif value < 80 then
		lifestate:SetText(MSG.PETLIFE2);
	else
		lifestate:SetText(MSG.PETLIFE1);
	end;
end

-- 设置性别
function PetDetail_PetSetSex(value)
	if value == 1 then
		petsex:SetText(MSG.PETSEX1);
	else
		petsex:SetText(MSG.PETSEX2);
	end;
end


-- 设置类型
function PetDetail_PetSetType(value)
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

-- 设置好感度
function PetSetFavor(value)
	if value < 40 then
		favorstate:SetText(MSG.PETFAVOR4);
	elseif value < 60 then
		favorstate:SetText(MSG.PETFAVOR3);
	elseif value < 90 then
		favorstate:SetText(MSG.PETFAVOR2);
	else
		favorstate:SetText(MSG.PETFAVOR1);
	end;
end


-- 设置饱食度
function PetSetFill(value)
	if value < 40 then
		fillstate:SetText(MSG.PETFILL4);
	elseif value < 60 then
		fillstate:SetText(MSG.PETFILL3);
	elseif value < 90 then
		fillstate:SetText(MSG.PETFILL2);
	else
		fillstate:SetText(MSG.PETFILL1);
	end;
end

-- 设置资质
function PetDetail_PetSetAptitude(value)
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

-- 设置按钮的图标
function UpdatePetSkillButtonIcon(id,state)
	-- state值： 0: 已学未开启
        -- state值： 1: 已开启未学
        -- state值： 2: 未开启未学
        -- state值： 3: 可学上限之外，可开栏上限之内

	petSkillButton = uiapi:GetElement(id);
	if state == 0 then
        	petSkillButton:GetChild(0):SetTexturePos(756, 936); --锁
	elseif state == 1 then
        	petSkillButton:GetChild(0):SetTexturePos(1024, 1024); --高亮空
	elseif state == 2 then
		petSkillButton:GetChild(0):SetTexturePos(828, 936); --锁
	elseif state == 3 then
		petSkillButton:GetChild(0):SetTexturePos(792, 936); --低亮空
	end;
end

-- 设置按钮的图标
function UpdatePetGeniusIcon(id,state)
	--state值: 0: 空

	petGeniusButton = uiapi:GetElement(id);
	if state == 0 then
		petGeniusButton:GetChild(0):SetTexturePos(252, 0); --锁
	end;

end

-- 设置星座值
function PetDetail_UpdatePetConstellation(id)
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
function PetDetail_UpdatePetFoodType(id)
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

function PetDetailUIHov(num)
	if num == 0 then
	   str=PETDP_X0_19;
    elseif num == 1 then
	   str=PETDP_X0_20;
	elseif num == 2 then
	   str=PETDP_X0_21;
	elseif num == 3 then
	   str=PETDP_X0_22;
	elseif num == 4 then
	   str=PETDP_X0_23;
	elseif num == 5 then
	   str=PETDP_X0_24;
	elseif num == 6 then
	   str=PETDP_X0_25;
	elseif num == 7 then
	   str=PETDP_X0_26;
	elseif num == 8 then
	   str=PETDP_X0_27;
	elseif num == 9 then
	   str=PETDP_X0_28;
	elseif num == 10 then
	   str=PETDP_X0_29;
	elseif num == 11 then
	   str=PETDP_X0_30;
	elseif num == 12 then
	   str=PETDP_X0_31;
	elseif num == 13 then
	   str=PETDP_X0_32;
	elseif num == 14 then
	   str=PETDP_X0_33;
	elseif num == 15 then
	   str=PETDP_X0_34;
	elseif num == 16 then
	   str=PETDP_X0_51;
	end
    uiapi:Helper(false,str,this:Instance());
end

function PetIntegrateHov(num)
    if num == 0 then
	   str=PETDP_X0_35;
    elseif num == 1 then
	   str=PETDP_X0_36;
	elseif num == 2 then
	   str=PETDP_X0_37;
	elseif num == 3 then
	   str=PETDP_X0_38;
	elseif num == 4 then
	   str=PETDP_X0_39;
	elseif num == 5 then
	   str=PETDP_X0_40;
	elseif num == 6 then
	   str=PETDP_X0_41;
	elseif num == 7 then
	   str=PETDP_X0_42;
	elseif num == 8 then
	   str=PETDP_X0_43;
	elseif num == 9 then
	   str=PETDP_X0_44;
	elseif num == 10 then
	   str=PETDP_X0_45;
	elseif num == 11 then
	   str=PETDP_X0_46;
	elseif num == 12 then
	   str=PETDP_X0_47;
	elseif num == 13 then
	   str=PETDP_X0_48;
	elseif num == 14 then
	   str=PETDP_X0_49;
	elseif num == 15 then
	   str=PETDP_X0_50;
	end
    uiapi:Helper(false,str,this:Instance());
end

function PetOnLeft()
	uiapi:Helper();
end

-- 灵魂契约
function PetDetail_UpdatePetIndenture(id)
	PetBond = uiapi:GetElement(832025);
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

-- 宠物绑定状态
function PetDetail_BindStateUpdate(state)
	petBindState = uiapi:GetElement(832026);
		-- 0: 未绑定　１：已绑定
		if 0 == state then
			petBindState:SetText(PETD_X0_47);
		elseif 1 == state then
			petBindState:SetText(PETD_X0_48);
		else
			petBindState:SetText("");
		end
end

PetDetail_OnLoad();






