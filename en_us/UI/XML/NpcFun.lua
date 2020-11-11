print("success");

--定义拓展的NPC功能类型
--NPC_FLAG_SYS
NPC_FLAG_SYS_NONE    = 0
NPC_FLAG_SYS_TRANMIT = 1  --传送
NPC_FLAG_SYS_CREDIT_EXCHANGE = 2 --声望
NPC_FLAG_SYS_WAR   = 4 --战场活动
NPC_FLAG_SYS_BREAK  = 8  --装备分解
NPC_FLAG_SYS_ALTAR = 16  --祭坛
NPC_FLAG_GUILDQUEST = 32  --公会任务
NPC_FLAG_ACTIVITY = 64   --物品兑换
NPC_FLAG_LivingSkill = 128--生活技能
NPC_FLAG_SYS_REPETITION = 256---副本
NPC_FLAG_SYS_REPREWARD = 512----副本奖励
NPC_FLAG_SYS_REPLEAVE = 1024----离开副本
NPC_FLAG_SYS_DESIDENTIFY = 2048 --称谓鉴定
NPC_FLAG_SYS_DESAWARD = 4096	--称谓奖励
NPC_FLAG_SYS_AWARD = 8192----公会奖励
NPC_FLAG_SYS_SIGNACT = 16384 ----令牌活动
NPC_FLAG_SYS_SKILLBOOK = 32768 ----抽取技能书
NPC_FLAG_SYS_MATERIALBACK = 65536 ----物资回收官,20090326,ver204,li
NPC_FLAG_SYS_NEWMAN = 131072 ----新手指引
NPC_FLAG_SYS_STAR = 262144-----星座幸运日
NPC_FLAG_SYS_UNIONWAR = 524288 ----公会活动
NPC_FLAG_SYS_ASSOCIATION = 1048576
NPC_FLAG_SYS_HEALTH = 2097152
NPC_FLAG_SYS_OLDMAN = 4194304
NPC_FLAG_SYS_LOSTBOOK = 8388608 
NPC_FLAG_SYS_REMAIN = 16777216
NPC_FLAG_SYS_PAN = 33554432
NPC_FLAG_SYS_MESSENGER = 67108864

--获取所有UI资源
local win = UIAPI:GetElement("FirstWin");
local FirstWin_Text1= win:GetChild("FirstWin_Text1");
local FirstWin_Text2= win:GetChild("FirstWin_Text2");
local FirstWin_Text3= win:GetChild("FirstWin_Text3");
		
local FirstWin_Button1 = win:GetChild("FirstWin_Button1");
local FirstWin_Button2 = win:GetChild("FirstWin_Button2");
local FirstWin_Button3 = win:GetChild("FirstWin_Button3");
local FirstWin_Button4 = win:GetChild("FirstWin_Button4");
local FirstWin_Button5 = win:GetChild("FirstWin_Button5");
local FirstWin_Button6 = win:GetChild("FirstWin_Button6");
local FirstWin_Button7 = win:GetChild("FirstWin_Button7");
local FirstWin_Button8 = win:GetChild("FirstWin_Button8");
local FirstWin_Button9 = win:GetChild("FirstWin_Button9");
local FirstWin_Button10 = win:GetChild("FirstWin_Button10");
local FirstWin_Button11 = win:GetChild("FirstWin_Button11");        
local FirstWin_Button12 = win:GetChild("FirstWin_Button12");

local FirstWin_ItemBtn1 = win:GetChild("FirstWin_ItemBtn1");
local FirstWin_ItemBtn2 = win:GetChild("FirstWin_ItemBtn2");
local FirstWin_ItemBtn3 = win:GetChild("FirstWin_ItemBtn3");
local FirstWin_ItemBtn4 = win:GetChild("FirstWin_ItemBtn4");
        
local FirstWin_CheckBox1 = win:GetChild("FirstWin_CheckBox1");
local FirstWin_CheckBox2 = win:GetChild("FirstWin_CheckBox2");
local FirstWin_CheckBox3 = win:GetChild("FirstWin_CheckBox3");
local FirstWin_CheckBox4 = win:GetChild("FirstWin_CheckBox4");
		
local FirstWin_ButtonA1 = win:GetChild("FirstWin_ButtonA1");
local FirstWin_ButtonA2 = win:GetChild("FirstWin_ButtonA2");
local FirstWin_ButtonA3 = win:GetChild("FirstWin_ButtonA3");

local InputText1 = win:GetChild("BijouEditBox");
local InputText2 = win:GetChild("MoneyEditBox");
local InputText3 = win:GetChild("NumEditBox");

local Input11 = win:GetChild("BijouEditMid");--外框架
local Input12 = win:GetChild("BijouEditLeft");
local Input13 = win:GetChild("BijouEditRight");

local Input21 = win:GetChild("MoneyEditMid");--外框架
local Input22 = win:GetChild("MoneyEditLeft");
local Input23 = win:GetChild("MoneyEditRight");

local Input31 = win:GetChild("NumEditMid");--外框架
local Input32 = win:GetChild("NumEditLeft");
local Input33 = win:GetChild("NumEditRight");

local strDesig = ""
--显示不同类型的窗体界面
function Set_NpcFun_UI(Type,Index)
        print("Set_NpcFun_UI()");
        print(Type);
	SetOriginalPosition();

	FirstWin_Text1:Visible(false);
	FirstWin_Text2:Visible(false);
	FirstWin_Text3:Visible(false);

	FirstWin_Button1:Visible(false);
	FirstWin_Button2:Visible(false);
	FirstWin_Button3:Visible(false);
	FirstWin_Button4:Visible(false);
	FirstWin_Button5:Visible(false);
	FirstWin_Button6:Visible(false);
	FirstWin_Button7:Visible(false);
	FirstWin_Button8:Visible(false);
	FirstWin_Button9:Visible(false);
	FirstWin_Button10:Visible(false);
	FirstWin_Button11:Visible(false);
	FirstWin_Button12:Visible(false);

	FirstWin_CheckBox1:Visible(false);
	FirstWin_CheckBox2:Visible(false);
	FirstWin_CheckBox3:Visible(false);
	FirstWin_CheckBox4:Visible(false);

        FirstWin_ItemBtn1:Visible(false);
	FirstWin_ItemBtn2:Visible(false);
        FirstWin_ItemBtn3:Visible(false);
	FirstWin_ItemBtn4:Visible(false);

	FirstWin_ButtonA1:Visible(false);
	FirstWin_ButtonA2:Visible(false);
	FirstWin_ButtonA3:Visible(false);

	InputText1:Visible(false);
	Input11:Visible(false);
	Input12:Visible(false);
	Input13:Visible(false);

	Input21:Visible(false);
	Input22:Visible(false);
	Input23:Visible(false);

	Input31:Visible(false);
	Input32:Visible(false);
	Input33:Visible(false);


    	if Type == NPC_FLAG_SYS_TRANMIT  then
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
		win:Visible(true);
        elseif Type == NPC_FLAG_SYS_CREDIT_EXCHANGE  then
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
		win:Visible(true);
        elseif Type == NPC_FLAG_ACTIVITY  then
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
		win:Visible(true);
        elseif Type == NPC_FLAG_SYS_REPETITION  then
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
		win:Visible(true);
        elseif Type == NPC_FLAG_SYS_REPREWARD  then
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
		win:Visible(true);
        elseif Type == NPC_FLAG_SYS_REPLEAVE  then
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
		win:Visible(true);
    	elseif Type == NPC_FLAG_SYS_OFFICAL_SALARY then
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
		win:Visible(true);
        elseif Type == NPC_FLAG_SYS_WAR  then
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
		win:Visible(true);
    	elseif Type == NPC_FLAG_SYS_NEWMAN then
                FirstWin_ButtonA1:SetPosition(145,500);
	        FirstWin_ButtonA2:SetPosition(220,500);
                FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
		win:Visible(true);
    	elseif Type == NPC_FLAG_SYS_PAN then
                FirstWin_ButtonA1:SetPosition(145,500);
	        FirstWin_ButtonA2:SetPosition(220,500);
                FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
		win:Visible(true);
    	elseif Type == NPC_FLAG_SYS_STAR then
	        FirstWin_Text1:SetPosition(45,100);
	        FirstWin_Text2:SetPosition(45,120);
	        FirstWin_Text3:SetPosition(45,160);
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
                strDesig = ""
		win:Visible(true);
    	elseif Type == NPC_FLAG_SYS_UNIONWAR then
                FirstWin_ButtonA1:SetPosition(145,500);
	        FirstWin_ButtonA2:SetPosition(220,500);
                FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
		win:Visible(true);
    	elseif Type == NPC_FLAG_SYS_ALTAR then
                if Index == 1 then
	           FirstWin_Text1:SetPosition(45,100);
	           FirstWin_Text2:SetPosition(45,120);
	           FirstWin_Text3:SetPosition(45,140);

        	   FirstWin_Button1:SetPosition(45,160);
               	   FirstWin_Button2:SetPosition(45,185);
         	   FirstWin_Button3:SetPosition(45,210);
	           FirstWin_Button4:SetPosition(45,235);
	           FirstWin_Button5:SetPosition(45,260);
	           FirstWin_Button6:SetPosition(45,285);
	           FirstWin_Button7:SetPosition(45,310);
	           FirstWin_Button8:SetPosition(45,335);
	           FirstWin_Button9:SetPosition(45,360);
	           FirstWin_Button10:SetPosition(45,385);
	           FirstWin_Button11:SetPosition(45,410);
	           FirstWin_Button12:SetPosition(45,435);

	           FirstWin_ButtonA1:SetPosition(145,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(true);
	   
		   win:Visible(true);
		end;
                if Index == 2 then
	           FirstWin_Text1:SetPosition(45,100);
	           FirstWin_Text2:SetPosition(45,140);
	           FirstWin_Text3:SetPosition(45,160);

        	   FirstWin_Button1:SetPosition(40,160);
               	   FirstWin_Button2:SetPosition(40,185);
         	   FirstWin_Button3:SetPosition(40,210);
	           FirstWin_Button4:SetPosition(40,235);
	           FirstWin_Button5:SetPosition(40,260);
	           FirstWin_Button6:SetPosition(40,285);
	           FirstWin_Button7:SetPosition(40,310);
	           FirstWin_Button8:SetPosition(40,335);
	           FirstWin_Button9:SetPosition(40,360);
	           FirstWin_Button10:SetPosition(40,385);
	           FirstWin_Button11:SetPosition(45,410);
	           FirstWin_Button12:SetPosition(45,435);

	           FirstWin_ButtonA1:SetPosition(145,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(true);

		   win:Visible(true);
                end;
                if Index == 3 then
	           FirstWin_Text1:SetPosition(45,100);
	           FirstWin_Text2:SetPosition(45,170);
	           FirstWin_Text3:SetPosition(45,190);

        	   FirstWin_Button1:SetPosition(25,210);
               	   FirstWin_Button2:SetPosition(25,235);
         	   FirstWin_Button3:SetPosition(25,260);
	           FirstWin_Button4:SetPosition(25,285);
	           FirstWin_Button5:SetPosition(25,310);
	           FirstWin_Button6:SetPosition(25,335);
	           FirstWin_Button7:SetPosition(25,360);
	           FirstWin_Button8:SetPosition(25,385);
	           FirstWin_Button9:SetPosition(25,410);
	           FirstWin_Button10:SetPosition(25,435);
	           FirstWin_Button11:SetPosition(45,410);
	           FirstWin_Button12:SetPosition(45,435);

	           FirstWin_ButtonA1:SetPosition(145,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(true);


		   win:Visible(true);
                end;
		if Index == 4 then
	           FirstWin_Text1:SetPosition(45,100);
	           FirstWin_Text2:SetPosition(45,120);
	           FirstWin_Text3:SetPosition(45,140);

        	   FirstWin_Button1:SetPosition(45,160);
               	   FirstWin_Button2:SetPosition(45,185);
         	   FirstWin_Button3:SetPosition(45,210);
	           FirstWin_Button4:SetPosition(45,235);
	           FirstWin_Button5:SetPosition(45,260);
	           FirstWin_Button6:SetPosition(45,285);
	           FirstWin_Button7:SetPosition(45,310);
	           FirstWin_Button8:SetPosition(45,335);
	           FirstWin_Button9:SetPosition(45,360);
	           FirstWin_Button10:SetPosition(45,385);
	           FirstWin_Button11:SetPosition(45,410);
	           FirstWin_Button12:SetPosition(45,435);

	           FirstWin_ButtonA1:SetPosition(145,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(true);


		   win:Visible(true);
                end;
 		if Index == 5 then
	           FirstWin_Text1:SetPosition(45,100);
	           FirstWin_Text2:SetPosition(45,120);
	           FirstWin_Text3:SetPosition(45,140);

        	   FirstWin_Button1:SetPosition(45,160);
               	   FirstWin_Button2:SetPosition(45,185);
         	   FirstWin_Button3:SetPosition(45,210);
	           FirstWin_Button4:SetPosition(45,235);
	           FirstWin_Button5:SetPosition(45,260);
	           FirstWin_Button6:SetPosition(45,285);
	           FirstWin_Button7:SetPosition(45,310);
	           FirstWin_Button8:SetPosition(45,335);
	           FirstWin_Button9:SetPosition(45,360);
	           FirstWin_Button10:SetPosition(45,385);
	           FirstWin_Button11:SetPosition(45,410);
	           FirstWin_Button12:SetPosition(45,435);

	           FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);

		   win:Visible(true);
                end;
    	elseif Type == NPC_FLAG_SYS_AWARD then
                if Index == 1 then
	           FirstWin_Text1:SetPosition(45,100);
	           FirstWin_Text2:SetPosition(45,120);
	           FirstWin_Text3:SetPosition(45,140);

        	   FirstWin_Button1:SetPosition(45,160);
               	   FirstWin_Button2:SetPosition(45,185);
         	   FirstWin_Button3:SetPosition(45,210);
	           FirstWin_Button4:SetPosition(45,235);
	           FirstWin_Button5:SetPosition(45,260);
	           FirstWin_Button6:SetPosition(45,285);
	           FirstWin_Button7:SetPosition(45,310);
	           FirstWin_Button8:SetPosition(45,335);
	           FirstWin_Button9:SetPosition(45,360);
	           FirstWin_Button10:SetPosition(45,385);
	           FirstWin_Button11:SetPosition(45,410);
	           FirstWin_Button12:SetPosition(45,435);

	           FirstWin_ButtonA1:SetPosition(145,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(true);
		   win:Visible(true);
                end;
                if Index == 2 then
	           FirstWin_Text1:SetPosition(45,100);
	           FirstWin_Text2:SetPosition(45,140);
	           FirstWin_Text3:SetPosition(45,160);

        	   FirstWin_Button1:SetPosition(40,160);
               	   FirstWin_Button2:SetPosition(40,185);
         	   FirstWin_Button3:SetPosition(40,210);
	           FirstWin_Button4:SetPosition(40,235);
	           FirstWin_Button5:SetPosition(40,260);
	           FirstWin_Button6:SetPosition(40,285);
	           FirstWin_Button7:SetPosition(40,310);
	           FirstWin_Button8:SetPosition(40,335);
	           FirstWin_Button9:SetPosition(40,360);
	           FirstWin_Button10:SetPosition(40,385);
	           FirstWin_Button11:SetPosition(45,410);
	           FirstWin_Button12:SetPosition(45,435);

	           FirstWin_ButtonA1:SetPosition(145,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(true);
		   win:Visible(true);
                end;
                if Index == 3 then
	           FirstWin_Text1:SetPosition(45,100);
	           FirstWin_Text2:SetPosition(45,170);
	           FirstWin_Text3:SetPosition(45,190);

        	   FirstWin_Button1:SetPosition(25,210);
               	   FirstWin_Button2:SetPosition(25,235);
         	   FirstWin_Button3:SetPosition(25,260);
	           FirstWin_Button4:SetPosition(25,285);
	           FirstWin_Button5:SetPosition(25,310);
	           FirstWin_Button6:SetPosition(25,335);
	           FirstWin_Button7:SetPosition(25,360);
	           FirstWin_Button8:SetPosition(25,385);
	           FirstWin_Button9:SetPosition(25,410);
	           FirstWin_Button10:SetPosition(25,435);
	           FirstWin_Button11:SetPosition(45,410);
	           FirstWin_Button12:SetPosition(45,435);

	           FirstWin_ButtonA1:SetPosition(145,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(true);
		   win:Visible(true);
                end;
		if Index == 4 then
	           FirstWin_Text1:SetPosition(45,100);
	           FirstWin_Text2:SetPosition(45,120);
	           FirstWin_Text3:SetPosition(45,140);

        	   FirstWin_Button1:SetPosition(45,160);
               	   FirstWin_Button2:SetPosition(45,185);
         	   FirstWin_Button3:SetPosition(45,210);
	           FirstWin_Button4:SetPosition(45,235);
	           FirstWin_Button5:SetPosition(45,260);
	           FirstWin_Button6:SetPosition(45,285);
	           FirstWin_Button7:SetPosition(45,310);
	           FirstWin_Button8:SetPosition(45,335);
	           FirstWin_Button9:SetPosition(45,360);
	           FirstWin_Button10:SetPosition(45,385);
	           FirstWin_Button11:SetPosition(45,410);
	           FirstWin_Button12:SetPosition(45,435);

	           FirstWin_ButtonA1:SetPosition(145,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(true);
		   win:Visible(true);
                end;
 		if Index == 5 then
	           FirstWin_Text1:SetPosition(45,100);
	           FirstWin_Text2:SetPosition(45,120);
	           FirstWin_Text3:SetPosition(45,140);

        	   FirstWin_Button1:SetPosition(45,160);
               	   FirstWin_Button2:SetPosition(45,185);
         	   FirstWin_Button3:SetPosition(45,210);
	           FirstWin_Button4:SetPosition(45,235);
	           FirstWin_Button5:SetPosition(45,260);
	           FirstWin_Button6:SetPosition(45,285);
	           FirstWin_Button7:SetPosition(45,310);
	           FirstWin_Button8:SetPosition(45,335);
	           FirstWin_Button9:SetPosition(45,360);
	           FirstWin_Button10:SetPosition(45,385);
	           FirstWin_Button11:SetPosition(45,410);
	           FirstWin_Button12:SetPosition(45,435);

	           FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
		   win:Visible(true);
                end;
    	elseif Type == NPC_FLAG_SYS_SKILLBOOK then
                FirstWin_ButtonA1:SetPosition(145,500);
	        FirstWin_ButtonA2:SetPosition(220,500);
                FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
		win:Visible(true);
    	elseif Type == NPC_FLAG_LivingSkill then
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
		win:Visible(true);
    	elseif Type == NPC_FLAG_GUILDQUEST then
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
		win:Visible(true);
    	elseif Type == NPC_FLAG_SYS_BREAK then
                if Index== 3 then
                   zb = 0
                end;
                FirstWin_ButtonA1:SetPosition(145,500);
	        FirstWin_ButtonA2:SetPosition(220,500);
                FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
		win:Visible(true);
    	elseif Type == NPC_FLAG_SYS_DESIDENTIFY then
	        FirstWin_Text1:SetPosition(45,100);
	        FirstWin_Text2:SetPosition(45,120);
	        FirstWin_Text3:SetPosition(45,160);
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
        	FirstWin_Button1:SetPosition(35,160);
               	FirstWin_Button2:SetPosition(35,185);
         	FirstWin_Button3:SetPosition(35,210);
	        FirstWin_Button4:SetPosition(35,235);
	        FirstWin_Button5:SetPosition(35,260);
	        FirstWin_Button6:SetPosition(35,285);
	        FirstWin_Button7:SetPosition(35,310);
	        FirstWin_Button8:SetPosition(35,335);
	        FirstWin_Button9:SetPosition(35,360);
	        FirstWin_Button10:SetPosition(35,385);
	        FirstWin_Button11:SetPosition(35,410);
	        FirstWin_Button12:SetPosition(35,435);
		win:Visible(true);
		strDesig = ""
    	elseif Type == NPC_FLAG_SYS_DESAWARD then
	        FirstWin_Text1:SetPosition(45,100);
	        FirstWin_Text2:SetPosition(45,120);
	        FirstWin_Text3:SetPosition(45,160);
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
        	FirstWin_Button1:SetPosition(35,160);
               	FirstWin_Button2:SetPosition(35,185);
         	FirstWin_Button3:SetPosition(35,210);
	        FirstWin_Button4:SetPosition(35,235);
	        FirstWin_Button5:SetPosition(35,260);
	        FirstWin_Button6:SetPosition(35,285);
	        FirstWin_Button7:SetPosition(35,310);
	        FirstWin_Button8:SetPosition(35,335);
	        FirstWin_Button9:SetPosition(35,360);
	        FirstWin_Button10:SetPosition(35,385);
	        FirstWin_Button11:SetPosition(35,410);
	        FirstWin_Button12:SetPosition(35,435);
		win:Visible(true);
    	elseif Type == NPC_FLAG_SYS_SIGNACT then
	        FirstWin_Text1:SetPosition(45,100);
	        FirstWin_Text2:SetPosition(45,120);
	        FirstWin_Text3:SetPosition(45,160);
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
                strDesig = ""
		win:Visible(true);
	elseif Type == NPC_FLAG_SYS_MATERIALBACK then		-----20090326,ver204,li
	        FirstWin_Text1:SetPosition(45,100);
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
                strDesig = ""
		win:Visible(true);
	elseif Type == NPC_FLAG_SYS_ASSOCIATION then
		FirstWin_Text1:SetPosition(45,100);
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
                strDesig = ""
		win:Visible(true);
	elseif Type == NPC_FLAG_SYS_HEALTH then
		FirstWin_Text1:SetPosition(45,100);
		FirstWin_Text1:Visible(false);
		FirstWin_Text2:Visible(false);
		FirstWin_Text3:Visible(false);
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
                strDesig = ""
		win:Visible(true);
	elseif Type == NPC_FLAG_SYS_OLDMAN then
		FirstWin_Text1:SetPosition(45,100);
		FirstWin_Text1:Visible(false);
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
                strDesig = ""
		win:Visible(true);
	elseif Type == NPC_FLAG_SYS_LOSTBOOK then
		FirstWin_Text1:SetPosition(45,100);
		FirstWin_Text1:Visible(false);
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
                strDesig = ""
		win:Visible(true);
	elseif Type == NPC_FLAG_SYS_REMAIN then
		FirstWin_Text1:SetPosition(45,100);
		FirstWin_Text1:Visible(false);
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
                strDesig = ""
		win:Visible(true);
	elseif Type == NPC_FLAG_SYS_MESSENGER then
		FirstWin_Text1:SetPosition(45,100);
		FirstWin_Text1:Visible(false);
		FirstWin_ButtonA1:Visible(true);
		FirstWin_ButtonA2:Visible(true);
                strDesig = ""
		win:Visible(true);
    	end;
end

--配置UI窗体信息生成自己想要的界面
function Set_NpcFun_Text(Type,Index,BtnID,SubID)
	if Type == NPC_FLAG_SYS_TRANMIT then    --------传送----------------------------------------------------------------------------------
		if Index == 1 then
			if SubID== 1 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_1);
				Button:Visible(true);
			elseif SubID == 2 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2);
				Button:Visible(true);
			elseif SubID == 3 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_3);
				Button:Visible(true);
			elseif SubID == 4 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_4);
				Button:Visible(true);
                	elseif SubID == 5 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_5);
				Button:Visible(true);
                	elseif SubID == 6 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_6);
				Button:Visible(true);
                	elseif SubID == 100 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_168);
				Button:Visible(true);
                	elseif SubID == 101 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_169);
				Button:Visible(true);
                	elseif SubID == 102 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_170);
				Button:Visible(true);
                	elseif SubID == 103 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_171);
				Button:Visible(true);
                	elseif SubID == 104 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_172);
				Button:Visible(true);
                	elseif SubID == 105 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_173);
				Button:Visible(true);
                	elseif SubID == 106 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_174);
				Button:Visible(true);
                	elseif SubID == 107 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_175);
				Button:Visible(true);
                	elseif SubID == 108 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_176);
				Button:Visible(true);
                	elseif SubID == 109 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_177);
				Button:Visible(true);
                	elseif SubID == 110 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_178);
				Button:Visible(true);
                	elseif SubID == 111 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_179);
				Button:Visible(true);
                	elseif SubID == 10 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_180);
				Button:Visible(true);
                	elseif SubID == 11 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_181);
				Button:Visible(true);
                	elseif SubID == 12 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_182);
				Button:Visible(true);
                	elseif SubID == 13 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_183);
				Button:Visible(true);
                	elseif SubID == 14 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_184);
				Button:Visible(true);
                	elseif SubID == 15 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_185);
				Button:Visible(true);
                	elseif SubID == 16 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_186);
				Button:Visible(true);
                	elseif SubID == 17 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_187);
				Button:Visible(true);
                	elseif SubID == 18 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_188);
				Button:Visible(true);
                	elseif SubID == 19 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_189);
				Button:Visible(true);
                	elseif SubID == 20 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_190);
				Button:Visible(true);
                	elseif SubID == 21 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_191);
				Button:Visible(true);
                	elseif SubID == 50 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_192);
				Button:Visible(true);
                	elseif SubID == 51 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_193);
				Button:Visible(true);
                	elseif SubID == 52 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_194);
				Button:Visible(true);
                	elseif SubID == 53 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_195);
				Button:Visible(true);
                	elseif SubID == 54 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_196);
				Button:Visible(true);
                	elseif SubID == 55 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_197);
				Button:Visible(true);
                	elseif SubID == 56 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_198);
				Button:Visible(true);
                	elseif SubID == 57 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_199);
				Button:Visible(true);
                	elseif SubID == 58 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_200);
				Button:Visible(true);
                	elseif SubID == 59 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_201);
				Button:Visible(true);
                	elseif SubID == 60 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_202);
				Button:Visible(true);
                	elseif SubID == 61 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_203);
				Button:Visible(true);
                	elseif SubID == 200 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_204);
				Button:Visible(true);
                	elseif SubID == 201 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_205);
				Button:Visible(true);
                	elseif SubID == 202 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_29);
				Button:Visible(true);
                	elseif SubID == 203 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_206);
				Button:Visible(true);
                	elseif SubID == 218 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_218);
				Button:Visible(true);
                	elseif SubID == 300 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_30);
				Button:Visible(true);
                	elseif SubID == 301 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_30);
				Button:Visible(true);
                	elseif SubID == 500 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_500);
				Button:Visible(true);
                	elseif SubID == 501 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_501);
				Button:Visible(true);
                	elseif SubID == 700 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_700);
				Button:Visible(true);
                	elseif SubID == 701 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_701);
				Button:Visible(true);
                	elseif SubID == 800 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_800);
				Button:Visible(true);
                	elseif SubID == 801 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_801);
				Button:Visible(true);
                	elseif SubID == 802 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_802);
				Button:Visible(true);
                	elseif SubID == 803 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_803);
				Button:Visible(true);
                	elseif SubID == 804 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_804);
				Button:Visible(true);
                	elseif SubID == 805 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_805);
				Button:Visible(true);
                	elseif SubID == 810 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_810);
				Button:Visible(true);
                	elseif SubID == 811 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_811);
				Button:Visible(true);
                	elseif SubID == 812 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_812);
				Button:Visible(true);
                	elseif SubID == 813 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_813);
				Button:Visible(true);
                	elseif SubID == 814 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_814);
				Button:Visible(true);
                	elseif SubID == 815 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_815);
				Button:Visible(true);
                	elseif SubID == 560 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_560);
				Button:Visible(true);
                	elseif SubID == 561 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_561);
				Button:Visible(true);
                	elseif SubID == 320 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y320);
				Button:Visible(true);
                	elseif SubID == 321 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y321);
				Button:Visible(true);
                	elseif SubID == 322 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y322);
				Button:Visible(true);
                	elseif SubID == 323 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y323);
				Button:Visible(true);
                	elseif SubID == 324 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y324);
				Button:Visible(true);
			elseif SubID == 8002 then
				FirstWin_Text1:SetText(NF_L0_Y8002);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 251 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y8003);
				Button:Visible(true);
			elseif SubID == 252 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y8003);
				Button:Visible(true);
			elseif SubID == 7002 then
				FirstWin_Text1:SetText(NF_L0_Y7002);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 253 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y253);
				Button:Visible(true);
			elseif SubID == 254 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y254);
				Button:Visible(true);
			elseif SubID == 255 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y254);
				Button:Visible(true);
			elseif SubID == 256 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y254);
				Button:Visible(true);
			elseif SubID == 257 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y254);
				Button:Visible(true);
			elseif SubID == 258 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y253);
				Button:Visible(true);
			elseif SubID == 259 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y253);
				Button:Visible(true);
			elseif SubID == 260 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y253);
				Button:Visible(true);
			elseif SubID == 261 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y254);
				Button:Visible(true);
			elseif SubID == 262 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y254);
				Button:Visible(true);
			elseif SubID == 263 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y254);
				Button:Visible(true);
			elseif SubID == 264 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y253);
				Button:Visible(true);
			elseif SubID == 265 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y253);
				Button:Visible(true);
			elseif SubID == 266 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_Y253);
				Button:Visible(true);
			elseif SubID == 270 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_270);
				Button:Visible(true);
			elseif SubID == 271 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_271);
				Button:Visible(true);
			elseif SubID == 650 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_650);
				Button:Visible(true);
			elseif SubID == 651 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_651);
				Button:Visible(true);
			elseif SubID == 652 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_652);
				Button:Visible(true);
			elseif SubID == 653 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_653);
				Button:Visible(true);
			elseif SubID == 654 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_654);
				Button:Visible(true);
			elseif SubID == 655 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_655);
				Button:Visible(true);
			elseif SubID == 656 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_656);
				Button:Visible(true);
			elseif SubID == 657 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_657);
				Button:Visible(true);
			elseif SubID == 658 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_658);
				Button:Visible(true);
			elseif SubID == 659 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_659);
				Button:Visible(true);
			elseif SubID == 660 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_660);
				Button:Visible(true);
			elseif SubID == 661 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_661);
				Button:Visible(true);
			end;
		elseif Index == 2 then
			if SubID == 1000 then
				FirstWin_Text1:SetText(NF_L0_32);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 1001 then
				FirstWin_Text1:SetText(NF_L0_33);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2001 then
				FirstWin_Text1:SetText(NF_L0_34);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 1009 then
				FirstWin_Text1:SetText(NF_L0_35);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 1010 then
				FirstWin_Text1:SetText(NF_L0_36);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 1200 then
				FirstWin_Text1:SetText(NF_L0_37);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 1111 then
				FirstWin_Text1:SetText(NF_L0_38);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 1112 then
				FirstWin_Text1:SetText(NF_L0_31);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 1113 then
				FirstWin_Text1:SetText(NF_L0_1113);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 1114 then
				FirstWin_Text1:SetText(NF_L0_1114);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2700 then
				FirstWin_Text1:SetText(NF_L0_2700);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2701 then
				FirstWin_Text1:SetText(NF_L0_2701);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2702 then
				FirstWin_Text1:SetText(NF_L0_2702);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2703 then
				FirstWin_Text1:SetText(NF_L0_2703);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2704 then
				FirstWin_Text1:SetText(NF_L0_2704);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2705 then
				FirstWin_Text1:SetText(NF_L0_2705);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2706 then
				FirstWin_Text1:SetText(NF_L0_2706);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 512 then
				FirstWin_Text1:SetText(NF_L0_512);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 8000 then
				FirstWin_Text1:SetText(NF_L0_Y8000);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 8001 then
				FirstWin_Text1:SetText(NF_L0_Y8001);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 7001 then
				FirstWin_Text1:SetText(NF_L0_Y7001);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 1569 then
				FirstWin_Text1:SetText(NF_L0_1569);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 1019 then
				FirstWin_Text1:SetText(NF_L0_1019);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			end;
        	end;
	elseif Type == NPC_FLAG_SYS_CREDIT_EXCHANGE then    --------兑换-----------------------------------------------------------------------
		if Index == 1 then
			if SubID== 1 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_39);
				Button:Visible(true);
			elseif SubID == 2 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_40);
				Button:Visible(true);
			elseif SubID == 3 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_41);
				Button:Visible(true);
			elseif SubID == 4 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_42);
				Button:Visible(true);
			elseif SubID == 5 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_43);
				Button:Visible(true);
			elseif SubID == 1000 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_1000);
				Button:Visible(true);
			elseif SubID == 2000 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2000);
				Button:Visible(true);
			elseif SubID == 2001 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2001);
				Button:Visible(true);
			elseif SubID == 2002 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2002);
				Button:Visible(true);
			elseif SubID == 2003 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2003);
				Button:Visible(true);
			elseif SubID == 2004 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2004);
				Button:Visible(true);
			elseif SubID == 2005 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2005);
				Button:Visible(true);
			elseif SubID == 2006 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2006);
				Button:Visible(true);
			elseif SubID == 2007 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2007);
				Button:Visible(true);
			elseif SubID == 2008 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2008);
				Button:Visible(true);
			elseif SubID == 2009 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2009);
				Button:Visible(true);
			elseif SubID == 1100 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_1100);
				Button:Visible(true);
			elseif SubID == 2100 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2100);
				Button:Visible(true);
			elseif SubID == 2101 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2101);
				Button:Visible(true);
			elseif SubID == 2102 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2102);
				Button:Visible(true);
			elseif SubID == 2103 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2103);
				Button:Visible(true);
			elseif SubID == 2104 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2104);
				Button:Visible(true);
			elseif SubID == 2105 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2105);
				Button:Visible(true);
			elseif SubID == 2106 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2106);
				Button:Visible(true);
			elseif SubID == 2107 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2107);
				Button:Visible(true);
			elseif SubID == 2108 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2108);
				Button:Visible(true);
			elseif SubID == 2109 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2109);
				Button:Visible(true);
			elseif SubID == 1200 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_1200);
				Button:Visible(true);
			elseif SubID == 2200 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2200);
				Button:Visible(true);
			elseif SubID == 2201 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2201);
				Button:Visible(true);
			elseif SubID == 2202 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2202);
				Button:Visible(true);
			elseif SubID == 2203 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2203);
				Button:Visible(true);
			elseif SubID == 2204 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2204);
				Button:Visible(true);
			elseif SubID == 2205 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2205);
				Button:Visible(true);
			elseif SubID == 2206 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2206);
				Button:Visible(true);
			elseif SubID == 2207 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2207);
				Button:Visible(true);
			elseif SubID == 2208 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2208);
				Button:Visible(true);
			elseif SubID == 2209 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2209);
				Button:Visible(true);
			elseif SubID == 1300 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_1300);
				Button:Visible(true);
			elseif SubID == 2300 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2300);
				Button:Visible(true);
			elseif SubID == 2301 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2301);
				Button:Visible(true);
			elseif SubID == 2302 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2302);
				Button:Visible(true);
			elseif SubID == 2303 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2303);
				Button:Visible(true);
			elseif SubID == 2304 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2304);
				Button:Visible(true);
			elseif SubID == 2305 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2305);
				Button:Visible(true);
			elseif SubID == 2306 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2306);
				Button:Visible(true);
			elseif SubID == 2307 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2307);
				Button:Visible(true);
			elseif SubID == 2308 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2308);
				Button:Visible(true);
			elseif SubID == 2309 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2309);
				Button:Visible(true);
			elseif SubID == 1400 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_1400);
				Button:Visible(true);
			elseif SubID == 2400 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2400);
				Button:Visible(true);
			elseif SubID == 2401 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2401);
				Button:Visible(true);
			elseif SubID == 2402 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2402);
				Button:Visible(true);
			elseif SubID == 2403 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2403);
				Button:Visible(true);
			elseif SubID == 2404 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2404);
				Button:Visible(true);
			elseif SubID == 2405 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2405);
				Button:Visible(true);
			elseif SubID == 2406 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2406);
				Button:Visible(true);
			elseif SubID == 2407 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2407);
				Button:Visible(true);
			elseif SubID == 2408 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2408);
				Button:Visible(true);
			elseif SubID == 2409 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2409);
				Button:Visible(true);
			elseif SubID == 50 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_BD50);
				Button:Visible(true);
				Button:SetPosition(40,250);
			elseif SubID == 51 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_BD51);
				Button:Visible(true);
				Button:SetPosition(40,275);
			elseif SubID == 52 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_BD52);
				Button:Visible(true);
				Button:SetPosition(40,300);
			elseif SubID == 49 then
				FirstWin_Text1:SetText(NF_L0_BD49);
				FirstWin_Text1:Visible(true);
			end;
		elseif Index == 2 then --服务器消息提示
			if SubID == 8888 then
				FirstWin_Text1:SetText(NF_L0_44);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 7777 then
				FirstWin_Text1:SetText(NF_L0_45);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 7666 then
				FirstWin_Text1:SetText(NF_L0_46);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 6666 then
				FirstWin_Text1:SetText(NF_L0_47);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 5555 then
				FirstWin_Text1:SetText(NF_L0_48);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 311 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_BD311);
				Button:Visible(true);
			elseif SubID == 312 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_BD312);
				Button:Visible(true);
			elseif SubID == 313 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_BD313);
				Button:Visible(true);
			elseif SubID == 314 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_BD314);
				Button:Visible(true);
			elseif SubID == 315 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_BD315);
				Button:Visible(true);
			elseif SubID == 316 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_BD316);
				Button:Visible(true);
			elseif SubID == 317 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_BD317);
				Button:Visible(true);
			elseif SubID == 318 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_BD318);
				Button:Visible(true);
			elseif SubID == 319 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_BD319);
				Button:Visible(true);
			elseif SubID == 320 then
				FirstWin_Text1:SetText(NF_L0_BD320);
				FirstWin_Text1:Visible(true);
			end;
		elseif Index == 3 then --服务器消息提示
			if SubID == 3800 then
				FirstWin_Text1:SetText(NF_L0_BD3800);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3801 then
				FirstWin_Text1:SetText(NF_L0_BD3801);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3802 then
				FirstWin_Text1:SetText(NF_L0_BD3802);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3811 then
				FirstWin_Text1:SetText(NF_L0_BD3811);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3812 then
				FirstWin_Text1:SetText(NF_L0_BD3812);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3813 then
				FirstWin_Text1:SetText(NF_L0_BD3813);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3814 then
				FirstWin_Text1:SetText(NF_L0_BD3814);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3815 then
				FirstWin_Text1:SetText(NF_L0_BD3815);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3816 then
				FirstWin_Text1:SetText(NF_L0_BD3816);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3817 then
				FirstWin_Text1:SetText(NF_L0_BD3817);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3818 then
				FirstWin_Text1:SetText(NF_L0_BD3818);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3819 then
				FirstWin_Text1:SetText(NF_L0_BD3819);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			end;
        	end;
	elseif Type == NPC_FLAG_SYS_NEWMAN then    --------新手-------------------------------------------------------------------
		if Index == 1 then
                   if SubID == 5000 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ5000);
                      Button:Visible(true);
                      Button:SetPosition(45,220);
                   elseif SubID == 5001 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ5001);
                      Button:Visible(true);
                      Button:SetPosition(45,245);
                   elseif SubID == 5002 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ5002);
                      Button:Visible(true);
                      Button:SetPosition(45,245);
                   elseif SubID == 5003 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ5003);
                      Button:Visible(true);
                      Button:SetPosition(45,245);
                   elseif SubID == 11 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_111);
                      Button:Visible(true);
                      Button:SetPosition(45,270);
                   elseif SubID == 3 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_5041);
                      Button:Visible(true);
                      Button:SetPosition(45,270);
                   elseif SubID == 5024 then
                      FirstWin_Text1:SetText(NF_L0_BD5024);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5029 then
                      FirstWin_Text1:SetText(NF_L0_BD5029);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5030 then
                      FirstWin_Text1:SetText(NF_L0_BD5030);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5031 then
                      FirstWin_Text1:SetText(NF_L0_BD5031);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5051 then
                      FirstWin_Text1:SetText(NF_L0_BD5051);
                      FirstWin_Text1:Visible(true);
                   end;
                elseif Index == 2 then
                   if SubID == 5005 then
                      FirstWin_Text1:SetText(NF_L0_BD5005);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5006 then
                      FirstWin_Text1:SetText(NF_L0_BD5006);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5007 then
                      FirstWin_Text1:SetText(NF_L0_BD5007);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5008 then
                      FirstWin_Text1:SetText(NF_L0_BD5008);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5013 then
                      FirstWin_Text1:SetText(NF_L0_BD5013);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 1004 then
                      FirstWin_Text1:SetText(NF_L0_T1004);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      FirstWin_ButtonA1:SetPosition(220,500);
                      FirstWin_ButtonA2:SetPosition(220,500);
                      FirstWin_ButtonA1:Visible(true);
                      FirstWin_ButtonA2:Visible(false);
                      NPCFUN:EndMessage(true);
                   elseif SubID == 5015 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_BD5015);
                      Button:Visible(true);
                      Button:SetPosition(45,220);
                   elseif SubID == 5016 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_BD5016);
                      Button:Visible(true);
                      Button:SetPosition(45,245);
                   elseif SubID == 5017 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_BD5017);
                      Button:Visible(true);
                      Button:SetPosition(45,270);
                   elseif SubID == 5020 then
                      FirstWin_Text1:SetText(NF_L0_BD5020);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5021 then
                      FirstWin_Text1:SetText(NF_L0_BD5021);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5022 then
                      FirstWin_Text1:SetText(NF_L0_BD5022);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5023 then
                      FirstWin_Text1:SetText(NF_L0_BD5023);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5025 then
                      FirstWin_Text1:SetText(NF_L0_BD5025);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5026 then
                      FirstWin_Text1:SetText(NF_L0_BD5026);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5027 then
                      FirstWin_Text1:SetText(NF_L0_BD5027);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5028 then
                      FirstWin_Text1:SetText(NF_L0_BD5028);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   end;
                end;
	elseif Type == NPC_FLAG_SYS_PAN then    --------潘神-------------------------------------------------------------------
		if Index == 1 then
                   if SubID == 1 then
                      FirstWin_Text1:SetText(XD_P001);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 2 then
                      FirstWin_Text1:SetText(XD_P002);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3 then
                      FirstWin_Text1:SetText(XD_P003);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 4 then
                      FirstWin_Text1:SetText(XD_P004);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5 then
                      FirstWin_Text1:SetText(XD_P005);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 6 then
                      FirstWin_Text1:SetText(XD_P006);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 7 then
                      FirstWin_Text1:SetText(XD_P007);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 8 then
                      FirstWin_Text1:SetText(XD_P008);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 9 then
                      FirstWin_Text1:SetText(XD_P009);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 10 then
                      FirstWin_Text1:SetText(XD_P010);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 11 then
                      FirstWin_Text1:SetText(XD_P011);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 12 then
                      FirstWin_Text1:SetText(XD_P012);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 13 then
                      FirstWin_Text1:SetText(XD_P013);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   end;
                end;
	elseif Type == NPC_FLAG_SYS_STAR then	--------星座幸运日-----------------------------------------------------------------------
		if Index == 1 then
                   if SubID < 1000 then
                      FirstWin_Text1:SetText(NF_L0_XZ1);
                      FirstWin_Text1:Visible(true);
                   elseif SubID>=1000 then
                      FirstWin_Text1:SetText(NF_L0_XZ6);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);

                   end;
                   if SubID == 1 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_XZ2);
                      Button:Visible(true);
                      Button:SetPosition(40,175);
                   elseif SubID == 2 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_XZ3);
                      Button:Visible(true);
                      Button:SetPosition(40,200);
                   elseif SubID == 3 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_XZ4);
                      Button:Visible(true);
                      Button:SetPosition(40,225);
                   elseif SubID == 4 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_XZ5);
                      Button:Visible(true);
                      Button:SetPosition(40,250);
                   end;
                end;
                if Index == 2 then
                   if SubID >= 1 and SubID <= 24 then
                      FirstWin_Text1:SetText(NF_L0_XZ101);
                      FirstWin_Text1:Visible(true);
                   elseif SubID >= 26 and SubID <= 39 then
                      FirstWin_Text1:SetText(NF_L0_XZ102);
                      FirstWin_Text1:Visible(true); 
                   elseif SubID >= 1000 then
                      FirstWin_Text1:SetText(NF_L0_XZ6);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);        
                   end;
                   if SubID == 1 or SubID == 13 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_XZ8);
                      Button:Visible(true);
                      Button:SetPosition(25,145);
                   elseif SubID == 2 or SubID == 14 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_XZ9);
                      Button:Visible(true);
                      Button:SetPosition(25,170);
                   elseif SubID == 3 or SubID == 15 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_XZ10);
                      Button:Visible(true);
                      Button:SetPosition(25,195);
                   elseif SubID == 4 or SubID == 16 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_XZ11);
                      Button:Visible(true);
                      Button:SetPosition(25,220);
                   elseif SubID == 5 or SubID == 17 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_XZ12);
                      Button:Visible(true);
                      Button:SetPosition(25,245);
                   elseif SubID == 6 or SubID == 18 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_XZ13);
                      Button:Visible(true);
                      Button:SetPosition(25,270);
                   elseif SubID == 7 or SubID == 19 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_XZ14);
                      Button:Visible(true);
                      Button:SetPosition(25,295);
                   elseif SubID == 8 or SubID == 20 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_XZ15);
                      Button:Visible(true);
                      Button:SetPosition(25,320);
                   elseif SubID == 9 or SubID == 21 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_XZ16);
                      Button:Visible(true);
                      Button:SetPosition(25,345);
                   elseif SubID == 10 or SubID == 22 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_XZ17);
                      Button:Visible(true);
                      Button:SetPosition(25,370);
                   elseif SubID == 11 or SubID == 23 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_XZ18);
                      Button:Visible(true);
                      Button:SetPosition(25,395);
                   elseif SubID == 12 or SubID == 24 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_XZ19);
                      Button:Visible(true);
                      Button:SetPosition(25,420);
                   elseif SubID == 26 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_XZ20);
                      Button:Visible(true);
                      Button:SetPosition(25,180);
                   elseif SubID == 39 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_XZ20);
                      Button:Visible(true);
                      Button:SetPosition(25,180);
                   end;
                end;
                if Index == 3 then
                   if SubID >= 1000 then
                      FirstWin_Text1:SetText(NF_L0_XZ6);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                   elseif SubID == 500 then
                      FirstWin_Text1:SetText(NF_L0_XZ7);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                   end;
                   if SubID == 100 then
                      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_XZ27.."|cffFFFFFF");
                      FirstWin_Text2:Visible(true);
                      NPCFUN:EndMessage(true);

                   elseif SubID == 1 then
                      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_XZ32.."|cffFFFFFF");
                      FirstWin_Text2:Visible(true);
                      NPCFUN:EndMessage(true);
                   elseif SubID == 101 then
                      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_XZ28.."|cffFFFFFF");
                      FirstWin_Text2:Visible(true);
                      NPCFUN:EndMessage(true);
                   elseif SubID == 102 then
                      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_XZ29.."|cffFFFFFF");
                      FirstWin_Text2:Visible(true);
                      NPCFUN:EndMessage(true);
                   elseif SubID == 103 then
                      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_XZ30.."|cffFFFFFF");
                      FirstWin_Text2:Visible(true);
                      NPCFUN:EndMessage(true);
                   elseif SubID == 104 then
                      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_XZ31.."|cffFFFFFF");
                      FirstWin_Text2:Visible(true);
                      NPCFUN:EndMessage(true);
                   elseif SubID == 105 then
                      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_XZ33.."|cffFFFFFF");
                      FirstWin_Text2:Visible(true);
                      NPCFUN:EndMessage(true);
                   elseif SubID == 106 then
                      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_XZ34.."|cffFFFFFF");
                      FirstWin_Text2:Visible(true);
                      NPCFUN:EndMessage(true);
                   end;
                end;
	elseif Type == NPC_FLAG_SYS_UNIONWAR then    --------公会活动-------------------------------------------------------------------
		if Index == 1 then
                   if SubID == 3001 then
                      FirstWin_Text1:SetText(NF_L0_UN600);
                      FirstWin_Text1:Visible(true);
		      FirstWin_Text2:SetText(NF_L0_UN3001);
		      FirstWin_Text2:Visible(true);
                      FirstWin_Text2:SetPosition(45,125);
                      FirstWin_ItemBtn1:Visible(true);
                      FirstWin_ItemBtn1:SetPosition(60,220);
                   elseif SubID == 3802 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_UN3002);
                      Button:Visible(true);
                      Button:SetPosition(45,245);
                    elseif SubID ==500 then
		      FirstWin_Text1:SetText(NF_L0_UN600);
		      FirstWin_Text1:Visible(true);
		      FirstWin_Text2:SetText(NF_L0_UN602);
		      FirstWin_Text2:Visible(true);
                      FirstWin_Text2:SetPosition(45,125);
                      FirstWin_ItemBtn1:Visible(true);
                      FirstWin_ItemBtn1:SetPosition(60,210);
                    elseif SubID ==501 then
		      FirstWin_Text1:SetText(NF_L0_UN600);
		      FirstWin_Text1:Visible(true);
		      FirstWin_Text2:SetText(NF_L0_UN601);
		      FirstWin_Text2:Visible(true);
                      FirstWin_Text2:SetPosition(45,125);
                      FirstWin_ItemBtn1:Visible(true);
                      FirstWin_ItemBtn1:SetPosition(60,210);
                   end;
                elseif Index == 2 then
                   if SubID == 3900 then
                      FirstWin_Text1:SetText(NF_L0_UN3900);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3901 then
                      FirstWin_Text1:SetText(NF_L0_UN3901);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3902 then
                      FirstWin_Text1:SetText(NF_L0_UN3902);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3903 then
                      FirstWin_Text1:SetText(NF_L0_UN3903);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3904 then
                      FirstWin_Text1:SetText(NF_L0_UN3904);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3905 then
                      FirstWin_Text1:SetText(NF_L0_UN3905);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3906 then
                      FirstWin_Text1:SetText(NF_L0_UN3906);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3907 then
                      FirstWin_Text1:SetText(NF_L0_UN3907);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3908 then
                      FirstWin_Text1:SetText(NF_L0_UN3908);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3909 then
                      FirstWin_Text1:SetText(NF_L0_UN3909);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3910 then
                      FirstWin_Text1:SetText(NF_L0_UN3910);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3911 then
                      FirstWin_Text1:SetText(NF_L0_UN3911);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3912 then
                      FirstWin_Text1:SetText(NF_L0_UN3912);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3913 then
                      FirstWin_Text1:SetText(NF_L0_UN3913);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3914 then
                      FirstWin_Text1:SetText(NF_L0_UN3914);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3915 then
                      FirstWin_Text1:SetText(NF_L0_UN3915);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3916 then
                      FirstWin_Text1:SetText(NF_L0_UN3916);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3917 then
                      FirstWin_Text1:SetText(NF_L0_UN3917);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3918 then
                      FirstWin_Text1:SetText(NF_L0_UN3918);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3919 then
                      FirstWin_Text1:SetText(NF_L0_UN3919);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3920 then
                      FirstWin_Text1:SetText(NF_L0_UN3920);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3921 then
                      FirstWin_Text1:SetText(NF_L0_UN3921);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3922 then
                      FirstWin_Text1:SetText(NF_L0_UN3922);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3923 then
                      FirstWin_Text1:SetText(NF_L0_UN3923);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3924 then
                      FirstWin_Text1:SetText(NF_L0_UN3924);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3925 then
                      FirstWin_Text1:SetText(NF_L0_UN3925);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3926 then
                      FirstWin_Text1:SetText(NF_L0_UN3926);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3927 then
                      FirstWin_Text1:SetText(NF_L0_UN3927);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3928 then
                      FirstWin_Text1:SetText(NF_L0_UN3928);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3929 then
                      FirstWin_Text1:SetText(NF_L0_UN3929);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3938 then
                      FirstWin_Text1:SetText(NF_L0_UN3938);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 3939 then
                      FirstWin_Text1:SetText(NF_L0_UN3939);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 1 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-1)/5000-1))..NF_L0_UN2..(3000+600*((SubID-1)/5000-1))..NF_L0_UN3..(3000+1500*((SubID-1)/5000-1)));
		      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 2 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-2)/5000-1))..NF_L0_UN2..(3000+600*((SubID-2)/5000-1))..NF_L0_UN4..(3000+1500*((SubID-2)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 3 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-3)/5000-1))..NF_L0_UN2..(3000+600*((SubID-3)/5000-1))..NF_L0_UN5..(12+6*((SubID-3)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 4 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-4)/5000-1))..NF_L0_UN3..(3000+1500*((SubID-4)/5000-1))..NF_L0_UN4..(3000+1500*((SubID-4)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 5 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-5)/5000-1))..NF_L0_UN3..(3000+1500*((SubID-5)/5000-1))..NF_L0_UN5..(12+6*((SubID-5)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 6 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-6)/5000-1))..NF_L0_UN4..(3000+1500*((SubID-6)/5000-1))..NF_L0_UN5..(12+6*((SubID-6)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 7 then
                      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-7)/5000-1))..NF_L0_UN3..(3000+1500*((SubID-7)/5000-1))..NF_L0_UN4..(3000+1500*((SubID-7)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 8 then
                      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-8)/5000-1))..NF_L0_UN3..(3000+1500*((SubID-8)/5000-1))..NF_L0_UN5..(12+6*((SubID-8)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 9 then
                      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-9)/5000-1))..NF_L0_UN4..(3000+600*((SubID-9)/5000-1))..NF_L0_UN5..(12+6*((SubID-9)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 10 then
                      FirstWin_Text1:SetText(NF_L0_UN3..(3000+1500*((SubID-10)/5000-1))..NF_L0_UN4..(3000+1500*((SubID-10)/5000-1))..NF_L0_UN5..(12+6*((SubID-10)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 11 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-11)/5000-1))..NF_L0_UN2..(3000+600*((SubID-11)/5000-1))..NF_L0_UN13..(3000+1500*((SubID-11)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 12 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-12)/5000-1))..NF_L0_UN2..(3000+600*((SubID-12)/5000-1))..NF_L0_UN14..(30000+45000*((SubID-12)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 13 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-13)/5000-1))..NF_L0_UN2..(3000+600*((SubID-13)/5000-1))..NF_L0_UN15..(12+6*((SubID-13)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 14 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-14)/5000-1))..NF_L0_UN13..(3000+1500*((SubID-14)/5000-1))..NF_L0_UN14..(30000+45000*((SubID-14)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 15 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-15)/5000-1))..NF_L0_UN13..(3000+1500*((SubID-15)/5000-1))..NF_L0_UN15..(12+6*((SubID-15)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 16 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-16)/5000-1))..NF_L0_UN14..(30000+45000*((SubID-16)/5000-1))..NF_L0_UN15..(12+6*((SubID-16)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 17 then
                      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-17)/5000-1))..NF_L0_UN13..(3000+1500*((SubID-17)/5000-1))..NF_L0_UN14..(30000+45000*((SubID-17)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 18 then
                      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-18)/5000-1))..NF_L0_UN13..(3000+1500*((SubID-18)/5000-1))..NF_L0_UN15..(12+6*((SubID-18)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 19 then
                      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-19)/5000-1))..NF_L0_UN14..(30000+45000*((SubID-19)/5000-1))..NF_L0_UN15..(12+6*((SubID-19)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 20 then
                      FirstWin_Text1:SetText(NF_L0_UN13..(3000+1500*((SubID-20)/5000-1))..NF_L0_UN14..(30000+45000*((SubID-20)/5000-1))..NF_L0_UN15..(12+6*((SubID-20)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 21 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-21)/5000-1))..NF_L0_UN2..(3000+600*((SubID-21)/5000-1))..NF_L0_UN23..(3000+1500*((SubID-21)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 22 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-22)/5000-1))..NF_L0_UN2..(3000+600*((SubID-22)/5000-1))..NF_L0_UN24..(30000+45000*((SubID-22)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 23 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-23)/5000-1))..NF_L0_UN2..(3000+600*((SubID-23)/5000-1))..NF_L0_UN25..(3000+1500*((SubID-23)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 24 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-24)/5000-1))..NF_L0_UN23..(3000+1500*((SubID-24)/5000-1))..NF_L0_UN24..(30000+45000*((SubID-24)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 25 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-25)/5000-1))..NF_L0_UN23..(3000+1500*((SubID-25)/5000-1))..NF_L0_UN25..(3000+1500*((SubID-25)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 26 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-26)/5000-1))..NF_L0_UN24..(30000+45000*((SubID-26)/5000-1))..NF_L0_UN25..(3000+1500*((SubID-26)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 27 then
                      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-27)/5000-1))..NF_L0_UN23..(3000+1500*((SubID-27)/5000-1))..NF_L0_UN24..(30000+45000*((SubID-27)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 28 then
                      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-28)/5000-1))..NF_L0_UN23..(3000+1500*((SubID-28)/5000-1))..NF_L0_UN25..(3000+1500*((SubID-28)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 29 then
                      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-29)/5000-1))..NF_L0_UN24..(30000+45000*((SubID-29)/5000-1))..NF_L0_UN25..(3000+1500*((SubID-29)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 30 then
                      FirstWin_Text1:SetText(NF_L0_UN23..(3000+1500*((SubID-30)/5000-1))..NF_L0_UN24..(30000+45000*((SubID-30)/5000-1))..NF_L0_UN25..(3000+1500*((SubID-30)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 31 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-31)/5000-1))..NF_L0_UN2..(3000+600*((SubID-31)/5000-1))..NF_L0_UN33..(30000+45000*((SubID-31)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 32 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-32)/5000-1))..NF_L0_UN2..(3000+600*((SubID-32)/5000-1))..NF_L0_UN34..(3000+1500*((SubID-32)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 33 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-33)/5000-1))..NF_L0_UN2..(3000+600*((SubID-33)/5000-1))..NF_L0_UN35..(12+6*((SubID-33)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 34 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-34)/5000-1))..NF_L0_UN33..(30000+45000*((SubID-34)/5000-1))..NF_L0_UN34..(3000+1500*((SubID-34)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 35 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-35)/5000-1))..NF_L0_UN33..(30000+45000*((SubID-35)/5000-1))..NF_L0_UN35..(12+6*((SubID-35)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 36 then
                      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-36)/5000-1))..NF_L0_UN34..(3000+1500*((SubID-36)/5000-1))..NF_L0_UN35..(12+6*((SubID-36)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 37 then
                      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-37)/5000-1))..NF_L0_UN33..(30000+45000*((SubID-37)/5000-1))..NF_L0_UN34..(3000+1500*((SubID-37)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 38 then
                      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-38)/5000-1))..NF_L0_UN33..(30000+45000*((SubID-38)/5000-1))..NF_L0_UN35..(12+6*((SubID-38)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 39 then
                      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-39)/5000-1))..NF_L0_UN34..(3000+600*((SubID-39)/5000-1))..NF_L0_UN35..(12+6*((SubID-39)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID % 5000 == 40 then
                      FirstWin_Text1:SetText(NF_L0_UN33..(30000+45000*((SubID-40)/5000-1))..NF_L0_UN34..(3000+1500*((SubID-40)/5000-1))..NF_L0_UN35..(12+6*((SubID-40)/5000-1)));
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 100 then
		      FirstWin_Text1:SetText(NF_L0_UN100);
		      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 101 then
		      FirstWin_Text1:SetText(NF_L0_UN101);
		      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 102 then
		      FirstWin_Text1:SetText(NF_L0_UN102);
		      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 103 then
		      FirstWin_Text1:SetText(NF_L0_UN103);
		      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 104 then
		      FirstWin_Text1:SetText(NF_L0_UN104);
		      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 105 then
		      FirstWin_Text1:SetText(NF_L0_UN105);
		      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 504 then
		      FirstWin_Text1:SetText(NF_L0_UN504);
		      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 603 then
		      FirstWin_Text1:SetText(NF_L0_UN507);
		      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 604 then
		      FirstWin_Text1:SetText(NF_L0_UN501);
		      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 605 then
		      FirstWin_Text1:SetText(NF_L0_UN502);
		      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 606 then
		      FirstWin_Text1:SetText(NF_L0_UN503);
		      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);

                   end;
                end;
	elseif Type == NPC_FLAG_SYS_BREAK then    --------装备分解-------------------------------------------------------------------
		if Index == 1 then
                   FirstWin_Text1:SetText(NF_L0_FJ1);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_Text2:SetText(NF_L0_FJ64);
                   FirstWin_Text2:Visible(true);
                   FirstWin_Text2:SetPosition(45,160);
                   if SubID == 1 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ2);
                      Button:Visible(true);
                      Button:SetPosition(45,220);
                   elseif SubID == 2 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ3);
                      Button:Visible(true);
                      Button:SetPosition(45,245);
                   elseif SubID == 3 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ4);
                      Button:Visible(true);
                      Button:SetPosition(45,270);
                   elseif SubID == 4 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ5);
                      Button:Visible(true);
                      Button:SetPosition(45,320);
                   elseif SubID == 5 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ6);
                      Button:Visible(true);
                      Button:SetPosition(45,345);
                   elseif SubID == 6 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ48);
                      Button:Visible(true);
                      Button:SetPosition(45,295);
                   end;
                elseif Index == 2 then
                   if SubID >= 9900 and SubID <= 10000 then
                      if SubID == 9930 then
                         FirstWin_Text2:SetText(NF_L0_FJ7);
                         FirstWin_Text2:Visible(true);
                         FirstWin_Text2:SetPosition(45,120);
                      elseif SubID == 9931 then
                         FirstWin_Text2:SetText(NF_L0_FJ23);
                         FirstWin_Text2:Visible(true);
                         FirstWin_Text2:SetPosition(45,120);
                      elseif SubID == 9932 then
                         FirstWin_Text2:SetText(NF_L0_FJ24);
                         FirstWin_Text2:Visible(true);
                         FirstWin_Text2:SetPosition(45,120);
                      elseif SubID == 9933 then
                         FirstWin_Text2:SetText(NF_L0_FJ25);
                         FirstWin_Text2:Visible(true);
                         FirstWin_Text2:SetPosition(45,120);
                      elseif SubID == 9934 then
                         FirstWin_Text2:SetText(NF_L0_FJ26);
                         FirstWin_Text2:Visible(true);
                         FirstWin_Text2:SetPosition(45,120);
                      elseif SubID == 9935 then
                         FirstWin_Text2:SetText(NF_L0_FJ27);
                         FirstWin_Text2:Visible(true);
                         FirstWin_Text2:SetPosition(45,120);
                      elseif SubID == 9936 then
                         FirstWin_Text2:SetText(NF_L0_FJ28);
                         FirstWin_Text2:Visible(true);
                         FirstWin_Text2:SetPosition(45,120);
                      elseif SubID == 9937 then
                         FirstWin_Text2:SetText(NF_L0_FJ29);
                         FirstWin_Text2:Visible(true);
                         FirstWin_Text2:SetPosition(45,120);
                      elseif SubID == 9938 then
                         FirstWin_Text2:SetText(NF_L0_FJ30);
                         FirstWin_Text2:Visible(true);
                         FirstWin_Text2:SetPosition(45,120);
                      elseif SubID == 9960 then
                         FirstWin_Text2:SetText(NF_L0_FJ31);
                         FirstWin_Text2:Visible(true);
                         FirstWin_Text2:SetPosition(45,120);
                      elseif SubID == 9961 then
                         FirstWin_Text2:SetText(NF_L0_FJ32);
                         FirstWin_Text2:Visible(true);
                         FirstWin_Text2:SetPosition(45,120);
                      elseif SubID == 9962 then
                         FirstWin_Text2:SetText(NF_L0_FJ33);
                         FirstWin_Text2:Visible(true);
                         FirstWin_Text2:SetPosition(45,120);
                      elseif SubID == 9990 then
                         FirstWin_Text2:SetText(NF_L0_FJ34);
                         FirstWin_Text2:Visible(true);
                         FirstWin_Text2:SetPosition(45,120);
                      end;
                   elseif SubID >= 1000*100 and SubID < 3700*100 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ8);
                      Button:Visible(true);
                      Button:SetPosition(45,160);
                   elseif SubID == 1 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ9);
                      Button:Visible(true);
                      Button:SetPosition(45,160);
                   elseif SubID == 2 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ10);
                      Button:Visible(true);
                      Button:SetPosition(45,185);
                   elseif SubID == 3 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ11);
                      Button:Visible(true);
                      Button:SetPosition(45,210);
                   elseif SubID == 4 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ12);
                      Button:Visible(true);
                      Button:SetPosition(45,235);
                   elseif SubID == 6 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ62);
                      Button:Visible(true);
                      Button:SetPosition(45,260);
                   end;
                elseif Index == 3 then
                   if SubID < 100 and SubID >= 0 then
                      FirstWin_Text1:SetText(NF_L0_FJ13);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      FirstWin_ButtonA1:SetPosition(220,500);
	              FirstWin_ButtonA2:SetPosition(220,500);
		      FirstWin_ButtonA1:Visible(true);
		      FirstWin_ButtonA2:Visible(false);
                      NPCFUN:EndMessage(true);
                   end;
                   if (SubID - 10) == 0 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ14);
                      Button:Visible(true);
                      zb = zb + 1
                      Button:SetPosition(45,160 + (zb - 1)*25);
                      Button:Enable(false);
                      UIAPI:SetChecked(false,Button);
                   elseif (SubID - 10) == 1 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ15);
                      Button:Visible(true);
                      zb = zb + 1
                      Button:SetPosition(45,160 + (zb - 1)*25);
                      Button:Enable(false);
                      UIAPI:SetChecked(false,Button);
                   elseif (SubID - 10) == 2 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ16);
                      Button:Visible(true);
                      zb = zb + 1
                      Button:SetPosition(45,160 + (zb - 1)*25);
                      Button:Enable(false);
                      UIAPI:SetChecked(false,Button);
                   elseif (SubID - 10) == 3 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ17);
                      Button:Visible(true);
                      zb = zb + 1
                      Button:SetPosition(45,160 + (zb - 1)*25);
                      Button:Enable(false);
                      UIAPI:SetChecked(false,Button);
                   elseif (SubID - 10) == 10 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ18);
                      Button:Visible(true);
                      zb = zb + 1
                      Button:SetPosition(45,160 + (zb - 1)*25);
                      Button:Enable(false);
                      UIAPI:SetChecked(false,Button);
                   elseif (SubID - 10) == 13 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ19);
                      Button:Visible(true);
                      zb = zb + 1
                      Button:SetPosition(45,160 + (zb - 1)*25);
                      Button:Enable(false);
                      UIAPI:SetChecked(false,Button);
                   elseif (SubID - 10) == 14 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ20);
                      Button:Visible(true);
                      zb = zb + 1
                      Button:SetPosition(45,160 + (zb - 1)*25);
                      Button:Enable(false);
                      UIAPI:SetChecked(false,Button);
                   elseif (SubID - 10) == 15 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ21);
                      Button:Visible(true);
                      zb = zb + 1
                      Button:SetPosition(45,160 + (zb - 1)*25);
                      Button:Enable(false);
                      UIAPI:SetChecked(false,Button);
                   elseif (SubID - 10) == 16 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ22);
                      Button:Visible(true);
                      zb = zb + 1
                      Button:SetPosition(45,160 + (zb - 1)*25);
                      Button:Enable(false);
                      UIAPI:SetChecked(false,Button);
                   elseif (SubID - 10) == 4 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ52);
                      Button:Visible(true);
                      zb = zb + 1
                      Button:SetPosition(45,160 + (zb - 1)*25);
                      Button:Enable(false);
                      UIAPI:SetChecked(false,Button);
                   elseif (SubID - 10) == 5 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ53);
                      Button:Visible(true);
                      zb = zb + 1
                      Button:SetPosition(45,160 + (zb - 1)*25);
                      Button:Enable(false);
                      UIAPI:SetChecked(false,Button);
                   elseif (SubID - 10) == 6 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ54);
                      Button:Visible(true);
                      zb = zb + 1
                      Button:SetPosition(45,160 + (zb - 1)*25);
                      Button:Enable(false);
                      UIAPI:SetChecked(false,Button);
                   elseif (SubID - 10) == 7 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ55);
                      Button:Visible(true);
                      zb = zb + 1
                      Button:SetPosition(45,160 + (zb - 1)*25);
                      Button:Enable(false);
                      UIAPI:SetChecked(false,Button);
                   elseif (SubID - 10) == 8 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ56);
                      Button:Visible(true);
                      zb = zb + 1
                      Button:SetPosition(45,160 + (zb - 1)*25);
                      Button:Enable(false);
                      UIAPI:SetChecked(false,Button);
                   elseif (SubID - 10) == 9 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ57);
                      Button:Visible(true);
                      zb = zb + 1
                      Button:SetPosition(45,160 + (zb - 1)*25);
                      Button:Enable(false);
                      UIAPI:SetChecked(false,Button);
                   elseif (SubID - 10) == 11 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ58);
                      Button:Visible(true);
                      zb = zb + 1
                      Button:SetPosition(45,160 + (zb - 1)*25);
                      Button:Enable(false);
                      UIAPI:SetChecked(false,Button);
                   elseif (SubID - 10) == 12 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ59);
                      Button:Visible(true);
                      zb = zb + 1
                      Button:SetPosition(45,160 + (zb - 1)*25);
                      Button:Enable(false);
                      UIAPI:SetChecked(false,Button);
                   elseif (SubID - 10) == 17 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ60);
                      Button:Visible(true);
                      zb = zb + 1
                      Button:SetPosition(45,160 + (zb - 1)*25);
                      Button:Enable(false);
                      UIAPI:SetChecked(false,Button);
                   elseif (SubID - 10) == 18 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ61);
                      Button:Visible(true);
                      zb = zb + 1
                      Button:SetPosition(45,160 + (zb - 1)*25);
                      Button:Enable(false);
                      UIAPI:SetChecked(false,Button);
                   elseif SubID == 100 then
                      FirstWin_Text1:SetText(NF_L0_FJ38);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      FirstWin_ButtonA1:SetPosition(220,500);
	              FirstWin_ButtonA2:SetPosition(220,500);
		      FirstWin_ButtonA1:Visible(true);
		      FirstWin_ButtonA2:Visible(false);
                      NPCFUN:EndMessage(true);
                   elseif SubID == 200 then
                      FirstWin_Text1:SetText(NF_L0_FJ39);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      FirstWin_ButtonA1:SetPosition(220,500);
	              FirstWin_ButtonA2:SetPosition(220,500);
		      FirstWin_ButtonA1:Visible(true);
		      FirstWin_ButtonA2:Visible(false);
                      NPCFUN:EndMessage(true);
                   elseif SubID == 300 then
                      FirstWin_Text1:SetText(NF_L0_FJ40);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      FirstWin_ButtonA1:SetPosition(220,500);
	              FirstWin_ButtonA2:SetPosition(220,500);
		      FirstWin_ButtonA1:Visible(true);
		      FirstWin_ButtonA2:Visible(false);
                      NPCFUN:EndMessage(true);
                   elseif SubID == 400 then
                      FirstWin_Text1:SetText(NF_L0_FJ41);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      FirstWin_ButtonA1:SetPosition(220,500);
	              FirstWin_ButtonA2:SetPosition(220,500);
		      FirstWin_ButtonA1:Visible(true);
		      FirstWin_ButtonA2:Visible(false);
                      NPCFUN:EndMessage(true);
                   elseif SubID == 600 then
                      FirstWin_Text1:SetText(NF_L0_FJ63);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      FirstWin_ButtonA1:SetPosition(220,500);
	              FirstWin_ButtonA2:SetPosition(220,500);
		      FirstWin_ButtonA1:Visible(true);
		      FirstWin_ButtonA2:Visible(false);
                      NPCFUN:EndMessage(true);
                   end;
                end;
                if SubID == 1000 then
                   FirstWin_Text1:SetText(NF_L0_FJ1000);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                elseif SubID == 1001 then
                   FirstWin_Text1:SetText(NF_L0_FJ1001);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1002 then
                   FirstWin_Text1:SetText(NF_L0_FJ1002);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1003 then
                   FirstWin_Text1:SetText(NF_L0_FJ1003);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1004 then
                   FirstWin_Text1:SetText(NF_L0_FJ1004);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1005 then
                   FirstWin_Text1:SetText(NF_L0_FJ1005);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1006 then
                   FirstWin_Text1:SetText(NF_L0_FJ1006);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1007 then
                   FirstWin_Text1:SetText(NF_L0_FJ1007);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1008 then
                   FirstWin_Text1:SetText(NF_L0_FJ1008);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1009 then
                   FirstWin_Text1:SetText(NF_L0_FJ1009);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1010 then
                   FirstWin_Text1:SetText(NF_L0_FJ1010);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1011 then
                   FirstWin_Text1:SetText(NF_L0_FJ1011);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1012 then
                   FirstWin_Text1:SetText(NF_L0_FJ1012);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1013 then
                   FirstWin_Text1:SetText(NF_L0_FJ1013);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1014 then
                   FirstWin_Text1:SetText(NF_L0_FJ1014);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1015 then
                   FirstWin_Text1:SetText(NF_L0_FJ1015);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1016 then
                   FirstWin_Text1:SetText(NF_L0_FJ1016);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1017 then
                   FirstWin_Text1:SetText(NF_L0_FJ1017);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1018 then
                   FirstWin_Text1:SetText(NF_L0_FJ1018);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                elseif SubID == 1019 then
                   FirstWin_Text1:SetText(NF_L0_FJ1019);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1020 then
                   FirstWin_Text1:SetText(NF_L0_FJ1020);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1021 then
                   FirstWin_Text1:SetText(NF_L0_FJ1021);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1022 then
                   FirstWin_Text1:SetText(NF_L0_FJ1022);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1023 then
                   FirstWin_Text1:SetText(NF_L0_FJ1023);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1024 then
                   FirstWin_Text1:SetText(NF_L0_FJ1024);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1025 then
                   FirstWin_Text1:SetText(NF_L0_FJ1025);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1026 then
                   FirstWin_Text1:SetText(NF_L0_FJ1026);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1027 then
                   FirstWin_Text1:SetText(NF_L0_FJ1027);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1028 then
                   FirstWin_Text1:SetText(NF_L0_FJ1028);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1029 then
                   FirstWin_Text1:SetText(NF_L0_FJ1029);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1030 then
                   FirstWin_Text1:SetText(NF_L0_FJ1030);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID == 1031 then
                   FirstWin_Text1:SetText(NF_L0_FJ1031);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                end;
	elseif Type == NPC_FLAG_SYS_WAR then    --------战场活动----------------------------------------------------------------------
		if Index == 1 then
			if SubID== 89 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W89);
				Button:Visible(true);
			elseif SubID== 90 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W90);
				Button:Visible(true);
			elseif SubID== 91 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W91);
				Button:Visible(true)
			elseif SubID== 92 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W92);
				Button:Visible(true)
			elseif SubID== 93 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W93);
				Button:Visible(true)
			elseif SubID== 150 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W150);
				Button:Visible(true)
			elseif SubID== 160 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W160);
				Button:Visible(true)
			elseif SubID== 173 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W173);
				Button:Visible(true)
			elseif SubID== 136 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W136);
				Button:Visible(true)
			elseif SubID== 137 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W137);
				Button:Visible(true)
			elseif SubID== 138 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W138);
				Button:Visible(true)
			elseif SubID== 139 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W139);
				Button:Visible(true)
			end;
		elseif Index == 2 then --服务器消息提示
			if SubID == 3900 then
				FirstWin_Text1:SetText(NF_L0_Y3900);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1700 then
				FirstWin_Text1:SetText(NF_L0_W1700);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1701 then
				FirstWin_Text1:SetText(NF_L0_W1701);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1702 then
				FirstWin_Text1:SetText(NF_L0_W1702);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 94 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W94);
				Button:Visible(true)
			elseif SubID == 95 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W95);
				Button:Visible(true)
			elseif SubID == 96 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W96);
				Button:Visible(true)
			elseif SubID == 97 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W97);
				Button:Visible(true)
			elseif SubID == 98 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W98);
				Button:Visible(true)
			elseif SubID == 99 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W99);
				Button:Visible(true)
			elseif SubID == 100 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W100);
				Button:Visible(true)
			elseif SubID == 101 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W101);
				Button:Visible(true)
			elseif SubID == 102 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W102);
				Button:Visible(true)
			elseif SubID == 103 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W103);
				Button:Visible(true)
			elseif SubID == 104 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W104);
				Button:Visible(true)
			elseif SubID == 105 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W105);
				Button:Visible(true)
			elseif SubID == 1950 then
				FirstWin_Text1:SetText(NF_L0_W1950);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1951 then
				FirstWin_Text1:SetText(NF_L0_W1951);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1952 then
				FirstWin_Text1:SetText(NF_L0_W1952);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1953 then
				FirstWin_Text1:SetText(NF_L0_W1953);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1954 then
				FirstWin_Text1:SetText(NF_L0_W1954);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1755 then
				FirstWin_Text1:SetText(NF_L0_W1755);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1756 then
				FirstWin_Text1:SetText(NF_L0_W1756);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1757 then
				FirstWin_Text1:SetText(NF_L0_W1757);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1758 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W1758);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID == 1759 then
				FirstWin_Text1:SetText(NF_L0_W1759);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1760 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W1760);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID == 1199 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W1199);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID == 1761 then
				FirstWin_Text1:SetText(NF_L0_W1761);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1762 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W1762);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID == 1763 then
				FirstWin_Text1:SetText(NF_L0_W1763);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1790 then
				FirstWin_Text1:SetText(NF_L0_W1790);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1770 then
				FirstWin_Text1:SetText(NF_L0_W1770);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1771 then
				FirstWin_Text1:SetText(NF_L0_W1771);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1772 then
				FirstWin_Text1:SetText(NF_L0_W1772);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1900 then
				FirstWin_Text1:SetText(NF_L0_W1900);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1901 then
				FirstWin_Text1:SetText(NF_L0_W1901);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1960 then
				FirstWin_Text1:SetText(NF_L0_W1960);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1961 then
				FirstWin_Text1:SetText(NF_L0_W1961);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1962 then
				FirstWin_Text1:SetText(NF_L0_W1962);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1963 then
				FirstWin_Text1:SetText(NF_L0_W1963);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1964 then
				FirstWin_Text1:SetText(NF_L0_W1964);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1965 then
				FirstWin_Text1:SetText(NF_L0_W1965);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID%200 == 21 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(((SubID-21)/200)..NF_L0_W1801);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID%200 == 22 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(((SubID-22)/200)..NF_L0_W1802);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID%200 == 23 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(((SubID-23)/200)..NF_L0_W1803);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID%200 == 24 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(((SubID-24)/200)..NF_L0_W1801);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID%200 == 25 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(((SubID-25)/200)..NF_L0_W1802);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID%200 == 29 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(((SubID-29)/200)..NF_L0_W1801);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID%200 == 27 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(((SubID-27)/200)..NF_L0_W1802);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID%1000 ==11 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W1780..(SubID-11)/1000);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID%1000 ==12 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W1781..(SubID-12)/1000);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID%1000 ==13 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W1782..(SubID-13)/1000);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID%1000 ==14 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W1783..(SubID-14)/1000);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID%1000 ==15 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W1784..(SubID-15)/1000);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID%1000 ==16 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W1785..(SubID-16)/1000);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID%1000 ==17 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W1786..(SubID-17)/1000);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID%1000 ==18 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W1787..(SubID-18)/1000);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID%1000 ==19 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W1788..(SubID-19)/1000);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID%1000 ==20 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_W1789..(SubID-20)/1000);
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID%1000 ==6 then
				FirstWin_Text1:SetText(NF_L0_W1775..(SubID-6)/1000);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID%1000 ==7 then
				FirstWin_Text1:SetText(NF_L0_W1776..(SubID-7)/1000);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID%1000 ==8 then
				FirstWin_Text1:SetText(NF_L0_W1777..(SubID-8)/1000);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			end;
		elseif Index == 3 then --服务器消息提示
			if SubID == 1911 then
				FirstWin_Text1:SetText(NF_L0_W1911);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 121 then
				FirstWin_Text1:SetText(NF_L0_W121);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 122 then
				FirstWin_Text1:SetText(NF_L0_W122);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1902 then
				FirstWin_Text1:SetText(NF_L0_W1902);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1903 then
				FirstWin_Text1:SetText(NF_L0_W1903);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1904 then
				FirstWin_Text1:SetText(NF_L0_W1904);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1905 then
				FirstWin_Text1:SetText(NF_L0_W1905);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1906 then
				FirstWin_Text1:SetText(NF_L0_W1906);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1907 then
				FirstWin_Text1:SetText(NF_L0_W1907);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1908 then
				FirstWin_Text1:SetText(NF_L0_W1908);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1909 then
				FirstWin_Text1:SetText(NF_L0_W1909);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1910 then
				FirstWin_Text1:SetText(NF_L0_W1910);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1930 then
				FirstWin_Text1:SetText(NF_L0_W1930);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1931 then
				FirstWin_Text1:SetText(NF_L0_W1931);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1932 then
				FirstWin_Text1:SetText(NF_L0_W1932);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			end;
		elseif Index == 4 then --服务器消息提示
			if SubID == 1911 then
				FirstWin_Text1:SetText(NF_L0_W1911);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1902 then
				FirstWin_Text1:SetText(NF_L0_W1902);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1903 then
				FirstWin_Text1:SetText(NF_L0_W1903);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1904 then
				FirstWin_Text1:SetText(NF_L0_W1904);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1905 then
				FirstWin_Text1:SetText(NF_L0_W1905);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1906 then
				FirstWin_Text1:SetText(NF_L0_W1906);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1907 then
				FirstWin_Text1:SetText(NF_L0_W1907);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1908 then
				FirstWin_Text1:SetText(NF_L0_W1908);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1909 then
				FirstWin_Text1:SetText(NF_L0_W1909);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1910 then
				FirstWin_Text1:SetText(NF_L0_W1910);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			end;
        	end;
	elseif Type == NPC_FLAG_SYS_OFFICAL_SALARY then  -------------------领取俸禄--------------------------------------------------------------
		if Index == 1 then
			if SubID== 1 then
				print(BtnID,SubID);
				FirstWin_Text1:SetText(NF_L0_55);
				FirstWin_Text1:Visible(true);
			
				FirstWin_CheckBox1:GetChild(0):SetTexturePos(36,0);
				FirstWin_CheckBox1:Visible(true);

				NPCFUN:SetItemData({Base=4000,BaseLv=1,AppendLv=1,Overlap=1,Binding=0,Append1=-1,Append2=-1,Append3=-1,Append4=-1,Append5=-1});
			elseif SubID== 2 then
				print(BtnID,SubID);
				FirstWin_Text1:SetText(NF_L0_56);
				FirstWin_Text1:Visible(true);
			
				FirstWin_CheckBox1:GetChild(0):SetTexturePos(36,0);
				FirstWin_CheckBox1:Visible(true);

				NPCFUN:SetItemData({Base=4000,BaseLv=1,AppendLv=1,Overlap=1,Binding=0,Append1=-1,Append2=-1,Append3=-1,Append4=-1,Append5=-1});
			elseif SubID== 3 then
				print(BtnID,SubID);
				FirstWin_Text1:SetText(NF_L0_57);
				FirstWin_Text1:Visible(true);
			
				FirstWin_CheckBox1:GetChild(0):SetTexturePos(36,0);
				FirstWin_CheckBox1:Visible(true);

				FirstWin_CheckBox2:GetChild(0):SetTexturePos(72,0);
				FirstWin_CheckBox2:Visible(true);

				NPCFUN:SetItemData({Base=4000,BaseLv=1,AppendLv=1,Overlap=1,Binding=0,Append1=-1,Append2=-1,Append3=-1,Append4=-1,Append5=-1});
				NPCFUN:SetItemData({Base=4000,BaseLv=1,AppendLv=1,Overlap=1,Binding=0,Append1=-1,Append2=-1,Append3=-1,Append4=-1,Append5=-1});
			elseif SubID== 4 then
				print(BtnID,SubID);
				FirstWin_Text1:SetText(NF_L0_58);
				FirstWin_Text1:Visible(true);
			
				FirstWin_CheckBox1:GetChild(0):SetTexturePos(36,0);
				FirstWin_CheckBox1:Visible(true);

				FirstWin_CheckBox2:GetChild(0):SetTexturePos(72,0);
				FirstWin_CheckBox2:Visible(true);

				FirstWin_CheckBox3:GetChild(0):SetTexturePos(108,0);
				FirstWin_CheckBox3:Visible(true);

				NPCFUN:SetItemData({Base=4000,BaseLv=1,AppendLv=1,Overlap=1,Binding=0,Append1=-1,Append2=-1,Append3=-1,Append4=-1,Append5=-1});
				NPCFUN:SetItemData({Base=4000,BaseLv=1,AppendLv=1,Overlap=1,Binding=0,Append1=-1,Append2=-1,Append3=-1,Append4=-1,Append5=-1});
				NPCFUN:SetItemData({Base=4000,BaseLv=1,AppendLv=1,Overlap=1,Binding=0,Append1=-1,Append2=-1,Append3=-1,Append4=-1,Append5=-1});
			elseif SubID== 5 then
				print(BtnID,SubID);
				FirstWin_Text1:SetText(NF_L0_59);
				FirstWin_Text1:Visible(true);
			
				FirstWin_CheckBox1:GetChild(0):SetTexturePos(36,0);
				FirstWin_CheckBox1:Visible(true);

				FirstWin_CheckBox2:GetChild(0):SetTexturePos(72,0);
				FirstWin_CheckBox2:Visible(true);

				FirstWin_CheckBox3:GetChild(0):SetTexturePos(108,0);
				FirstWin_CheckBox3:Visible(true);

				FirstWin_CheckBox4:GetChild(0):SetTexturePos(144,0);
				FirstWin_CheckBox4:Visible(true);

				NPCFUN:SetItemData({Base=4000,BaseLv=1,AppendLv=1,Overlap=1,Binding=0,Append1=-1,Append2=-1,Append3=-1,Append4=-1,Append5=-1});
				NPCFUN:SetItemData({Base=4000,BaseLv=1,AppendLv=1,Overlap=1,Binding=0,Append1=-1,Append2=-1,Append3=-1,Append4=-1,Append5=-1});
				NPCFUN:SetItemData({Base=4000,BaseLv=1,AppendLv=1,Overlap=1,Binding=0,Append1=-1,Append2=-1,Append3=-1,Append4=-1,Append5=-1});
				NPCFUN:SetItemData({Base=4000,BaseLv=1,AppendLv=1,Overlap=1,Binding=0,Append1=-1,Append2=-1,Append3=-1,Append4=-1,Append5=-1});
			end;
		elseif Index == 2 then --服务器消息提示
			if SubID == 1000 then
				FirstWin_Text1:SetText(NF_L0_60);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1001 then
				FirstWin_Text1:SetText(NF_L0_60);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			end;
        	end;
	elseif Type == NPC_FLAG_SYS_ALTAR then    --------------祭坛-----------------------------------------------------------------------------
		if Index == 1 then
                   if SubID <= 1000 then
                      FirstWin_Text1:SetText(NF_L0_GH1);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_GH102.."|cffFFFFFF");
                      FirstWin_Text2:Visible(true);
                      FirstWin_Text2:SetPosition(45,120);
                   end;
                   if SubID == 1 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH2);
                      Button:Visible(true);
                      Button:SetPosition(40,175);
                   elseif SubID == 2 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH3);
                      Button:Visible(true);
                      Button:SetPosition(40,200);
                   elseif SubID == 3 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH4);
                      Button:Visible(true);
                      Button:SetPosition(40,225);
                   elseif SubID == 4 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH5);
                      Button:Visible(true);
                      Button:SetPosition(40,250);
                   elseif SubID == 5 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH6);
                      Button:Visible(true);
                      Button:SetPosition(40,275);
                   end;
                end;
                if Index == 2 then
                   if SubID <= 1000 then
                      FirstWin_Text1:SetText(NF_L0_GH7);
                      FirstWin_Text1:Visible(true);
                   end;
                   if SubID == 1 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH8);
                      Button:Visible(true);
                   elseif SubID == 2 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH9);
                      Button:Visible(true);
                   elseif SubID == 3 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH10);
                      Button:Visible(true);
                   elseif SubID == 4 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH11);
                      Button:Visible(true);
                   elseif SubID == 5 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH12);
                      Button:Visible(true);
                   elseif SubID == 6 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH13);
                      Button:Visible(true);
                   elseif SubID == 10 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH14);
                      Button:Visible(true);
                   elseif SubID == 11 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH15);
                      Button:Visible(true);
                   elseif SubID == 12 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH16);
                      Button:Visible(true);
                   elseif SubID == 13 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH17);
                      Button:Visible(true);
                   elseif SubID == 14 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH18);
                      Button:Visible(true);
                   elseif SubID == 15 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH19);
                      Button:Visible(true);
                   elseif SubID == 16 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH20);
                      Button:Visible(true);
                   elseif SubID == 17 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH21);
                      Button:Visible(true);
                   elseif SubID == 18 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH22);
                      Button:Visible(true);
                   elseif SubID == 19 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH23);
                      Button:Visible(true);
                   elseif SubID == 20 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH24);
                      Button:Visible(true);
                   elseif SubID == 21 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH25);
                      Button:Visible(true);
                   elseif SubID == 22 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH26);
                      Button:Visible(true);
                   elseif SubID == 23 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH27);
                      Button:Visible(true);
                   elseif SubID == 24 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH28);
                      Button:Visible(true);
                   elseif SubID == 25 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH29);
                      Button:Visible(true);
                   elseif SubID == 26 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH30);
                      Button:Visible(true);
                   elseif SubID == 27 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH31);
                      Button:Visible(true);
                   elseif SubID == 28 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH32);
                      Button:Visible(true);
                   elseif SubID == 29 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH33);
                      Button:Visible(true);
                   elseif SubID == 30 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH34);
                      Button:Visible(true);
                   end;
                end;
                if Index == 3 then
                   if SubID == 100 then
                      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_GH35.."|cffFFFFFF");
                      FirstWin_Text2:Visible(true);
                   elseif SubID == 101 then
                      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_GH36.."|cffFFFFFF");
                      FirstWin_Text2:Visible(true);
                   elseif SubID >= 400 and SubID <= 420 then
                      a = SubID - 400
                      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_GH75..a.."|cffFFFFFF");
                      FirstWin_Text2:Visible(true);
                   elseif SubID == 102 then
                      FirstWin_Text3:SetText("|cffFF0000"..NF_L0_GH76.."|cffFFFFFF");
                      FirstWin_Text3:Visible(true);
                   elseif SubID == 103 then
                      FirstWin_Text3:SetText("|cffFF0000"..NF_L0_GH77.."|cffFFFFFF");
                      FirstWin_Text3:Visible(true);
                   elseif SubID == 104 then
                      FirstWin_Text3:SetText("|cffFF0000"..NF_L0_GH78.."|cffFFFFFF");
                      FirstWin_Text3:Visible(true);
                   elseif SubID == 105 then
                      FirstWin_Text3:SetText("|cffFF0000"..NF_L0_GH79.."|cffFFFFFF");
                      FirstWin_Text3:Visible(true);
                   elseif SubID == 106 then
                      FirstWin_Text3:SetText("|cffFF0000"..NF_L0_GH80.."|cffFFFFFF");
                      FirstWin_Text3:Visible(true);
                   elseif SubID == 107 then
                      FirstWin_Text3:SetText("|cffFF0000"..NF_L0_GH81.."|cffFFFFFF");
                      FirstWin_Text3:Visible(true);
                   elseif SubID == 108 then
                      FirstWin_Text3:SetText("|cffFF0000"..NF_L0_GH82.."|cffFFFFFF");
                      FirstWin_Text3:Visible(true);
                   elseif SubID == 109 then
                      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_GH83.."|cffFFFFFF");
                      FirstWin_Text2:Visible(true);
                   elseif SubID == 110 then
                      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_GH103.."|cffFFFFFF");
                      FirstWin_Text2:Visible(true);
                   elseif SubID == 201 then
                      FirstWin_Text1:SetText(NF_L0_GH37);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 202 then
                      FirstWin_Text1:SetText(NF_L0_GH38);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 203 then
                      FirstWin_Text1:SetText(NF_L0_GH39);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 204 then
                      FirstWin_Text1:SetText(NF_L0_GH40);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 205 then
                      FirstWin_Text1:SetText(NF_L0_GH41);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 206 then
                      FirstWin_Text1:SetText(NF_L0_GH42);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 210 then
                      FirstWin_Text1:SetText(NF_L0_GH43);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 211 then
                      FirstWin_Text1:SetText(NF_L0_GH44);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 212 then
                      FirstWin_Text1:SetText(NF_L0_GH45);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 213 then
                      FirstWin_Text1:SetText(NF_L0_GH46);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 214 then
                      FirstWin_Text1:SetText(NF_L0_GH47);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 215 then
                      FirstWin_Text1:SetText(NF_L0_GH48);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 216 then
                      FirstWin_Text1:SetText(NF_L0_GH49);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 217 then
                      FirstWin_Text1:SetText(NF_L0_GH50);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 218 then
                      FirstWin_Text1:SetText(NF_L0_GH51);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 219 then
                      FirstWin_Text1:SetText(NF_L0_GH52);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 220 then
                      FirstWin_Text1:SetText(NF_L0_GH53);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 221 then
                      FirstWin_Text1:SetText(NF_L0_GH54);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 222 then
                      FirstWin_Text1:SetText(NF_L0_GH55);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 223 then
                      FirstWin_Text1:SetText(NF_L0_GH56);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 224 then
                      FirstWin_Text1:SetText(NF_L0_GH57);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 225 then
                      FirstWin_Text1:SetText(NF_L0_GH58);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 226 then
                      FirstWin_Text1:SetText(NF_L0_GH59);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 227 then
                      FirstWin_Text1:SetText(NF_L0_GH60);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 228 then
                      FirstWin_Text1:SetText(NF_L0_GH61);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 229 then
                      FirstWin_Text1:SetText(NF_L0_GH62);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 230 then
                      FirstWin_Text1:SetText(NF_L0_GH63);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 1 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH64);
                      Button:Visible(true);
                   elseif SubID == 2 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH65);
                      Button:Visible(true);
                   elseif SubID == 3 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH66);
                      Button:Visible(true);
                   elseif SubID == 4 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH84);
                      Button:Visible(true);
                   elseif SubID == 5 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH85);
                      Button:Visible(true);
                   elseif SubID == 6 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH83);
                      Button:Visible(true);                   
                   elseif SubID == 10 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH67);
                      Button:Visible(true);
                   end;
                end;
                if Index == 4 then
                   if SubID == 310 then
                      FirstWin_Text1:SetText(NF_L0_GH68);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text2:SetText("|cffFF0000"..NF_L0_GH86.."|cffFFFFFF");
                      FirstWin_Text2:Visible(true);
                      FirstWin_Text2:SetPosition(45,140);
                      FirstWin_Text3:SetText("|cff00FF00"..NF_L0_GH87.."|cffFFFFFF");
                      FirstWin_Text3:Visible(true);
                      FirstWin_Text3:SetPosition(45,180);
                   elseif SubID == 304 then
                      FirstWin_Text1:SetText(NF_L0_GH88);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 305 then
                      FirstWin_Text1:SetText(NF_L0_GH89);
                      FirstWin_Text1:Visible(true);
                   elseif SubID == 306 then
                      FirstWin_Text1:SetText(NF_L0_GH103);
                      FirstWin_Text1:Visible(true);
                   end;
                   if SubID == 1 then
                      InputText1:Visible(true);                  
		      Input11:Visible(true); --设置为可见
		      Input12:Visible(true); 
		      Input13:Visible(true); 
                   elseif SubID == 2 then
                      InputText1:Visible(true);
		      Input11:Visible(true); --设置为可见
		      Input12:Visible(true); 
		      Input13:Visible(true); 

                   elseif SubID == 3 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH71);
                      Button:Visible(true);
                      Button:SetPosition(40,350);
                   elseif SubID == 4 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH72);
                      Button:Visible(true);
                      Button:SetPosition(40,375);
                   elseif SubID == 5 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH73);
                      Button:Visible(true);
                      Button:SetPosition(40,400);
                   elseif SubID == 6 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH74);
                      Button:Visible(true);
                      Button:SetPosition(40,425);
                   elseif SubID == 7 then
                      InputText1:Visible(true);
		      Input11:Visible(true); --设置为可见
		      Input12:Visible(true); 
		      Input13:Visible(true);
                   elseif SubID == 8 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH91);
                      Button:Visible(true);
                   elseif SubID == 9 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH92);
                      Button:Visible(true);
                   elseif SubID == 10 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH93);
                      Button:Visible(true);
                   elseif SubID == 11 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH94);
                      Button:Visible(true);
                   elseif SubID == 12 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH95);
                      Button:Visible(true);
                   elseif SubID == 13 then
                      InputText1:Visible(true);
		      Input11:Visible(true); --设置为可见
		      Input12:Visible(true); 
		      Input13:Visible(true);	
                   elseif SubID == 14 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH97);
                      Button:Visible(true);
                   elseif SubID == 15 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH98);
                      Button:Visible(true);
                   elseif SubID == 16 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH99);
                      Button:Visible(true);
                   elseif SubID == 17 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH100);
                      Button:Visible(true);
                   elseif SubID == 18 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH101);
                      Button:Visible(true);
                   elseif SubID == 19 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH104);
                      Button:Visible(true);
                   elseif SubID == 20 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH105);
                      Button:Visible(true);
                   elseif SubID == 21 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH106);
                      Button:Visible(true);
                   elseif SubID == 22 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH107);
                      Button:Visible(true);
                   elseif SubID == 23 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH108);
                      Button:Visible(true);
                   elseif SubID == 24 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_GH109);
                      Button:Visible(true);
                   end;
                end;
                if SubID == 1000 then
                   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1000.."|cffFFFFFF");
                   FirstWin_Text1:Visible(true);
                   NPCFUN:EndMessage(true);
                   NPCFUN:NeedMessage(false);
                   FirstWin_ButtonA1:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                elseif SubID == 1001 then
                   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1001.."|cffFFFFFF");
                   FirstWin_Text1:Visible(true);
                   NPCFUN:EndMessage(true);
                   NPCFUN:NeedMessage(false);
                   FirstWin_ButtonA1:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                elseif SubID == 1002 then
                   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1002.."|cffFFFFFF");
                   FirstWin_Text1:Visible(true);
                   NPCFUN:EndMessage(true);
                   NPCFUN:NeedMessage(false);
                   FirstWin_ButtonA1:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                elseif SubID == 1003 then
                   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1003.."|cffFFFFFF");
                   FirstWin_Text1:Visible(true);
                   NPCFUN:EndMessage(true);
                   NPCFUN:NeedMessage(false);
                   FirstWin_ButtonA1:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                elseif SubID == 1004 then
                   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1004.."|cffFFFFFF");
                   FirstWin_Text1:Visible(true);
                   NPCFUN:EndMessage(true);
                   NPCFUN:NeedMessage(false);
                   FirstWin_ButtonA1:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                elseif SubID == 1005 then
                   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1005.."|cffFFFFFF");
                   FirstWin_Text1:Visible(true);
                   NPCFUN:EndMessage(true);
                   NPCFUN:NeedMessage(false);
                   FirstWin_ButtonA1:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                elseif SubID == 1006 then
                   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1006.."|cffFFFFFF");
                   FirstWin_Text1:Visible(true);
                   NPCFUN:EndMessage(true);
                   NPCFUN:NeedMessage(false);
                   FirstWin_ButtonA1:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                elseif SubID == 1007 then
                   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1007.."|cffFFFFFF");
                   FirstWin_Text1:Visible(true);
                   NPCFUN:EndMessage(true);
                   NPCFUN:NeedMessage(false);
                   FirstWin_ButtonA1:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                elseif SubID == 1008 then
                   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1008.."|cffFFFFFF");
                   FirstWin_Text1:Visible(true);
                   NPCFUN:EndMessage(true);
                   NPCFUN:NeedMessage(false);
                   FirstWin_ButtonA1:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                elseif SubID == 1009 then
                   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1009.."|cffFFFFFF");
                   FirstWin_Text1:Visible(true);
                   NPCFUN:EndMessage(true);
                   NPCFUN:NeedMessage(false);
                   FirstWin_ButtonA1:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                elseif SubID == 1010 then
                   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1010.."|cffFFFFFF");
                   FirstWin_Text1:Visible(true);
                   NPCFUN:EndMessage(true);
                   NPCFUN:NeedMessage(false);
                   FirstWin_ButtonA1:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                elseif SubID == 1011 then
                   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1011.."|cffFFFFFF");
                   FirstWin_Text1:Visible(true);
                   NPCFUN:EndMessage(true);
                   NPCFUN:NeedMessage(false);
                   FirstWin_ButtonA1:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                elseif SubID == 1012 then
                   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1012.."|cffFFFFFF");
                   FirstWin_Text1:Visible(true);
                   NPCFUN:EndMessage(true);
                   NPCFUN:NeedMessage(false);
                   FirstWin_ButtonA1:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                elseif SubID == 1013 then
                   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1013.."|cffFFFFFF");
                   FirstWin_Text1:Visible(true);
                   NPCFUN:EndMessage(true);
                   NPCFUN:NeedMessage(false);
                   FirstWin_ButtonA1:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                elseif SubID == 1014 then
                   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1014.."|cffFFFFFF");
                   FirstWin_Text1:Visible(true);
                   NPCFUN:EndMessage(true);
                   NPCFUN:NeedMessage(false);
                   FirstWin_ButtonA1:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                elseif SubID == 1015 then
                   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1015.."|cffFFFFFF");
                   FirstWin_Text1:Visible(true);
                   NPCFUN:EndMessage(true);
                   NPCFUN:NeedMessage(false);
                   FirstWin_ButtonA1:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                elseif SubID == 1016 then
                   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1016.."|cffFFFFFF");
                   FirstWin_Text1:Visible(true);
                   NPCFUN:EndMessage(true);
                   NPCFUN:NeedMessage(false);
                   FirstWin_ButtonA1:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                elseif SubID == 1017 then
                   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1017.."|cffFFFFFF");
                   FirstWin_Text1:Visible(true);
                   NPCFUN:EndMessage(true);
                   NPCFUN:NeedMessage(false);
                   FirstWin_ButtonA1:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                end;
	elseif Type == NPC_FLAG_SYS_AWARD then    --------------供奉奖励-----------------------------------------------------------------------------
		if Index == 1 then
                   if SubID % 100 == 1 then
                      if ((SubID - 1) / 100) % 100 == 3 then
                         FirstWin_Text1:SetText(NF_L0_CJ1.."|cffFF0000"..((((SubID - 1) / 100) - 3)/100).."|cffFFFFFF"..NF_L0_CJ29);
                         FirstWin_Text1:Visible(true);
                      elseif ((SubID - 1) / 100) % 100 == 1 then
                         local Button = win:GetChild("FirstWin_Button" .. BtnID);
                         Button:SetText(NF_L0_CJ2);
                         Button:Visible(true);
                      elseif ((SubID - 1) / 100) % 100 == 2 then
                         local Button = win:GetChild("FirstWin_Button" .. BtnID);
                         Button:SetText(NF_L0_CJ3);
                         Button:Visible(true);
                      end;
                   end;
                elseif Index == 2 then
                   if SubID % 100 == 1 then
                      if (SubID - 1) / 100 == 10 then
                         local Button = win:GetChild("FirstWin_Button" .. BtnID);
                         Button:SetText(NF_L0_CJ4);
                         Button:Visible(true);
                      elseif (SubID - 1) / 100 == 11 then
                         local Button = win:GetChild("FirstWin_Button" .. BtnID);
                         Button:SetText(NF_L0_CJ5);
                         Button:Visible(true);
                      elseif (SubID - 1) / 100 == 12 then
                         local Button = win:GetChild("FirstWin_Button" .. BtnID);
                         Button:SetText(NF_L0_CJ6);
                         Button:Visible(true);
                      elseif (SubID - 1) / 100 == 13 then
                         local Button = win:GetChild("FirstWin_Button" .. BtnID);
                         Button:SetText(NF_L0_CJ7);
                         Button:Visible(true);
                      elseif (SubID - 1) / 100 == 14 then
                         local Button = win:GetChild("FirstWin_Button" .. BtnID);
                         Button:SetText(NF_L0_CJ8);
                         Button:Visible(true);
                      elseif (SubID - 1) / 100 == 15 then
                         local Button = win:GetChild("FirstWin_Button" .. BtnID);
                         Button:SetText(NF_L0_CJ9);
                         Button:Visible(true);
                      elseif (SubID - 1) / 100 == 16 then
                         local Button = win:GetChild("FirstWin_Button" .. BtnID);
                         Button:SetText(NF_L0_CJ10);
                         Button:Visible(true);
                      elseif (SubID - 1) / 100 == 17 then
                         local Button = win:GetChild("FirstWin_Button" .. BtnID);
                         Button:SetText(NF_L0_CJ11);
                         Button:Visible(true);
                      elseif (SubID - 1) / 100 == 18 then
                         local Button = win:GetChild("FirstWin_Button" .. BtnID);
                         Button:SetText(NF_L0_CJ12);
                         Button:Visible(true);
                      elseif (SubID - 1) / 100 == 19 then
                         local Button = win:GetChild("FirstWin_Button" .. BtnID);
                         Button:SetText(NF_L0_CJ13);
                         Button:Visible(true);
                      end;
                   elseif SubID % 100 == 10 then
                      FirstWin_Text1:SetText(NF_L0_CJ14.."|cffFF0000"..((SubID -10) / 100).."|cffFFFFFF"..NF_L0_CJ15);
                      FirstWin_Text1:Visible(true);
                   elseif SubID % 100 == 11 then
                      FirstWin_Text1:SetText(NF_L0_CJ16.."|cffFF0000"..((SubID -11) / 100).."|cffFFFFFF"..NF_L0_CJ17);
                      FirstWin_Text1:Visible(true);
                   end;
                elseif Index == 3 then
                   if SubID % 100 == 2 then
                   FirstWin_ButtonA1:SetPosition(220,500);
                   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                      if ((SubID - 2) / 100) % 100 == 10 then
                         FirstWin_Text1:SetText(NF_L0_CJ18.."|cffFF0000"..((((SubID - 2) / 100) - 10) / 100).."|cffFFFFFF"..NF_L0_CJ28);
                         FirstWin_Text1:Visible(true);
                      elseif ((SubID - 2) / 100) % 100 == 11 then
                         FirstWin_Text1:SetText(NF_L0_CJ19.."|cffFF0000"..((((SubID - 2) / 100) - 11) / 100).."|cffFFFFFF"..NF_L0_CJ28);
                         FirstWin_Text1:Visible(true);
                      elseif ((SubID - 2) / 100) % 100 == 12 then
                         FirstWin_Text1:SetText(NF_L0_CJ20.."|cffFF0000"..((((SubID - 2) / 100) - 12) / 100).."|cffFFFFFF"..NF_L0_CJ28);
                         FirstWin_Text1:Visible(true);
                      elseif ((SubID - 2) / 100) % 100 == 13 then
                         FirstWin_Text1:SetText(NF_L0_CJ21.."|cffFF0000"..((((SubID - 2) / 100) - 13) / 100).."|cffFFFFFF"..NF_L0_CJ28);
                         FirstWin_Text1:Visible(true);
                      elseif ((SubID - 2) / 100) % 100 == 14 then
                         FirstWin_Text1:SetText(NF_L0_CJ22.."|cffFF0000"..((((SubID - 2) / 100) - 14) / 100).."|cffFFFFFF"..NF_L0_CJ28);
                         FirstWin_Text1:Visible(true);
                      elseif ((SubID - 2) / 100) % 100 == 15 then
                         FirstWin_Text1:SetText(NF_L0_CJ23.."|cffFF0000"..((((SubID - 2) / 100) - 15) / 100).."|cffFFFFFF"..NF_L0_CJ28);
                         FirstWin_Text1:Visible(true);
                      elseif ((SubID - 2) / 100) % 100 == 16 then
                         FirstWin_Text1:SetText(NF_L0_CJ24.."|cffFF0000"..((((SubID - 2) / 100) - 16) / 100).."|cffFFFFFF"..NF_L0_CJ28);
                         FirstWin_Text1:Visible(true);
                      elseif ((SubID - 2) / 100) % 100 == 17 then
                         FirstWin_Text1:SetText(NF_L0_CJ25.."|cffFF0000"..((((SubID - 2) / 100) - 17) / 100).."|cffFFFFFF"..NF_L0_CJ28);
                         FirstWin_Text1:Visible(true);
                      elseif ((SubID - 2) / 100) % 100 == 18 then
                         FirstWin_Text1:SetText(NF_L0_CJ26.."|cffFF0000"..((((SubID - 2) / 100) - 18) / 100).."|cffFFFFFF"..NF_L0_CJ28);
                         FirstWin_Text1:Visible(true);
                      elseif ((SubID - 2) / 100) % 100 == 19 then
                         FirstWin_Text1:SetText(NF_L0_CJ27.."|cffFF0000"..((((SubID - 2) / 100) - 19) / 100).."|cffFFFFFF"..NF_L0_CJ28);
                         FirstWin_Text1:Visible(true);
                      end;
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(false);
                   end;
                end;
                if SubID % 100 == 0 then
                   FirstWin_ButtonA1:SetPosition(220,500);
                   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(false);
                   if SubID / 100 == 100 then
                      FirstWin_Text1:SetText(NF_L0_CJ100);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(false);                   
                   elseif SubID / 100 == 101 then
                      FirstWin_Text1:SetText(NF_L0_CJ101);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(false);
                   elseif SubID / 100 == 102 then
                      FirstWin_Text1:SetText(NF_L0_CJ102);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(false);
                   elseif SubID / 100 == 103 then
                      FirstWin_Text1:SetText(NF_L0_CJ103);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(false);
                   elseif SubID / 100 == 104 then
                      FirstWin_Text1:SetText(NF_L0_CJ104);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(false);
                   elseif SubID / 100 == 105 then
                      FirstWin_Text1:SetText(NF_L0_CJ105);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(false);
                   end;
                end;
	elseif Type == NPC_FLAG_SYS_SKILLBOOK then    --------------抽取技能书-----------------------------------------------------------------------------
                if Index == 1 then
                   FirstWin_Text1:SetText(NF_L0_JN1);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                elseif Index == 2 then
                   FirstWin_Text1:SetText(NF_L0_JN2);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                end;
		if SubID % 100 == 0 then
                   if SubID / 100 == 1 then
                      FirstWin_Text1:SetText(NF_L0_JN100);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                   elseif SubID / 100 == 2 then
                      FirstWin_Text1:SetText(NF_L0_JN200);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                   elseif SubID / 100 == 3 then
                      FirstWin_Text1:SetText(NF_L0_JN300);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                   elseif SubID / 100 == 4 then
                      FirstWin_Text1:SetText(NF_L0_JN400);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                   elseif SubID / 100 == 5 then
                      FirstWin_Text1:SetText(NF_L0_JN500);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                   end;
                   FirstWin_ButtonA1:SetPosition(220,500);
                   FirstWin_ButtonA1:Visible(true);
                   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID % 100 == 1 then
                   if ( SubID - 1 ) / 100 == 1 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_JN101);
                      Button:Visible(true);
                      Button:SetPosition(45,200);
                   elseif ( SubID - 1 ) / 100 == 2 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_JN201);
                      Button:Visible(true);
                      Button:SetPosition(45,225);
                   elseif ( SubID - 1 ) / 100 == 3 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_JN301);
                      Button:Visible(true);
                      Button:SetPosition(45,175);
                   elseif ( SubID - 1 ) / 100 == 4 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_JN401);
                      Button:Visible(true);
                      Button:SetPosition(45,200);
                   elseif ( SubID - 1 ) / 100 == 5 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_JN501);
                      Button:Visible(true);
                      Button:SetPosition(45,225);
                   elseif ( SubID - 1 ) / 100 == 6 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_JN601);
                      Button:Visible(true);
                      Button:SetPosition(45,250);
                   end;
                elseif SubID % 100 == 2 then
                   FirstWin_Text1:SetText(NF_L0_JN3..( ( ( ( SubID - 2 ) / 100 ) - ( ( SubID - 2 ) / 100 ) % 60 ) / 60 )..NF_L0_JN4..( ( ( SubID - 2 ) / 100 ) % 60 )..NF_L0_JN5);
                   FirstWin_Text1:Visible(true);
                   FirstWin_Text1:SetPosition(45,100);
                   FirstWin_ButtonA1:SetPosition(220,500);
                   FirstWin_ButtonA1:Visible(true);
                   FirstWin_ButtonA2:Visible(false);
                   NPCFUN:EndMessage(true);
                elseif SubID % 100 == 3 then
                   if ( SubID - 3 ) / 100 == 1 then
                      FirstWin_Text1:SetText(NF_L0_JN103);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                   elseif ( SubID - 3 ) / 100 == 2 then
                      FirstWin_Text1:SetText(NF_L0_JN203);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                   elseif ( SubID - 3 ) / 100 == 3 then
                      FirstWin_Text1:SetText(NF_L0_JN303);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                   end;
                   NPCFUN:EndMessage(true);
                elseif SubID % 100 == 4 then
                   FirstWin_ButtonA3:SetPosition(80,200);
                   FirstWin_ButtonA3:Visible(true);
                   FirstWin_ButtonA1:Visible(false);
                   FirstWin_ButtonA2:Visible(false);
                elseif SubID % 100 == 5 then
                   FirstWin_Text2:SetText(NF_L0_JN6.."|cffFF0000"..( ( SubID - 5 ) / 100 ).."|cffffffff"..NF_L0_JN7);
                   FirstWin_Text2:Visible(true);
                   FirstWin_Text2:SetPosition(45,140);
                end;
	elseif Type == NPC_FLAG_GUILDQUEST then	--------公会任务-----------------------------------------------------------------------

		if Index== 1 then    ----第几个页面------
			FirstWin_Text1:SetText(NF_L0_97);
			FirstWin_Text1:Visible(true);
			if SubID== 1 or SubID == 3 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
                        	Button:SetPosition(25,150);
				Button:SetText(NF_L0_98);
				Button:Visible(true);
			elseif SubID == 2 or SubID == 4 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
                        	Button:SetPosition(25,180);
				Button:SetText(NF_L0_99);
				Button:Visible(true);
			elseif SubID == 5 or SubID == 7 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
                        	Button:SetPosition(25,210);
				Button:SetText(NF_L0_1066);
				Button:Visible(true);
			end;
		elseif Index == 2 then	--服务器提示消息---------------------
			if SubID == 1000 then
				FirstWin_Text1:SetText(NF_L0_100);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1001 then
				FirstWin_Text1:SetText(NF_L0_101);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1002 then
				FirstWin_Text1:SetText(NF_L0_1067);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1003 then
				FirstWin_Text1:SetText(NF_L0_1068);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1004 then
				FirstWin_Text1:SetText(NF_L0_1069);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			end;
		end;
	elseif Type == NPC_FLAG_ACTIVITY then	--------物品兑换------------------------

		if Index== 1 then    ----第几个页面------
			FirstWin_Text1:SetText(NF_L0_97);
			FirstWin_Text1:Visible(true);
			if SubID== 1      then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
                        	Button:SetPosition(25,150);
				Button:SetText(NF_L0_98);
				Button:Visible(true);
			elseif SubID == 2 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
                        	Button:SetPosition(25,180);
				Button:SetText(NF_L0_99);
				Button:Visible(true);
			end;
		elseif Index == 2 then	--服务器提示消息---------------------
			if SubID == 1000 then
				FirstWin_Text1:SetText(NF_L0_100);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1001 then
				FirstWin_Text1:SetText(NF_L0_101);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			end;
		end;		
	elseif Type == NPC_FLAG_SYS_REPREWARD then	--------副本奖励----------------
		if Index== 1 then    ----第几个页面
			if SubID== 527 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_10086);
				Button:Visible(true);
			elseif SubID == 2 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_1861);
				Button:Visible(true);
			elseif SubID == 3 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_1862);
				Button:Visible(true);
			end;
		elseif Index == 2 then    ----第二个页面
			if SubID== 1234 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_1234);
				Button:Visible(true);
			elseif SubID == 5678 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_5678);
				Button:Visible(true);
			elseif SubID == 9101 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_2);
				Button:Visible(true);
			end;
		end;
	elseif Type == NPC_FLAG_SYS_REPLEAVE then	--------离开副本----------------
		if Index== 1 then    ----第几个页面
			if SubID== 600 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_600);
				Button:Visible(true);
			elseif SubID == 601 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_601);
				Button:Visible(true);
			elseif SubID == 602 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_602);
				Button:Visible(true);
			end;
		elseif Index == 2 then    ----第二个页面
			if SubID== 620 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_620);
				Button:Visible(true);
			elseif SubID == 621 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_621);
				Button:Visible(true);
			elseif SubID == 622 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_622);
				Button:Visible(true);
			end;
		end;
	elseif Type == NPC_FLAG_SYS_REPETITION then	--------副本----------------
		if Index== 1 then    ----第几个页面
			if SubID== 11 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_R11);
				Button:Visible(true);
			elseif SubID== 12 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_R11);
				Button:Visible(true);
			elseif SubID== 13 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_R13);
				Button:Visible(true);
			end;
		elseif Index == 2 then    ----第二个页面
			if SubID== 111 then
				FirstWin_Text1:SetText(NF_L0_R111);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID== 112 then
				FirstWin_Text1:SetText(NF_L0_R112);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID== 113 then
				FirstWin_Text1:SetText(NF_L0_R113);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID== 114 then
				FirstWin_Text1:SetText(NF_L0_R114);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID== 115 then
				FirstWin_Text1:SetText(NF_L0_R115);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID== 116 then
				FirstWin_Text1:SetText(NF_L0_R116);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID== 1111 then
				FirstWin_Text1:SetText(NF_L0_R1111);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID== 200 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_R200);
				Button:Visible(true);
				Button:SetPosition(45,245);
			elseif SubID== 201 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_R201);
				Button:Visible(true);
				Button:SetPosition(45,270);
			elseif SubID== 202 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_R202);
				Button:Visible(true);
				Button:SetPosition(45,295);
                        elseif SubID ==203 then
				FirstWin_Text1:SetText(NF_L0_R203);
				FirstWin_Text1:Visible(true);
			elseif SubID >= 10000 then
				FirstWin_Text1:SetText(NF_L0_R117 .. SubID%10000) ;
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			end;
		elseif Index == 3 then    ----第三个页面
			if SubID== 1000 then
				FirstWin_Text1:SetText(NF_L0_R1000);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID== 1001 then
				FirstWin_Text1:SetText(NF_L0_R1001);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID== 1002 then
				FirstWin_Text1:SetText(NF_L0_R1002);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID >= 10000 then
				FirstWin_Text1:SetText(NF_L0_R117 .. SubID%10000) ;
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			end;
		end;
	
	elseif Type == NPC_FLAG_LivingSkill then	--------生活技能-----------------------------------------------------------------------

		if Index== 1 then    ----第几个页面------
			FirstWin_Text1:SetText("请选择种类：");
			FirstWin_Text1:Visible(true);
			if SubID== 1 or SubID == 3 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
                        	Button:SetPosition(25,150);
				Button:SetText("GatheringSkill");
				Button:Visible(true);
			elseif SubID == 2 or SubID == 4 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
                        	Button:SetPosition(25,180);
				Button:SetText("ManufactureSkill");
				Button:Visible(true);
			end;
		elseif Index == 2 then	--服务器提示消息---------------------
			if SubID == 1000 then
				FirstWin_Text1:SetText("succed");
				FirstWin_Text1:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 1001 then
				FirstWin_Text1:SetText("Cannt learn more");
				FirstWin_Text1:Visible(false);
				NPCFUN:EndMessage(true);
			end;
		end;
	elseif Type == NPC_FLAG_SYS_DESIDENTIFY then	--------称谓鉴定-----------------------------------------------------------------------

		if Index== 1 then    ----第1个页面------
			if SubID == 1 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES1);
				Button:Visible(true);
			elseif SubID == 2 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES2);
				Button:Visible(true);
			end;
		elseif Index == 2 then	--第2个页面---------------------
			if SubID == 1 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES3);
				Button:Visible(true);
			elseif SubID == 2 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES4);
				Button:Visible(true);
			elseif SubID == 3 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES5);
				Button:Visible(true);
			elseif SubID == 4 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES6);
				Button:Visible(true);
			elseif SubID == 5 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES7);
				Button:Visible(true);
			elseif SubID == 6 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES8);
				Button:Visible(true);
			elseif SubID == 7 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES9);
				Button:Visible(true);
			elseif SubID == 8 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES10);
				Button:Visible(true);
			end;

			if SubID == 500 then
				FirstWin_Text1:SetText(NF_L0_DES11);
				FirstWin_Text1:Visible(true);
				FirstWin_ButtonA1:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 600 then
				FirstWin_Text3:SetText(NF_L0_DES12);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 501 then
				FirstWin_Text3:SetText(NF_L0_DES13);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 502 then
				FirstWin_Text3:SetText(NF_L0_DES14);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 503 then
				FirstWin_Text3:SetText(NF_L0_DES15);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 504 then
				FirstWin_Text3:SetText(NF_L0_DES16);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 510 then
				FirstWin_Text3:SetText(NF_L0_DES17);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 511 then
				FirstWin_Text3:SetText(NF_L0_DES18);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 512 then
				FirstWin_Text3:SetText(NF_L0_DES19);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 513 then
				FirstWin_Text3:SetText(NF_L0_DES20);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 520 then
				FirstWin_Text3:SetText(NF_L0_DES21);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 521 then
				FirstWin_Text3:SetText(NF_L0_DES22);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 522 then
				FirstWin_Text3:SetText(NF_L0_DES23);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 523 then
				FirstWin_Text3:SetText(NF_L0_DES24);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 530 then
				FirstWin_Text3:SetText(NF_L0_DES25);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 531 then
				FirstWin_Text3:SetText(NF_L0_DES26);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 532 then
				FirstWin_Text3:SetText(NF_L0_DES27);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 533 then
				FirstWin_Text3:SetText(NF_L0_DES28);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			end;

			if SubID == 1000 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES30
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 1001 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES31
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 1002 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES32
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 1003 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES33
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 1100 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES34
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 1101 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES35
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 1102 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES36
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 1103 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES37
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 1200 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES38
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 1201 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES39
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 1202 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES40
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 1203 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES41
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 1300 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES42
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 1301 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES43
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 1302 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES44
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 1303 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES45
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			end;
		elseif Index == 3 then    ----第3个页面------
			if SubID == 500 then
				FirstWin_Text1:SetText(NF_L0_DES11);
				FirstWin_Text1:Visible(true);
				FirstWin_ButtonA1:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 600 then
				FirstWin_Text3:SetText(NF_L0_DES12);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 501 then
				FirstWin_Text3:SetText(NF_L0_DES46);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 502 then
				FirstWin_Text3:SetText(NF_L0_DES47);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 505 then
				FirstWin_Text3:SetText(NF_L0_DES48);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 506 then
				FirstWin_Text3:SetText(NF_L0_DES49);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 510 then
				FirstWin_Text3:SetText(NF_L0_DES50);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 511 then
				FirstWin_Text3:SetText(NF_L0_DES51);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 515 then
				FirstWin_Text3:SetText(NF_L0_DES52);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 516 then
				FirstWin_Text3:SetText(NF_L0_DES53);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 520 then
				FirstWin_Text3:SetText(NF_L0_DES54);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 521 then
				FirstWin_Text3:SetText(NF_L0_DES55);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 525 then
				FirstWin_Text3:SetText(NF_L0_DES56);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 526 then
				FirstWin_Text3:SetText(NF_L0_DES57);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 530 then
				FirstWin_Text3:SetText(NF_L0_DES58);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 531 then
				FirstWin_Text3:SetText(NF_L0_DES59);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 535 then
				FirstWin_Text3:SetText(NF_L0_DES60);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 536 then
				FirstWin_Text3:SetText(NF_L0_DES61);
				FirstWin_Text3:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			end;


			if SubID == 3000 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES62
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 3001 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES63
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 3002 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES64
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 3003 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES65
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 3004 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES66
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 3005 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES67
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 3006 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES68
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 3007 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES69
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 3008 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES70
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 3009 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES71
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 3010 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES72
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 3011 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES73
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 3012 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES74
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 3013 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES75
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 3014 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES76
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 3015 then
				FirstWin_Text1:SetText(NF_L0_DES29);
				strDesig = strDesig .. NF_L0_DES77
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				FirstWin_ButtonA2:Visible(false);
				NPCFUN:EndMessage(true);
			end;
		end; 
	
	elseif Type == NPC_FLAG_SYS_DESAWARD then	--------称谓奖励-----------------------------------------------------------------------

		if Index== 1 then    ----第1个页面------
			if SubID == 100 then
				FirstWin_Text1:SetText(NF_L0_DES517);
				FirstWin_Text1:Visible(true);
				FirstWin_ButtonA1:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 1 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES500);
				Button:Visible(true);
			elseif SubID == 2 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES501);
				Button:Visible(true);
			elseif SubID == 3 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES502);
				Button:Visible(true);
			elseif SubID == 4 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES503);
				Button:Visible(true);
			elseif SubID == 5 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES504);
				Button:Visible(true);
			elseif SubID == 6 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES505);
				Button:Visible(true);
			end;
		elseif Index == 2 then	--第2个页面---------------------
			if SubID == 500 then
				FirstWin_Text1:SetText("操作异常");
				FirstWin_Text1:Visible(true);
				FirstWin_ButtonA1:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 600 then
				FirstWin_Text1:SetText(NF_L0_DES506);
				FirstWin_Text1:Visible(true);
				FirstWin_ButtonA1:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 601 then
				FirstWin_Text1:SetText(NF_L0_DES507);
				FirstWin_Text1:Visible(true);
				FirstWin_ButtonA1:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 1000 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES508);
				Button:Visible(true);
			elseif SubID == 1200 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES509);
				Button:Visible(true);
			elseif SubID == 1201 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES510);
				Button:Visible(true);
			elseif SubID == 2500 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES511);
				Button:Visible(true);
			elseif SubID == 2501 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_DES512);
				Button:Visible(true);

			end;
		elseif Index == 3 then	--第3个页面---------------------
			if SubID == 500 then
				FirstWin_Text1:SetText(NF_L0_DES11);
				FirstWin_Text1:Visible(true);
				FirstWin_ButtonA1:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 501 then
				FirstWin_Text1:SetText(NF_L0_DES513);
				FirstWin_Text1:Visible(true);
				FirstWin_ButtonA1:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 502 then
				FirstWin_Text1:SetText(NF_L0_DES514);
				FirstWin_Text1:Visible(true);
				FirstWin_ButtonA1:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 503 then
				FirstWin_Text1:SetText(NF_L0_DES515);
				FirstWin_Text1:Visible(true);
				FirstWin_ButtonA1:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 504 then
				FirstWin_Text1:SetText("状态已经达到最大,不能再领取");
				FirstWin_Text1:Visible(true);
				FirstWin_ButtonA1:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 505 then
				FirstWin_Text1:SetText("状态已经达到最大,不能再领取");
				FirstWin_Text1:Visible(true);
				FirstWin_ButtonA1:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 510 then
				FirstWin_Text1:SetText(NF_L0_DES516);
				FirstWin_Text1:Visible(true);
				FirstWin_ButtonA1:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 511 then
				FirstWin_Text1:SetText(NF_L0_DES516);
				FirstWin_Text1:Visible(true);
				FirstWin_ButtonA1:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 512 then
				FirstWin_Text1:SetText(NF_L0_DES516);
				FirstWin_Text1:Visible(true);
				FirstWin_ButtonA1:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 513 then
				FirstWin_Text1:SetText(NF_L0_DES516);
				FirstWin_Text1:Visible(true);
				FirstWin_ButtonA1:Visible(false);
				NPCFUN:EndMessage(true);
			elseif SubID == 514 then
				FirstWin_Text1:SetText(NF_L0_DES516);
				FirstWin_Text1:Visible(true);
				FirstWin_ButtonA1:Visible(false);
				NPCFUN:EndMessage(true);
			end;
		end;
	
	elseif Type == NPC_FLAG_SYS_MATERIALBACK then		---------物资回收官-----------20090326,ver204,li
		if Index == 1 then	------第1个页面-----
			if SubID == 1 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_MBT1);
                                Button:SetPosition(40,285)
				Button:Visible(true);
			elseif SubID == 2 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_MBT2);
                                Button:SetPosition(40,310)
				Button:Visible(true);
			elseif SubID == 1000 then
				FirstWin_Text1:SetText(NF_L0_MB1000);
				FirstWin_Text1:Visible(true);
			end;
		elseif Index == 2 then		----------第2个页面--------------
			if SubID == 11 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_CFST1);
                                Button:SetPosition(40,285)
				Button:Visible(true);
			elseif SubID == 12 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_CFST2);
                                Button:SetPosition(40,310)
				Button:Visible(true);
			elseif SubID == 13 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_CFST3);
                                Button:SetPosition(40,335)
				Button:Visible(true);
			elseif SubID == 14 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_CFST4);
                                Button:SetPosition(40,360)
				Button:Visible(true);
			elseif SubID == 1100 then
				FirstWin_Text1:SetText(NF_L0_CFS1100);
				FirstWin_Text1:Visible(true);
			elseif SubID == 15 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_PLT1);
                                Button:SetPosition(40,285)
				Button:Visible(true);
			elseif SubID == 16 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_PLT2);
                                Button:SetPosition(40,310)
				Button:Visible(true);
			elseif SubID == 1200 then
				FirstWin_Text1:SetText(NF_L0_PL1200);
				FirstWin_Text1:Visible(true);
			elseif SubID == 1050 then
				FirstWin_Text1:SetText(NF_L0_MB1050);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                        end;
		elseif Index == 3 then		-------消息提示文字----------
			if SubID == 1101 then
				FirstWin_Text1:SetText(NF_L0_CFS1101);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1102 then
				FirstWin_Text1:SetText(NF_L0_CFS1102);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1103 then
				FirstWin_Text1:SetText(NF_L0_CFS1103);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1104 then
				FirstWin_Text1:SetText(NF_L0_CFS1104);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1105 then
				FirstWin_Text1:SetText(NF_L0_CFS1105);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1106 then
				FirstWin_Text1:SetText(NF_L0_CFS1106);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1107 then
				FirstWin_Text1:SetText(NF_L0_CFS1107);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1108 then
				FirstWin_Text1:SetText(NF_L0_CFS1108);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1201 then
				FirstWin_Text1:SetText(NF_L0_PL1201);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1202 then
				FirstWin_Text1:SetText(NF_L0_PL1202);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1203 then
				FirstWin_Text1:SetText(NF_L0_PL1203);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1204 then
				FirstWin_Text1:SetText(NF_L0_PL1204);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1205 then
				FirstWin_Text1:SetText(NF_L0_PL1205);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1206 then
				FirstWin_Text1:SetText(NF_L0_PL1206);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1207 then
				FirstWin_Text1:SetText(NF_L0_PL1207);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1050 then
				FirstWin_Text1:SetText(NF_L0_MB1050);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			end;
		end;
	elseif Type == NPC_FLAG_SYS_ASSOCIATION then		---------公会保卫活动-----------
		if Index == 1 then	------第1个页面-----
			if SubID == 1002 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1002);
                                Button:SetPosition(40,200)
				Button:Visible(true);
			end;
		
		elseif Index == 2 then		-------消息提示文字----------
			if SubID == 1003 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1003);
                                Button:SetPosition(40,120)
				Button:Visible(true);
			elseif SubID == 1004 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1004);
                                Button:SetPosition(40,150)
				Button:Visible(true);
			elseif SubID == 1005 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1005);
                                Button:SetPosition(40,180)
				Button:Visible(true);
			elseif SubID == 1006 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1006);
                                Button:SetPosition(40,210)
				Button:Visible(true);
			elseif SubID == 1007 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1007);
                                Button:SetPosition(40,240)
				Button:Visible(true);
			elseif SubID == 1008 then
				FirstWin_Text1:SetText(NF_L0_A1008);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1101 then
				FirstWin_Text1:SetText(NF_L0_A1009);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			end;
		elseif Index == 3 then		-------消息提示文字----------
			if SubID == 1103 then
				FirstWin_Text1:SetText(NF_L0_A1103);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 998 then
				FirstWin_Text1:SetText(NF_L0_A998);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 999 then
				FirstWin_Text1:SetText(NF_L0_A1010);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID % 100 == 14 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1112..((SubID-14)/100));
				Button:SetPosition(40,180)
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID % 100 == 15 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1113 .. ((SubID-15)/100));
				Button:SetPosition(40,200)
				Button:Visible(true)
				NPCFUN:EndMessage(true)
			elseif SubID == 1009 then
				FirstWin_Text1:SetText(NF_L0_A1010);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID % 100 == 11 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1114..((SubID-11)/100));
				Button:SetPosition(40,150)
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID % 100 == 12 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1115..((SubID-12)/100));
				Button:SetPosition(40,170)
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID % 100 == 13 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1116..((SubID-13)/100));
				Button:SetPosition(40,190)
				Button:Visible(true)
			elseif SubID == 1010 then
				FirstWin_Text1:SetText(NF_L0_A1106);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1200 then
				FirstWin_Text1:SetText(NF_L0_A1200);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1201 then
				FirstWin_Text1:SetText(NF_L0_A1201);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1104 then
				FirstWin_Text1:SetText(NF_L0_A1104);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1105 then
				FirstWin_Text1:SetText(NF_L0_A1105);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1106 then
				FirstWin_Text1:SetText(NF_L0_A1106);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1107 then
				FirstWin_Text1:SetText(NF_L0_A1107);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1108 then
				FirstWin_Text1:SetText(NF_L0_A1108);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1109 then
				FirstWin_Text1:SetText(NF_L0_A1109);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID%10 == 7 then
				FirstWin_Text1:SetText(NF_L0_A1110 .. ((SubID-7)/10));
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID%10 == 8 then
				FirstWin_Text1:SetText(NF_L0_A1111 .. ((SubID-8)/10));
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			

			end;

		end;
	elseif Type == NPC_FLAG_SYS_HEALTH then		---------健康跑-----------
		if Index == 1 then	------第1个页面-----
			if SubID == 1000 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1000);
                                Button:SetPosition(40,200)
				Button:Visible(true);
			elseif SubID == 1001 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1001);
                                Button:SetPosition(40,240)
				Button:Visible(true);
			elseif SubID == 1002 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1002);
                                Button:SetPosition(40,280)
				Button:Visible(true);
			elseif SubID == 1003 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1003);
                                Button:SetPosition(40,320)
				Button:Visible(true);
			elseif SubID == 1004 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1004);
                                Button:SetPosition(40,360)
				Button:Visible(true);
			elseif SubID == 1201 then
				FirstWin_Text1:SetText(NF_L0_H1113);
				FirstWin_Text1:Visible(true);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1201);
                                Button:SetPosition(40,250)
				Button:Visible(true);
			elseif SubID == 1202 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1201);
                                Button:SetPosition(40,300)
				Button:Visible(true);
			elseif SubID == 1218 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1218);
                                Button:SetPosition(40,300)
				Button:Visible(true);
			end;
		
		elseif Index == 2 then		-------消息提示文字----------
			if SubID == 1108 then
				FirstWin_Text1:SetText(NF_L0_H1108);
				FirstWin_Text1:Visible(true);
				FirstWin_Text1:SetPosition(40,200)
				NPCFUN:EndMessage(true);
			elseif SubID == 1604 then
				FirstWin_Text1:SetText(NF_L0_H1107);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1284 then
				FirstWin_Text1:SetText(NF_L0_H1284);
				FirstWin_Text1:Visible(true);
				FirstWin_Text1:SetPosition(40,80)
				NPCFUN:EndMessage(true);
			elseif SubID == 1601 then
				FirstWin_Text1:SetText(NF_L0_H1511);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1602 then
				FirstWin_Text1:SetText(NF_L0_H1101);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1251 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1251);
                                Button:SetPosition(40,350)
				Button:Visible(true);
				Button:Enable(false);
                      		UIAPI:SetChecked(false,Button);
				FirstWin_Text1:SetText(NF_L0_H1282);
				FirstWin_Text1:SetPosition(65,180)
				FirstWin_Text1:Visible(true);
				FirstWin_Text3:SetText(NF_L0_H1283);
				FirstWin_Text3:SetPosition(120,180)
				FirstWin_Text3:Visible(true);
				InputText1:Visible(true);
		      		Input11:Visible(true); --设置为可见
		      		Input12:Visible(true); 
		      		Input13:Visible(true); 
		      		Input11:SetPosition(168,180);
		      		Input12:SetPosition(160,180);
		      		Input13:SetPosition(262,180);
                      		InputText1:SetPosition(164,181);
			elseif SubID == 1252 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1251);
                                Button:SetPosition(40,300)
				Button:Visible(true);
				Button:Enable(false);
                      		UIAPI:SetChecked(false,Button);
				FirstWin_Text1:SetText(NF_L0_H1282);
				FirstWin_Text1:SetPosition(65,180)
				FirstWin_Text1:Visible(true);
				FirstWin_Text3:SetText(NF_L0_H1283);
				FirstWin_Text3:SetPosition(120,180)
				FirstWin_Text3:Visible(true);
				InputText1:Visible(true);
		      		Input11:Visible(true); --设置为可见
		      		Input12:Visible(true); 
		      		Input13:Visible(true); 
		      		Input11:SetPosition(168,180);
		      		Input12:SetPosition(160,180);
		      		Input13:SetPosition(262,180);
                      		InputText1:SetPosition(164,181);
			elseif SubID == 1253 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1251);
                                Button:SetPosition(40,350)
				Button:Visible(true);
				Button:Enable(false);
                      		UIAPI:SetChecked(false,Button);
				FirstWin_Text1:SetText(NF_L0_H1282);
				FirstWin_Text1:SetPosition(65,180)
				FirstWin_Text1:Visible(true);
				FirstWin_Text3:SetText(NF_L0_H1283);
				FirstWin_Text3:SetPosition(120,180)
				FirstWin_Text3:Visible(true);
				InputText1:Visible(true);
		      		Input11:Visible(true); --设置为可见
		      		Input12:Visible(true); 
		      		Input13:Visible(true); 
		      		Input11:SetPosition(168,180);
		      		Input12:SetPosition(160,180);
		      		Input13:SetPosition(262,180);
                      		InputText1:SetPosition(164,181);
			elseif SubID == 1254 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1251);
                                Button:SetPosition(40,350)
				Button:Visible(true);
				Button:Enable(false);
                      		UIAPI:SetChecked(false,Button);
				FirstWin_Text1:SetText(NF_L0_H1282);
				FirstWin_Text1:SetPosition(65,180)
				FirstWin_Text1:Visible(true);
				FirstWin_Text3:SetText(NF_L0_H1283);
				FirstWin_Text3:SetPosition(120,180)
				FirstWin_Text3:Visible(true);
				InputText1:Visible(true);
		      		Input11:Visible(true); --设置为可见
		      		Input12:Visible(true); 
		      		Input13:Visible(true); 
		      		Input11:SetPosition(168,180);
		      		Input12:SetPosition(160,180);
		      		Input13:SetPosition(262,180);
                      		InputText1:SetPosition(164,181);
			elseif SubID == 1255 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1251);
                                Button:SetPosition(40,350)
				Button:Visible(true);
				Button:Enable(false);
                      		UIAPI:SetChecked(false,Button);
				FirstWin_Text1:SetText(NF_L0_H1282);
				FirstWin_Text1:SetPosition(65,180)
				FirstWin_Text1:Visible(true);
				FirstWin_Text3:SetText(NF_L0_H1283);
				FirstWin_Text3:SetPosition(120,180)
				FirstWin_Text3:Visible(true);
				InputText1:Visible(true);
		      		Input11:Visible(true); --设置为可见
		      		Input12:Visible(true); 
		      		Input13:Visible(true); 
		      		Input11:SetPosition(168,180);
		      		Input12:SetPosition(160,180);
		      		Input13:SetPosition(262,180);
                      		InputText1:SetPosition(164,181);
			elseif SubID == 1256 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1251);
                                Button:SetPosition(40,350)
				Button:Visible(true);
				Button:Enable(false);
                      		UIAPI:SetChecked(false,Button);
				FirstWin_Text1:SetText(NF_L0_H1282);
				FirstWin_Text1:SetPosition(65,180)
				FirstWin_Text1:Visible(true);
				FirstWin_Text3:SetText(NF_L0_H1283);
				FirstWin_Text3:SetPosition(120,180)
				FirstWin_Text3:Visible(true);
				InputText1:Visible(true);
		      		Input11:Visible(true); --设置为可见
		      		Input12:Visible(true); 
		      		Input13:Visible(true); 
		      		Input11:SetPosition(168,180);
		      		Input12:SetPosition(160,180);
		      		Input13:SetPosition(262,180);
                      		InputText1:SetPosition(164,181);
			elseif SubID == 1257 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1251);
                                Button:SetPosition(40,350)
				Button:Visible(true);
				Button:Enable(false);
                      		UIAPI:SetChecked(false,Button);
				FirstWin_Text1:SetText(NF_L0_H1282);
				FirstWin_Text1:SetPosition(65,180)
				FirstWin_Text1:Visible(true);
				FirstWin_Text3:SetText(NF_L0_H1283);
				FirstWin_Text3:SetPosition(120,180)
				FirstWin_Text3:Visible(true);
				InputText1:Visible(true);
		      		Input11:Visible(true); --设置为可见
		      		Input12:Visible(true); 
		      		Input13:Visible(true); 
		      		Input11:SetPosition(168,180);
		      		Input12:SetPosition(160,180);
		      		Input13:SetPosition(262,180);
                      		InputText1:SetPosition(164,181);
			elseif SubID == 1258 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1251);
                                Button:SetPosition(40,350)
				Button:Visible(true);
				Button:Enable(false);
                      		UIAPI:SetChecked(false,Button);
				FirstWin_Text1:SetText(NF_L0_H1282);
				FirstWin_Text1:SetPosition(65,180)
				FirstWin_Text1:Visible(true);
				FirstWin_Text3:SetText(NF_L0_H1283);
				FirstWin_Text3:SetPosition(120,180)
				FirstWin_Text3:Visible(true);
				InputText1:Visible(true);
		      		Input11:Visible(true); --设置为可见
		      		Input12:Visible(true); 
		      		Input13:Visible(true); 
		      		Input11:SetPosition(168,180);
		      		Input12:SetPosition(160,180);
		      		Input13:SetPosition(262,180);
                      		InputText1:SetPosition(164,181);
			elseif SubID == 1259 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1251);
                                Button:SetPosition(40,350)
				Button:Visible(true);
				Button:Enable(false);
                      		UIAPI:SetChecked(false,Button);
				FirstWin_Text1:SetText(NF_L0_H1282);
				FirstWin_Text1:SetPosition(65,180)
				FirstWin_Text1:Visible(true);
				FirstWin_Text3:SetText(NF_L0_H1283);
				FirstWin_Text3:SetPosition(120,180)
				FirstWin_Text3:Visible(true);
				InputText1:Visible(true);
		      		Input11:Visible(true); --设置为可见
		      		Input12:Visible(true); 
		      		Input13:Visible(true); 
		      		Input11:SetPosition(168,180);
		      		Input12:SetPosition(160,180);
		      		Input13:SetPosition(262,180);
                      		InputText1:SetPosition(164,181);
			elseif SubID == 1260 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1251);
                                Button:SetPosition(40,350)
				Button:Visible(true);
				Button:Enable(false);
                      		UIAPI:SetChecked(false,Button);
				FirstWin_Text1:SetText(NF_L0_H1282);
				FirstWin_Text1:SetPosition(65,180)
				FirstWin_Text1:Visible(true);
				FirstWin_Text3:SetText(NF_L0_H1283);
				FirstWin_Text3:SetPosition(120,180)
				FirstWin_Text3:Visible(true);
				InputText1:Visible(true);
		      		Input11:Visible(true); --设置为可见
		      		Input12:Visible(true); 
		      		Input13:Visible(true); 
		      		Input11:SetPosition(168,180);
		      		Input12:SetPosition(160,180);
		      		Input13:SetPosition(262,180);
                      		InputText1:SetPosition(164,181);
			elseif SubID == 1261 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1251);
                                Button:SetPosition(40,350)
				Button:Visible(true);
				Button:Enable(false);
                      		UIAPI:SetChecked(false,Button);
				FirstWin_Text1:SetText(NF_L0_H1282);
				FirstWin_Text1:SetPosition(65,180)
				FirstWin_Text1:Visible(true);
				FirstWin_Text3:SetText(NF_L0_H1283);
				FirstWin_Text3:SetPosition(120,180)
				FirstWin_Text3:Visible(true);
				InputText1:Visible(true);
		      		Input11:Visible(true); --设置为可见
		      		Input12:Visible(true); 
		      		Input13:Visible(true); 
		      		Input11:SetPosition(168,180);
		      		Input12:SetPosition(160,180);
		      		Input13:SetPosition(262,180);
                      		InputText1:SetPosition(164,181);
			elseif SubID == 1262 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1251);
                                Button:SetPosition(40,350)
				Button:Visible(true);
				Button:Enable(false);
                      		UIAPI:SetChecked(false,Button);
				FirstWin_Text1:SetText(NF_L0_H1282);
				FirstWin_Text1:SetPosition(65,180)
				FirstWin_Text1:Visible(true);
				FirstWin_Text3:SetText(NF_L0_H1283);
				FirstWin_Text3:SetPosition(120,180)
				FirstWin_Text3:Visible(true);
				InputText1:Visible(true);
		      		Input11:Visible(true); --设置为可见
		      		Input12:Visible(true); 
		      		Input13:Visible(true); 
		      		Input11:SetPosition(168,180);
		      		Input12:SetPosition(160,180);
		      		Input13:SetPosition(262,180);
                      		InputText1:SetPosition(164,181);
			elseif SubID == 1263 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1251);
                                Button:SetPosition(40,350)
				Button:Visible(true);
				Button:Enable(false);
                      		UIAPI:SetChecked(false,Button);
				FirstWin_Text1:SetText(NF_L0_H1282);
				FirstWin_Text1:SetPosition(65,180)
				FirstWin_Text1:Visible(true);
				FirstWin_Text3:SetText(NF_L0_H1283);
				FirstWin_Text3:SetPosition(120,180)
				FirstWin_Text3:Visible(true);
				InputText1:Visible(true);
		      		Input11:Visible(true); --设置为可见
		      		Input12:Visible(true); 
		      		Input13:Visible(true); 
		      		Input11:SetPosition(168,180);
		      		Input12:SetPosition(160,180);
		      		Input13:SetPosition(262,180);
                      		InputText1:SetPosition(164,181);
			elseif SubID == 1264 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1251);
                                Button:SetPosition(40,350)
				Button:Visible(true);
				Button:Enable(false);
                      		UIAPI:SetChecked(false,Button);
				FirstWin_Text1:SetText(NF_L0_H1282);
				FirstWin_Text1:SetPosition(65,180)
				FirstWin_Text1:Visible(true);
				FirstWin_Text3:SetText(NF_L0_H1283);
				FirstWin_Text3:SetPosition(120,180)
				FirstWin_Text3:Visible(true);
				InputText1:Visible(true);
		      		Input11:Visible(true); --设置为可见
		      		Input12:Visible(true); 
		      		Input13:Visible(true); 
		      		Input11:SetPosition(168,180);
		      		Input12:SetPosition(160,180);
		      		Input13:SetPosition(262,180);
                      		InputText1:SetPosition(164,181);
			elseif SubID == 1265 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1251);
                                Button:SetPosition(40,350)
				Button:Visible(true);
				Button:Enable(false);
                      		UIAPI:SetChecked(false,Button);
				FirstWin_Text1:SetText(NF_L0_H1282);
				FirstWin_Text1:SetPosition(65,180)
				FirstWin_Text1:Visible(true);
				FirstWin_Text3:SetText(NF_L0_H1283);
				FirstWin_Text3:SetPosition(120,180)
				FirstWin_Text3:Visible(true);
				InputText1:Visible(true);
		      		Input11:Visible(true); --设置为可见
		      		Input12:Visible(true); 
		      		Input13:Visible(true); 
		      		Input11:SetPosition(168,180);
		      		Input12:SetPosition(160,180);
		      		Input13:SetPosition(262,180);
                      		InputText1:SetPosition(164,181);
			elseif SubID == 1266 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1251);
                                Button:SetPosition(40,350)
				Button:Visible(true);
				Button:Enable(false);
                      		UIAPI:SetChecked(false,Button);
				FirstWin_Text1:SetText(NF_L0_H1282);
				FirstWin_Text1:SetPosition(65,180)
				FirstWin_Text1:Visible(true);
				FirstWin_Text3:SetText(NF_L0_H1283);
				FirstWin_Text3:SetPosition(120,180)
				FirstWin_Text3:Visible(true);
				InputText1:Visible(true);
		      		Input11:Visible(true); --设置为可见
		      		Input12:Visible(true); 
		      		Input13:Visible(true); 
		      		Input11:SetPosition(168,180);
		      		Input12:SetPosition(160,180);
		      		Input13:SetPosition(262,180);
                      		InputText1:SetPosition(164,181);
			elseif SubID == 1267 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1251);
                                Button:SetPosition(40,350)
				Button:Visible(true);
				Button:Enable(false);
                      		UIAPI:SetChecked(false,Button);
				FirstWin_Text1:SetText(NF_L0_H1282);
				FirstWin_Text1:SetPosition(65,180)
				FirstWin_Text1:Visible(true);
				FirstWin_Text3:SetText(NF_L0_H1283);
				FirstWin_Text3:SetPosition(120,180)
				FirstWin_Text3:Visible(true);
				InputText1:Visible(true);
		      		Input11:Visible(true); --设置为可见
		      		Input12:Visible(true); 
		      		Input13:Visible(true); 
		      		Input11:SetPosition(168,180);
		      		Input12:SetPosition(160,180);
		      		Input13:SetPosition(262,180);
                      		InputText1:SetPosition(164,181);		
			elseif SubID == 1281 then
				FirstWin_Text2:SetText(NF_L0_H1281);
				FirstWin_Text2:Visible(true);
				FirstWin_Text2:SetPosition(30,80)
			elseif SubID == 1005 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_H1005);
                                Button:SetPosition(20,300)
				Button:Visible(true);
			elseif SubID == 1006 then
				FirstWin_Text1:SetText(NF_L0_H1006);
				FirstWin_Text1:Visible(true);
			elseif SubID == 1101 then
				FirstWin_Text1:SetText(NF_L0_H1101);
				FirstWin_Text1:Visible(true);
				FirstWin_Text1:SetPosition(40,200)
				NPCFUN:EndMessage(true);

			elseif SubID == 1103 then
				FirstWin_Text1:SetText(NF_L0_H1103);
				FirstWin_Text1:Visible(true);
				FirstWin_Text1:SetPosition(40,150)
				NPCFUN:EndMessage(true);
			elseif SubID == 1104 then
				FirstWin_Text1:SetText(NF_L0_H1104);
				FirstWin_Text1:Visible(true);
				FirstWin_Text1:SetPosition(40,150)
				NPCFUN:EndMessage(true);
			elseif SubID == 1105 then
				FirstWin_Text1:SetText(NF_L0_H1105);
				FirstWin_Text1:Visible(true);
				FirstWin_Text1:SetPosition(40,150)
				NPCFUN:EndMessage(true);
			elseif SubID == 1106 then
				FirstWin_Text1:SetText(NF_L0_H1106);
				FirstWin_Text1:Visible(true);
				FirstWin_Text1:SetPosition(40,150)
				NPCFUN:EndMessage(true);
			elseif SubID == 1107 then
				FirstWin_Text1:SetText(NF_L0_H1107);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1114 then
				FirstWin_Text1:SetText(NF_L0_H1114);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1110 then
				FirstWin_Text1:SetText(NF_L0_H1110);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1219 then
				FirstWin_Text1:SetText(NF_L0_H1219);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1221 then
				FirstWin_Text1:SetText(NF_L0_H1107);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1222 then
				FirstWin_Text1:SetText(NF_L0_H1222);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1223 then
				FirstWin_Text1:SetText(NF_L0_H1223);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1111 then
				FirstWin_Text1:SetText(NF_L0_H1111);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:SetText(NF_L0_H1115);
				FirstWin_Text2:Visible(true);
				FirstWin_Text2:SetPosition(45,180)
				NPCFUN:EndMessage(true);

			elseif SubID == 1113 then
				FirstWin_Text1:SetText(NF_L0_H1112);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1300 then
				FirstWin_Text1:SetText(NF_L0_H1300);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1400 then
				FirstWin_Text1:SetText(NF_L0_H1400);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			
			elseif SubID == 1507 then
				FirstWin_Text1:SetText(NF_L0_H1507);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1508 then
				FirstWin_Text1:SetText(NF_L0_H1508);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1509 then
				FirstWin_Text1:SetText(NF_L0_H1509);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1510 then
				FirstWin_Text1:SetText(NF_L0_H1510);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);

			elseif SubID % 10 == 3 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(((SubID - 3)/10)..SM_311);
                                Button:SetPosition(25,150)
				Button:Visible(true);
			elseif SubID % 10 == 4 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(((SubID - 4)/10)..SM_313);
                                Button:SetPosition(70,150)
				Button:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID % 10 == 5 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(((SubID - 5)/10)..SM_311);
                                Button:SetPosition(25,230)
				Button:Visible(true);
			elseif SubID % 10 == 6 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(((SubID - 6)/10)..SM_313);
                                Button:SetPosition(70,230)
				Button:Visible(true);
			elseif SubID % 10000 == 50 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(((SubID - 50)/10000));
                                Button:SetPosition(-70,180)
				Button:Visible(true);
				Button:Enable(false);
                      		UIAPI:SetChecked(false,Button);
			elseif SubID % 10000 == 60 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(((SubID - 60)/10000));
                                Button:SetPosition(-20,180)
				Button:Visible(true);
				Button:Enable(false);
                      		UIAPI:SetChecked(false,Button);
			end;
		elseif Index == 3 then		-------消息提示文字----------
			if SubID == 1109 then
				FirstWin_Text1:SetText(NF_L0_H1109);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID % 10000 == 1 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(((SubID - 1)/10000)..SM_311);
                                Button:SetPosition(25,150)
				Button:Visible(true);
			elseif SubID % 10000 == 2 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(((SubID - 2)/10000)..SM_313);
                                Button:SetPosition(70,150)
				Button:Visible(true);
			elseif SubID == 1102 then
				FirstWin_Text1:SetText(NF_L0_H1102);
				FirstWin_Text1:Visible(true);
				FirstWin_Text1:SetPosition(40,150)
				NPCFUN:EndMessage(true);
			elseif SubID == 1112 then
				FirstWin_Text1:SetText(NF_L0_H1112);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1283 then
				FirstWin_Text1:SetText(NF_L0_H1107);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1110 then
				FirstWin_Text1:SetText(NF_L0_H1107);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1401 then
				FirstWin_Text1:SetText(NF_L0_H1401);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1402 then
				FirstWin_Text1:SetText(NF_L0_H1402);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1403 then
				FirstWin_Text1:SetText(NF_L0_H1403);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1404 then
				FirstWin_Text1:SetText(NF_L0_H1404);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1405 then
				FirstWin_Text1:SetText(NF_L0_H1405);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1406 then
				FirstWin_Text1:SetText(NF_L0_H1406);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1407 then
				FirstWin_Text1:SetText(NF_L0_H1407);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1408 then
				FirstWin_Text1:SetText(NF_L0_H1408);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1409 then
				FirstWin_Text1:SetText(NF_L0_H1409);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1410 then
				FirstWin_Text1:SetText(NF_L0_H1410);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1411 then
				FirstWin_Text1:SetText(NF_L0_H1411);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1412 then
				FirstWin_Text1:SetText(NF_L0_H1412);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1413 then
				FirstWin_Text1:SetText(NF_L0_H1413);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1414 then
				FirstWin_Text1:SetText(NF_L0_H1414);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1415 then
				FirstWin_Text1:SetText(NF_L0_H1415);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1416 then
				FirstWin_Text1:SetText(NF_L0_H1416);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1417 then
				FirstWin_Text1:SetText(NF_L0_H1417);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1280 then
				FirstWin_Text1:SetText(NF_L0_H1280);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1285 then
				FirstWin_Text1:SetText(NF_L0_H1284);
				FirstWin_Text1:Visible(true);
				FirstWin_Text1:SetPosition(40,80)
				NPCFUN:EndMessage(true);
			elseif SubID == 1600 then
				FirstWin_Text1:SetText(NF_L0_H1511);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1603 then
				FirstWin_Text1:SetText(NF_L0_H1107);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			
			end;
		end;
	elseif Type == NPC_FLAG_SYS_OLDMAN then	--------神秘老人-----------------------------------------------------------------------
		if Index== 1 then    ----第1个页面------
			if SubID == 1 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_LT1);
                                Button:SetPosition(40,285)
				Button:Visible(true);
			elseif SubID == 2 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_LT2);
                                Button:SetPosition(40,310)
				Button:Visible(true);
                        elseif SubID ==1000 then
				FirstWin_Text1:SetText(NF_L0_LT1000);
				FirstWin_Text1:Visible(true);
			end;
		elseif Index == 2 then	--第2个页面---------------------
			if SubID == 10 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_LT3);
                                Button:SetPosition(40,285)
				Button:Visible(true);
			elseif SubID == 20 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_LT4);
                                Button:SetPosition(40,310)
				Button:Visible(true);
			elseif SubID == 30 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_LT5);
                                Button:SetPosition(40,335)
				Button:Visible(true);
                        elseif SubID ==1001 then
				FirstWin_Text1:SetText(NF_L0_LT1001);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                        elseif SubID ==1002 then
				FirstWin_Text1:SetText(NF_L0_LT1002);
				FirstWin_Text1:Visible(true);

			elseif SubID % 1000 == 5 then
				FirstWin_Text1:SetText(NF_L0_LT500.."|cffFF0000"..(301-(SubID-5)/1000).."|cffffffff"..NF_L0_LT510);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 501 then
				FirstWin_Text1:SetText(NF_L0_LT501);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 502 then
				FirstWin_Text1:SetText(NF_L0_LT502);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 503 then
				FirstWin_Text1:SetText(NF_L0_LT503);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			end;

		elseif Index == 3 then	--第3个页面---------------------
			if SubID == 511 then
				FirstWin_Text1:SetText(NF_L0_LT511);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 512 then
				FirstWin_Text1:SetText(NF_L0_LT512);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 601 then
				FirstWin_Text1:SetText(NF_L0_LT601);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                        elseif SubID ==1001 then
				FirstWin_Text1:SetText(NF_L0_LT1001);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                        end;
		end;
	elseif Type == NPC_FLAG_SYS_LOSTBOOK then	-------失落之书兑换奖励-----------------------------------------------------------------------

		if Index== 1 then    ----第1个页面------
			if SubID%2000 == 101 then
				FirstWin_Text1:SetText(NF_L0_BK101.."|cffFF0000"..(5-(SubID-101)/2000).."|cffffffff"..NF_L0_BK102);
				FirstWin_Text1:Visible(true);
			elseif SubID == 1 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_BK1);
                                Button:SetPosition(40,285)
				Button:Visible(true);
			elseif SubID == 2 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_BK2);
                                Button:SetPosition(40,310)
				Button:Visible(true);
			end;
		elseif Index == 2 then	--第2个页面---------------------
			if SubID == 200 then
				FirstWin_Text1:SetText(NF_L0_BK200);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 500 then
				FirstWin_Text1:SetText(NF_L0_BK500);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 600 then
				FirstWin_Text1:SetText(NF_L0_BK600);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 601 then
				FirstWin_Text1:SetText(NF_L0_BK601);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID % 2000 == 602 then
				FirstWin_Text1:SetText(NF_L0_BK602..((SubID-602)/2000*100));
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID % 2000 == 603 then
				FirstWin_Text1:SetText(NF_L0_BK602..((SubID-603)/2000*300));
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID % 2000 == 604 then
				FirstWin_Text1:SetText(NF_L0_BK602..((SubID-604)/2000*600));
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID % 2000 == 605 then
				FirstWin_Text1:SetText(NF_L0_BK605);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID % 2000 == 606 then
				FirstWin_Text1:SetText(NF_L0_BK606);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 700 or SubID == 701 then
				FirstWin_Text1:SetText(NF_L0_BK700);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 702 or SubID == 703 then
				FirstWin_Text1:SetText(NF_L0_BK702);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 704 or SubID == 705 then
				FirstWin_Text1:SetText(NF_L0_BK704);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 706 or SubID == 707 then
				FirstWin_Text1:SetText(NF_L0_BK706);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 708 or SubID == 709 then
				FirstWin_Text1:SetText(NF_L0_BK708);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 710 or SubID == 711 then
				FirstWin_Text1:SetText(NF_L0_BK710);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 712 or SubID == 713 then
				FirstWin_Text1:SetText(NF_L0_BK712);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 714 or SubID == 715 then
				FirstWin_Text1:SetText(NF_L0_BK714);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 716 or SubID == 717 then
				FirstWin_Text1:SetText(NF_L0_BK716);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 718 or SubID == 719 then
				FirstWin_Text1:SetText(NF_L0_BK718);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 720 or SubID == 721 then
				FirstWin_Text1:SetText(NF_L0_BK720);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 722 or SubID == 723 then
				FirstWin_Text1:SetText(NF_L0_BK722);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID % 2000 == 802 then
				FirstWin_Text1:SetText(NF_L0_BK602..((SubID-802)/2000*2000));
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID % 2000 == 803 then
				FirstWin_Text1:SetText(NF_L0_BK602..((SubID-803)/2000*5000));
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID % 2000 == 804 then
				FirstWin_Text1:SetText(NF_L0_BK602..((SubID-804)/2000*10000));
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID % 2000 == 805 then
				FirstWin_Text1:SetText(NF_L0_BK602..((SubID-805)/2000*30000));
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID % 2000 == 806 then
				FirstWin_Text1:SetText(NF_L0_BK806);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID % 2000 == 807 then
				FirstWin_Text1:SetText(NF_L0_BK807);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 900 or SubID == 901 then
				FirstWin_Text1:SetText(NF_L0_BK900);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 902 or SubID == 903 then
				FirstWin_Text1:SetText(NF_L0_BK902);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 904 or SubID == 905 then
				FirstWin_Text1:SetText(NF_L0_BK904);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 906 or SubID == 907 then
				FirstWin_Text1:SetText(NF_L0_BK906);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 908 or SubID == 909 then
				FirstWin_Text1:SetText(NF_L0_BK908);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 910 or SubID == 911 then
				FirstWin_Text1:SetText(NF_L0_BK910);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 912 or SubID == 913 then
				FirstWin_Text1:SetText(NF_L0_BK912);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 914 or SubID == 915 then
				FirstWin_Text1:SetText(NF_L0_BK914);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 916 or SubID == 917 then
				FirstWin_Text1:SetText(NF_L0_BK916);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 918 or SubID == 919 then
				FirstWin_Text1:SetText(NF_L0_BK918);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 920 or SubID == 921 then
				FirstWin_Text1:SetText(NF_L0_BK920);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 922 or SubID == 923 then
				FirstWin_Text1:SetText(NF_L0_BK922);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 924 or SubID == 925 then
				FirstWin_Text1:SetText(NF_L0_BK924);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			end;
		end; 
	elseif Type == NPC_FLAG_SYS_REMAIN then	--------上古遗迹-----------------------------------------------------------------------

		if Index== 1 then    ----第1个页面------
			if SubID == 101 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_RM101);
                                Button:SetPosition(40,285)
				Button:Visible(true);
			elseif SubID == 102 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_RM102);
                                Button:SetPosition(40,285)
				Button:Visible(true);
			elseif SubID == 103 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_RM103);
                                Button:SetPosition(40,285)
				Button:Visible(true);
			elseif SubID == 104 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_RM104);
                                Button:SetPosition(40,285)
				Button:Visible(true);
			elseif SubID == 105 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_RM105);
                                Button:SetPosition(40,285)
				Button:Visible(true);
			elseif SubID == 106 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_RM106);
                                Button:SetPosition(40,285)
				Button:Visible(true);
			elseif SubID == 107 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_RM107);
                                Button:SetPosition(40,285)
				Button:Visible(true);
                        elseif SubID ==501 then
				FirstWin_Text1:SetText(NF_L0_RM501);
				FirstWin_Text1:Visible(true);
                        end;
			


		elseif Index == 2 then	--第2个页面---------------------
			if SubID == 200 then
				FirstWin_Text1:SetText(NF_L0_RM200);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 201 then
				FirstWin_Text1:SetText(NF_L0_RM201);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 202 then
				FirstWin_Text1:SetText(NF_L0_RM202);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID%1000 == 203 then
				FirstWin_Text1:SetText(NF_L0_RM203..(((SubID-203)/1000)*500));
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID%1000 == 204 then
				FirstWin_Text1:SetText(NF_L0_RM204..(((SubID-204)/1000)*500));
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID%1000 == 214 then
				FirstWin_Text1:SetText(NF_L0_RM214..(((SubID-214)/1000)*500));
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID%1000 == 215 then
				FirstWin_Text1:SetText(NF_L0_RM215..(((SubID-215)/1000)*500));
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID%1000 == 216 then
				FirstWin_Text1:SetText(NF_L0_RM216..(((SubID-216)/1000)*500));
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID%1000 == 217 then
				FirstWin_Text1:SetText(NF_L0_RM217..(((SubID-217)/1000)*500));
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID%1000 == 218 then
				FirstWin_Text1:SetText(NF_L0_RM218..(((SubID-218)/1000)*500));
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID%1000 == 219 then
				FirstWin_Text1:SetText(NF_L0_RM219..(((SubID-219)/1000)*500));
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			end;
		end;
	elseif Type == NPC_FLAG_SYS_MESSENGER then	--------潘神的邀请函-----------------------------------------------------------------------
		if Index== 1 then    ----第1个页面------
			if SubID == 1 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_MSER1);
                                Button:SetPosition(40,285)
				Button:Visible(true);
			elseif SubID == 2 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_MSER2);
                                Button:SetPosition(40,310)
				Button:Visible(true);
			elseif SubID == 3 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_MSER3);
                                Button:SetPosition(40,335)
				Button:Visible(true);
			elseif SubID ==1000 then
				FirstWin_Text1:SetText(NF_L0_MSER1000);
				FirstWin_Text1:Visible(true);
			elseif SubID == 11 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_MSERS1);
                                Button:SetPosition(40,285)
				Button:Visible(true);
			elseif SubID == 12 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_MSERS2);
                                Button:SetPosition(40,310)
				Button:Visible(true);
			elseif SubID == 13 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_MSERS3);
                                Button:SetPosition(40,335)
				Button:Visible(true);
			elseif SubID ==10001 then
				FirstWin_Text1:SetText(NF_L0_MSERS1000);
				FirstWin_Text1:Visible(true);
			elseif SubID == 500 then
				FirstWin_Text1:SetText(NF_L0_MSER521);
				FirstWin_Text1:Visible(true);
                                FirstWin_ItemBtn1:Visible(true);
                    	  	FirstWin_ItemBtn1:SetPosition(60,200);
			end;
		elseif Index == 2 then	--第2个页面---------------------
			if SubID == 301 then
				FirstWin_Text1:SetText(NF_L0_MSERS301);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 31 then
				FirstWin_Text1:SetText(NF_L0_MSERS31);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1001 then
				FirstWin_Text1:SetText(NF_L0_MSERS1001);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 51 then
				FirstWin_Text1:SetText(NF_L0_MSER111);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 52 then
				FirstWin_Text1:SetText(NF_L0_MSER102);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 53 then
				FirstWin_Text1:SetText(NF_L0_MSER53);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 253 then
				FirstWin_Text1:SetText(NF_L0_MSER253);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 101 then
				FirstWin_Text1:SetText(NF_L0_MSER101);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 11 then
				FirstWin_Text1:SetText(NF_L0_MSER11);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 301 then
				FirstWin_Text1:SetText(NF_L0_MSER301);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 32 then
				FirstWin_Text1:SetText(NF_L0_MSER31);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 102 then
				FirstWin_Text1:SetText(NF_L0_MSER102);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 111 then
				FirstWin_Text1:SetText(NF_L0_MSER111);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1001 then
				FirstWin_Text1:SetText(NF_L0_MSER1001);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 21 then
				FirstWin_Text1:SetText(NF_L0_MSER21);
				FirstWin_Text1:Visible(true);
                                FirstWin_ItemBtn1:Visible(true);
                    	  	FirstWin_ItemBtn1:SetPosition(60,170);
                                FirstWin_ItemBtn2:Visible(true);
                    	  	FirstWin_ItemBtn2:SetPosition(60,240);
                                FirstWin_ItemBtn3:Visible(true);
                    	  	FirstWin_ItemBtn3:SetPosition(60,310);
			end;
		elseif Index == 3 then	--第3个页面---------------------
			if SubID == 41 then
				FirstWin_Text1:SetText(NF_L0_MSER41);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 42 then
				FirstWin_Text1:SetText(NF_L0_MSER42);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1001 then
				FirstWin_Text1:SetText(NF_L0_MSER1001);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 102 then
				FirstWin_Text1:SetText(NF_L0_MSER102);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 401 then
				FirstWin_Text1:SetText(NF_L0_MSER401);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                        end;
		end;

	elseif Type == NPC_FLAG_SYS_SIGNACT then	--------令牌活动-----------------------------------------------------------------------

		if Index== 1 then    ----第1个页面------
			if SubID == 1 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT1);
                                Button:SetPosition(40,285)
				Button:Visible(true);
			elseif SubID == 2 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT2);
                                Button:SetPosition(40,310)
				Button:Visible(true);
                        elseif SubID ==1000 then
				FirstWin_Text1:SetText(NF_L0_SATS1000);
				FirstWin_Text1:Visible(true);
                        end;
			


		elseif Index == 2 then	--第2个页面---------------------
			if SubID == 10 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT3);
                                Button:SetPosition(40,285)
				Button:Visible(true);
			elseif SubID == 20 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT4);
                                Button:SetPosition(40,310)
				Button:Visible(true);
                        elseif SubID ==1001 then
				FirstWin_Text1:SetText(NF_L0_SATS1001);
				FirstWin_Text1:Visible(true);
                        

			elseif SubID == 500 then
				FirstWin_Text1:SetText(NF_L0_SATS1);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 501 then
				FirstWin_Text3:SetText(NF_L0_SATS2);
				FirstWin_Text3:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 502 then
				FirstWin_Text3:SetText(NF_L0_SATS3);
				FirstWin_Text3:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 503 then
				FirstWin_Text3:SetText(NF_L0_SATS4);
				FirstWin_Text3:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 360 then
				FirstWin_Text3:SetText(NF_L0_SATS5);
				FirstWin_Text3:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 361 then
				FirstWin_Text3:SetText(NF_L0_SATS6);
				FirstWin_Text3:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 362 then
				FirstWin_Text3:SetText(NF_L0_SATS7);
				FirstWin_Text3:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 363 then
				FirstWin_Text3:SetText(NF_L0_SATS8);
				FirstWin_Text3:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 364 then
				FirstWin_Text3:SetText(NF_L0_SATS9);
				FirstWin_Text3:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 365 then
				FirstWin_Text3:SetText(NF_L0_SATS10);
				FirstWin_Text3:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 517 then
				FirstWin_Text3:SetText(NF_L0_SATS11);
				FirstWin_Text3:Visible(true);
				NPCFUN:EndMessage(true);

			end;

		elseif Index == 3 then	--第3个页面---------------------
			if SubID == 101 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT5);
                                Button:SetPosition(40,285)
				Button:Visible(true);
			elseif SubID == 102 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT6);
                                Button:SetPosition(40,310)
				Button:Visible(true);
			elseif SubID == 103 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT7);
                                Button:SetPosition(40,335)
				Button:Visible(true);
			elseif SubID == 104 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT8);
                                Button:SetPosition(40,360)
				Button:Visible(true);
			elseif SubID == 105 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT9);
                                Button:SetPosition(40,385)
				Button:Visible(true);
			elseif SubID == 106 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT10);
                                Button:SetPosition(40,410)
				Button:Visible(true);
			elseif SubID == 107 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT11);
                                Button:SetPosition(40,285)
				Button:Visible(true);
			elseif SubID == 108 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT12);
                                Button:SetPosition(40,310)
				Button:Visible(true);
			elseif SubID == 109 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT13);
                                Button:SetPosition(40,335)
				Button:Visible(true);
                        elseif SubID ==1002 then
				FirstWin_Text1:SetText(NF_L0_SATS1002);
				FirstWin_Text1:Visible(true);
                        elseif SubID ==1003 then
				FirstWin_Text1:SetText(NF_L0_SATS1003);
				FirstWin_Text1:Visible(true);




                        end;

		elseif Index == 4 then	--第4个页面---------------------
			if SubID == 110 then               -----------按钮文字---------
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT14);
                                Button:SetPosition(40,295)
				Button:Visible(true);
			elseif SubID == 111 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT15);
                                Button:SetPosition(40,315)
				Button:Visible(true);
			elseif SubID == 112 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT16);
                                Button:SetPosition(40,335)
				Button:Visible(true);
			elseif SubID == 113 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT17);
                                Button:SetPosition(40,355)
				Button:Visible(true);
			elseif SubID == 114 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT18);
                                Button:SetPosition(40,375)
				Button:Visible(true);
			elseif SubID == 115 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT19);
                                Button:SetPosition(40,395)
				Button:Visible(true);
			elseif SubID == 116 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT20);
                                Button:SetPosition(40,415)
				Button:Visible(true);
			elseif SubID == 117 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT21);
                                Button:SetPosition(40,435)
				Button:Visible(true);
			elseif SubID == 118 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT22);
                                Button:SetPosition(40,455)
				Button:Visible(true);
			elseif SubID == 119 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT23);
                                Button:SetPosition(40,475)
				Button:Visible(true);
			elseif SubID == 120 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT14);
                                Button:SetPosition(40,295)
				Button:Visible(true);
			elseif SubID == 121 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT15);
                                Button:SetPosition(40,315)
				Button:Visible(true);
			elseif SubID == 122 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT16);
                                Button:SetPosition(40,335)
				Button:Visible(true);
			elseif SubID == 123 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT17);
                                Button:SetPosition(40,355)
				Button:Visible(true);
			elseif SubID == 124 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT18);
                                Button:SetPosition(40,375)
				Button:Visible(true);
			elseif SubID == 125 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT19);
                                Button:SetPosition(40,395)
				Button:Visible(true);
			elseif SubID == 126 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT20);
                                Button:SetPosition(40,415)
				Button:Visible(true);
			elseif SubID == 127 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT21);
                                Button:SetPosition(40,435)
				Button:Visible(true);
			elseif SubID == 128 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT22);
                                Button:SetPosition(40,455)
				Button:Visible(true);
			elseif SubID == 129 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT23);
                                Button:SetPosition(40,475)
				Button:Visible(true);
			elseif SubID == 130 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT24);
                                Button:SetPosition(40,335)
				Button:Visible(true);
			elseif SubID == 131 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT25);
                                Button:SetPosition(40,355)
				Button:Visible(true);
			elseif SubID == 132 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT26);
                                Button:SetPosition(40,375)
				Button:Visible(true);
			elseif SubID == 133 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT27);
                                Button:SetPosition(40,395)
				Button:Visible(true);
			elseif SubID == 134 then
				print(BtnID,SubID);
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SABT28);
                                Button:SetPosition(40,415)
				Button:Visible(true);
                        elseif SubID ==1004 then
				FirstWin_Text1:SetText(NF_L0_SATS1004);
				FirstWin_Text1:Visible(true);
                        elseif SubID ==1005 then
				FirstWin_Text1:SetText(NF_L0_SATS1005);
				FirstWin_Text1:Visible(true);
                        elseif SubID ==1006 then
				FirstWin_Text1:SetText(NF_L0_SATS1006);
				FirstWin_Text1:Visible(true);
                        elseif SubID ==1900 then
				FirstWin_Text1:SetText(NF_L0_SATS1800);
				FirstWin_Text1:Visible(true);


                        end;

			if SubID == 2000 then                 -------------信息提示文字-------------
				FirstWin_Text1:SetText(NF_L0_SATS2000);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1901 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS1901
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1902 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS1902
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1903 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS1903
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1904 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS1904
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1905 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS1905
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 2001 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS2001
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 2002 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS2002
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 2003 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS2003
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 2004 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS2004
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 2005 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS2005
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);





			end;

		elseif Index == 5 then	--第5个页面---------------------


			if SubID == 2000 then                 -------------信息提示文字-------------
				FirstWin_Text1:SetText(NF_L0_SATS2000);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1900 then               
				FirstWin_Text1:SetText(NF_L0_SATS1800);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1911 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS1911
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1912 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS1912
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1913 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS1913
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1914 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS1914
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1915 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS1915
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1916 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS1916
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1917 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS1917
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1918 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS1918
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1919 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS1919
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1920 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS1920
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1921 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS1921
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1922 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS1922
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1923 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS1923
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1924 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS1924
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1925 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS1925
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);

			elseif SubID == 2011 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS2011
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 2012 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS2012
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 2013 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS2013
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 2014 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS2014
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 2015 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS2015
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 2016 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS2016
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 2017 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS2017
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 2018 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS2018
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 2019 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS2019
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 2020 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS2020
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 2021 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS2021
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 2022 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS2022
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 2023 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS2023
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 2024 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS2024
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 2025 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS2025
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);

			elseif SubID == 3001 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS3001
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3002 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS3002
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3003 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS3003
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3004 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS3004
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3005 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS3005
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3006 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS3006
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3007 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS3007
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3008 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS3008
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3009 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS3009
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3010 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS3010
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3011 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS3011
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3012 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS3012
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3013 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS3013
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3014 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS3014
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3015 then
				FirstWin_Text1:SetText(NF_L0_SATS1900);
				strDesig = strDesig .. NF_L0_SATS3015
				FirstWin_Text2:SetText(strDesig);
				FirstWin_Text1:Visible(true);
				FirstWin_Text2:Visible(true);
				NPCFUN:EndMessage(true);

			end;

                end;  
				
	end;
end	
				
--客户端消息提示框--------------------------------------------------------------------------------------------
function Set_MessageBox(Type,Index,PreSubID,SubID)
	Set_NpcFun_UI(Type,Index);
	if Type == NPC_FLAG_SYS_TRANMIT then    --------传送提示框----------------------------------------------------------------------------------
		if SubID== 700 then
			FirstWin_Text1:SetText(NF_L0_TS700);
			FirstWin_Text1:Visible(true);
			NPCFUN:HaveMessageBox(true);
		elseif SubID== 701 then
			FirstWin_Text1:SetText(NF_L0_TS701);
			FirstWin_Text1:Visible(true);
			NPCFUN:HaveMessageBox(true);
		elseif SubID== 500 then
			FirstWin_Text1:SetText(NF_L0_TS500);
			FirstWin_Text1:Visible(true);
			NPCFUN:HaveMessageBox(true);
		elseif SubID == 202 then
			FirstWin_Text1:SetText(NF_L0_TS202);
			FirstWin_Text1:Visible(true);
			NPCFUN:HaveMessageBox(true);
		elseif SubID == 203 then
			FirstWin_Text1:SetText(NF_L0_TS203);
			FirstWin_Text1:Visible(true);
			NPCFUN:HaveMessageBox(true);
		elseif SubID == 501 then
			FirstWin_Text1:SetText(NF_L0_TS501);
			FirstWin_Text1:Visible(true);
			NPCFUN:HaveMessageBox(true);
                elseif SubID == 500000 then
			FirstWin_Text1:SetText(NF_L0_106);
			FirstWin_Text1:Visible(true);
			NPCFUN:HaveMessageBox(true);
                elseif SubID == 600000 then
			FirstWin_Text1:SetText(NF_L0_107);
			FirstWin_Text1:Visible(true);
			NPCFUN:HaveMessageBox(true);
		end;
	elseif Type == NPC_FLAG_SYS_CREDIT_EXCHANGE then    --------兑换提示框-----------------------------------------------------------------------
		if SubID== 311 then
			FirstWin_Text1:SetText(NF_L0_TS311);
			FirstWin_Text1:Visible(true);
			NPCFUN:HaveMessageBox(true);
		elseif SubID== 312 then
			FirstWin_Text1:SetText(NF_L0_TS312);
			FirstWin_Text1:Visible(true);
			NPCFUN:HaveMessageBox(true);     
		elseif SubID == 313 then
			FirstWin_Text1:SetText(NF_L0_TS313);
			FirstWin_Text1:Visible(true);
			NPCFUN:HaveMessageBox(true);
		elseif SubID == 314 then
			FirstWin_Text1:SetText(NF_L0_TS314);
			FirstWin_Text1:Visible(true);
			NPCFUN:HaveMessageBox(true);
		elseif SubID == 315 then
			FirstWin_Text1:SetText(NF_L0_TS315);
			FirstWin_Text1:Visible(true);
			NPCFUN:HaveMessageBox(true);
		elseif SubID == 316 then
			FirstWin_Text1:SetText(NF_L0_TS316);
			FirstWin_Text1:Visible(true);
			NPCFUN:HaveMessageBox(true);
		end;
	elseif Type == NPC_FLAG_SYS_GRANT_OFFICAL then    --------国家官职提示框----------------------------------------------------------------------
		if SubID== 0 then
		elseif SubID== 1 then
		elseif SubID== 2 then
		elseif SubID== 3 then
		elseif SubID== 4 then
		elseif SubID== 5 then
		elseif SubID== 255 then
		end;
	elseif Type == NPC_FLAG_SYS_OFFICAL_SALARY then  -------------------领取俸禄提示框--------------------------------------------------------------
		if SubID== 1 then
		elseif SubID== 2 then
		elseif SubID== 3 then
		elseif SubID== 4 then
		elseif SubID== 5 then
		end;
	elseif Type == NPC_FLAG_SYS_REPETITION  then  -------------------副本剧情提示框--------------------------------------------------------------
		if Index == 1 then
			if SubID== 11 then
		       		FirstWin_Text1:SetText(NF_L0_RE110);
	               		FirstWin_Text1:Visible(true);
	               		NPCFUN:HaveMessageBox(true);                  
			elseif SubID== 12 then
		       		FirstWin_Text1:SetText(NF_L0_RE120);
	               		FirstWin_Text1:Visible(true);
	               		NPCFUN:HaveMessageBox(true);        
			elseif SubID== 3 then
			elseif SubID== 4 then
			elseif SubID== 5 then
			end;
		elseif Index == 2 then
			if SubID== 200 then
		       		FirstWin_Text1:SetText(NF_L0_RE200);
	               		FirstWin_Text1:Visible(true);
	               		NPCFUN:HaveMessageBox(true); 
			elseif SubID== 201 then
		       		FirstWin_Text1:SetText(NF_L0_RE201);
	               		FirstWin_Text1:Visible(true);
	               		NPCFUN:HaveMessageBox(true); 
			elseif SubID== 202 then
		       		FirstWin_Text1:SetText(NF_L0_RE202);
	               		FirstWin_Text1:Visible(true);
	               		NPCFUN:HaveMessageBox(true); 
			end;
		end;
	elseif Type == NPC_FLAG_SYS_NEWMAN then    -------------新手----------------------------------------------------------------------------
                if Index == 1 then
                   if SubID == 5000 then
                      FirstWin_Text1:SetText(NF_L0_T42);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID == 3 then
                      FirstWin_Text1:SetText(NF_L0_T5050);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID == 11 then
                      FirstWin_Text1:SetText(NF_L0_T5050);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID== 5001 then
                      FirstWin_Text1:SetText(NF_L0_FJ5040);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      FirstWin_ItemBtn1:Visible(true);
                      FirstWin_ItemBtn1:SetPosition(60,300);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID== 5002 then
                      FirstWin_Text1:SetText(NF_L0_FJ5041);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      FirstWin_ItemBtn1:Visible(true);
                      FirstWin_ItemBtn1:SetPosition(60,300);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID== 5003 then
                      FirstWin_Text1:SetText(NF_L0_FJ5042);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      FirstWin_ItemBtn1:Visible(true);
                      FirstWin_ItemBtn1:SetPosition(60,300);
                      NPCFUN:HaveMessageBox(true);
                   end;
                end;
	elseif Type == NPC_FLAG_SYS_BREAK then    -------------装备分解客户端提示----------------------------------------------------------------------------
                if Index == 1 then
                   if SubID == 1 then
                      FirstWin_Text1:SetText(NF_L0_FJ35);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      FirstWin_Text2:SetText(NF_L0_FJ46);
                      FirstWin_Text2:Visible(true);
                      FirstWin_Text2:SetPosition(45,120);
                      FirstWin_Text3:SetText(NF_L0_FJ47);
                      FirstWin_Text3:Visible(true);
                      FirstWin_Text3:SetPosition(45,140);
                      FirstWin_ItemBtn1:Visible(true);
                      FirstWin_ItemBtn1:SetPosition(60,190);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID == 2 then
                      FirstWin_Text1:SetText(NF_L0_FJ36);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      FirstWin_ItemBtn1:Visible(true);
                      FirstWin_ItemBtn1:SetPosition(60,120);
                      FirstWin_Text2:SetText(NF_L0_FJ43);
                      FirstWin_Text2:Visible(true);
                      FirstWin_Text2:SetPosition(45,160);
                      FirstWin_ItemBtn2:Visible(true);
                      FirstWin_ItemBtn2:SetPosition(60,180);
                      FirstWin_Text3:SetText(NF_L0_FJ44);
                      FirstWin_Text3:Visible(true);
                      FirstWin_Text3:SetPosition(45,220);
		      FirstWin_ItemBtn3:Visible(true);
                      FirstWin_ItemBtn3:SetPosition(60,240);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID== 3 then
                      FirstWin_Text1:SetText(NF_L0_FJ37);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      FirstWin_ItemBtn1:Visible(true);
                      FirstWin_ItemBtn1:SetPosition(60,120);
                      FirstWin_Text2:SetText(NF_L0_FJ45);
                      FirstWin_Text2:Visible(true);
                      FirstWin_Text2:SetPosition(45,160);
                      FirstWin_ItemBtn2:Visible(true);
                      FirstWin_ItemBtn2:SetPosition(60,180);
                      FirstWin_Text3:SetText(NF_L0_FJ44);
                      FirstWin_Text3:Visible(true);
                      FirstWin_Text3:SetPosition(45,220);
		      FirstWin_ItemBtn3:Visible(true);
                      FirstWin_ItemBtn3:SetPosition(60,240);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID == 4 then
                      FirstWin_Text1:SetText(NF_L0_FJ42);
                      FirstWin_Text1:Visible(true);
                      FirstWin_ItemBtn1:Visible(true);
                      FirstWin_ItemBtn1:SetPosition(60,120);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID== 6 then
                      FirstWin_Text1:SetText(NF_L0_FJ49);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      FirstWin_ItemBtn1:Visible(true);
                      FirstWin_ItemBtn1:SetPosition(60,120);
                      FirstWin_Text2:SetText(NF_L0_FJ50);
                      FirstWin_Text2:Visible(true);
                      FirstWin_Text2:SetPosition(45,160);
                      FirstWin_ItemBtn2:Visible(true);
                      FirstWin_ItemBtn2:SetPosition(60,180);
                      FirstWin_Text3:SetText(NF_L0_FJ51);
                      FirstWin_Text3:Visible(true);
                      FirstWin_Text3:SetPosition(45,220);
		      FirstWin_ItemBtn3:Visible(true);
                      FirstWin_ItemBtn3:SetPosition(60,240);
                      NPCFUN:HaveMessageBox(true);
                   end;
                end;
	elseif Type == NPC_FLAG_SYS_ALTAR then    --------------祭坛-----------------------------------------------------------------------------
		if Index == 3 then
                   FirstWin_ButtonA1:SetPosition(145,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(true); 	  	
                   if SubID == 1 then
                      FirstWin_Text1:SetText(NF_L0_GH2000);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID== 2 then
                      FirstWin_Text1:SetText(NF_L0_GH2001);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID== 3 then
                      FirstWin_Text1:SetText(NF_L0_GH2002);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:HaveMessageBox(true);
                   end;
                elseif Index == 4 then
                   FirstWin_ButtonA1:SetPosition(145,500);
	           FirstWin_ButtonA2:SetPosition(220,500);
		   FirstWin_ButtonA1:Visible(true);
		   FirstWin_ButtonA2:Visible(true);
                   if SubID == 1 then
                      FirstWin_Text1:SetText(NF_L0_GH2003);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID== 2 then
                      FirstWin_Text1:SetText(NF_L0_GH2004);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID== 3 then
                      FirstWin_Text1:SetText(NF_L0_GH2005);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID== 4 then
                      FirstWin_Text1:SetText(NF_L0_GH2006);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID== 5 then
                      FirstWin_Text1:SetText(NF_L0_GH2007);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID== 6 then
                      FirstWin_Text1:SetText(NF_L0_GH2008);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:HaveMessageBox(true);
                   end;
		end;		
	elseif Type == NPC_FLAG_GUILDQUEST then  -------------------公会任务提示框--------------------------------------------------------------
		if SubID== 1 then
		elseif SubID== 2 then

		end;
	end;
end


--初始化UI的原始位置------------------------------------------------------------------------------------
function SetOriginalPosition()
	FirstWin_Text1:SetPosition(45,100);
	FirstWin_Text2:SetPosition(15,100);
	FirstWin_Text3:SetPosition(15,120);

	FirstWin_Button1:SetPosition(25,100);
        FirstWin_Button1:Enable(true);
	FirstWin_Button2:SetPosition(25,120);
        FirstWin_Button2:Enable(true);
	FirstWin_Button3:SetPosition(25,140);
        FirstWin_Button3:Enable(true);
	FirstWin_Button4:SetPosition(25,160);
        FirstWin_Button4:Enable(true);
	FirstWin_Button5:SetPosition(25,180);
        FirstWin_Button5:Enable(true);
	FirstWin_Button6:SetPosition(25,200);
        FirstWin_Button6:Enable(true);
	FirstWin_Button7:SetPosition(25,220);
        FirstWin_Button7:Enable(true);
	FirstWin_Button8:SetPosition(25,240);
        FirstWin_Button8:Enable(true);
	FirstWin_Button9:SetPosition(25,260);
        FirstWin_Button9:Enable(true);
	FirstWin_Button10:SetPosition(25,280);
        FirstWin_Button10:Enable(true);
	FirstWin_Button11:SetPosition(25,300);
        FirstWin_Button11:Enable(true);
	FirstWin_Button12:SetPosition(25,320);
        FirstWin_Button12:Enable(true);

	FirstWin_CheckBox1:SetPosition(45,220);
	FirstWin_CheckBox2:SetPosition(90,220);
	FirstWin_CheckBox3:SetPosition(135,220);
	FirstWin_CheckBox4:SetPosition(180,220);

        FirstWin_ItemBtn1:Visible(true);
	FirstWin_ItemBtn2:Visible(true);
        FirstWin_ItemBtn3:Visible(true);
	FirstWin_ItemBtn4:Visible(true);

	FirstWin_ButtonA1:SetPosition(145,500);
	FirstWin_ButtonA2:SetPosition(220,500);
	InputText1:SetText("");
	
end