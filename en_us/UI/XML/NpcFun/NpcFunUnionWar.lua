local win = UIAPI:GetElement("FirstWin");
local exp = nil
--公会活动
function NpcFunUnionWar_SetUI(Type,Index)
	FirstWin_ButtonA1:SetPosition(145,500);
	FirstWin_ButtonA2:SetPosition(220,500);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunUnionWar_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
	   if SubID == 3001 then
	      FirstWin_Text1:SetText(NF_L0_UN600);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text2:SetText(NF_L0_UN3001);
	      FirstWin_Text2:Visible(true);
	      FirstWin_Text2:SetPosition(20,125);
	      FirstWin_ItemBtn1:Visible(true);
	      FirstWin_ItemBtn1:SetPosition(60,70);
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
	      FirstWin_Text2:SetPosition(20,125);
	      FirstWin_ItemBtn1:Visible(true);
	      FirstWin_ItemBtn1:SetPosition(60,70);
	    elseif SubID ==501 then
	      FirstWin_Text1:SetText(NF_L0_UN600);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text2:SetText(NF_L0_UN601);
	      FirstWin_Text2:Visible(true);
	      FirstWin_Text2:SetPosition(20,125);
	      FirstWin_ItemBtn1:Visible(true);
	      FirstWin_ItemBtn1:SetPosition(60,70);
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
	      FirstWin_Text1:SetText(NF_L0_UN39009);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 3911 then
	      FirstWin_Text1:SetText(NF_L0_UN3911T);
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
	   elseif math.mod(SubID ,5000) == 1 then
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-1)/5000-1))..NF_L0_UN2..(3000+600*((SubID-1)/5000-1))..NF_L0_UN3..(3000+1500*((SubID-1)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 2 then
              if (SubID-2)/5000 <= 2 then
                  exp = 400+400*((SubID-2)/5000);
              else
                  exp = 3000+1500*((SubID-2)/5000-1);
              end;
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-2)/5000-1))..NF_L0_UN2..(3000+600*((SubID-2)/5000-1))..NF_L0_UN4..exp);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 3 then
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-3)/5000-1))..NF_L0_UN2..(3000+600*((SubID-3)/5000-1))..NF_L0_UN5..(12+6*((SubID-3)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 4 then
              if (SubID-4)/5000 <= 2 then
                  exp = 400+400*((SubID-4)/5000);
              else
                  exp = 3000+1500*((SubID-4)/5000-1);
              end;
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-4)/5000-1))..NF_L0_UN3..(3000+1500*((SubID-4)/5000-1))..NF_L0_UN4..exp);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 5 then
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-5)/5000-1))..NF_L0_UN3..(3000+1500*((SubID-5)/5000-1))..NF_L0_UN5..(12+6*((SubID-5)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 6 then
              if (SubID-6)/5000 <= 2 then
                  exp = 400+400*((SubID-6)/5000);
              else
                  exp = 3000+1500*((SubID-6)/5000-1);
              end;
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-6)/5000-1))..NF_L0_UN4..exp..NF_L0_UN5..(12+6*((SubID-6)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 7 then
              if (SubID-7)/5000 <= 2 then
                  exp = 400+400*((SubID-7)/5000);
              else
                  exp = 3000+1500*((SubID-7)/5000-1);
              end;
	      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-7)/5000-1))..NF_L0_UN3..(3000+1500*((SubID-7)/5000-1))..NF_L0_UN4..exp);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 8 then
	      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-8)/5000-1))..NF_L0_UN3..(3000+1500*((SubID-8)/5000-1))..NF_L0_UN5..(12+6*((SubID-8)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 9 then
              if (SubID-9)/5000 <= 2 then
                  exp = 400+400*((SubID-9)/5000);
              else
                  exp = 3000+1500*((SubID-9)/5000-1);
              end;
	      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-9)/5000-1))..NF_L0_UN4..exp..NF_L0_UN5..(12+6*((SubID-9)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 10 then
              if (SubID-10)/5000 <= 2 then
                  exp = 400+400*((SubID-10)/5000);
              else
                  exp = 3000+1500*((SubID-10)/5000-1);
              end;
	      FirstWin_Text1:SetText(NF_L0_UN3..(3000+1500*((SubID-10)/5000-1))..NF_L0_UN4..exp..NF_L0_UN5..(12+6*((SubID-10)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 11 then
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-11)/5000-1))..NF_L0_UN2..(3000+600*((SubID-11)/5000-1))..NF_L0_UN13..(3000+1500*((SubID-11)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 12 then
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-12)/5000-1))..NF_L0_UN2..(3000+600*((SubID-12)/5000-1))..NF_L0_UN14..(30000+45000*((SubID-12)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 13 then
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-13)/5000-1))..NF_L0_UN2..(3000+600*((SubID-13)/5000-1))..NF_L0_UN15..(12+6*((SubID-13)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 14 then
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-14)/5000-1))..NF_L0_UN13..(3000+1500*((SubID-14)/5000-1))..NF_L0_UN14..(30000+45000*((SubID-14)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 15 then
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-15)/5000-1))..NF_L0_UN13..(3000+1500*((SubID-15)/5000-1))..NF_L0_UN15..(12+6*((SubID-15)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 16 then
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-16)/5000-1))..NF_L0_UN14..(30000+45000*((SubID-16)/5000-1))..NF_L0_UN15..(12+6*((SubID-16)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 17 then
	      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-17)/5000-1))..NF_L0_UN13..(3000+1500*((SubID-17)/5000-1))..NF_L0_UN14..(30000+45000*((SubID-17)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 18 then
	      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-18)/5000-1))..NF_L0_UN13..(3000+1500*((SubID-18)/5000-1))..NF_L0_UN15..(12+6*((SubID-18)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 19 then
	      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-19)/5000-1))..NF_L0_UN14..(30000+45000*((SubID-19)/5000-1))..NF_L0_UN15..(12+6*((SubID-19)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 20 then
	      FirstWin_Text1:SetText(NF_L0_UN13..(3000+1500*((SubID-20)/5000-1))..NF_L0_UN14..(30000+45000*((SubID-20)/5000-1))..NF_L0_UN15..(12+6*((SubID-20)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 21 then
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-21)/5000-1))..NF_L0_UN2..(3000+600*((SubID-21)/5000-1))..NF_L0_UN23..(3000+1500*((SubID-21)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 22 then
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-22)/5000-1))..NF_L0_UN2..(3000+600*((SubID-22)/5000-1))..NF_L0_UN24..(30000+45000*((SubID-22)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 23 then
              if (SubID-23)/5000 <= 2 then
                  exp = 400+400*((SubID-23)/5000);
              else
                  exp = 3000+1500*((SubID-23)/5000-1);
              end;
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-23)/5000-1))..NF_L0_UN2..(3000+600*((SubID-23)/5000-1))..NF_L0_UN25..exp);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 24 then
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-24)/5000-1))..NF_L0_UN23..(3000+1500*((SubID-24)/5000-1))..NF_L0_UN24..(30000+45000*((SubID-24)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 25 then
              if (SubID-25)/5000 <= 2 then
                  exp = 400+400*((SubID-25)/5000);
              else
                  exp = 3000+1500*((SubID-25)/5000-1);
              end;
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-25)/5000-1))..NF_L0_UN23..(3000+1500*((SubID-25)/5000-1))..NF_L0_UN25..exp);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 26 then
              if (SubID-26)/5000 <= 2 then
                  exp = 400+400*((SubID-26)/5000);
              else
                  exp = 3000+1500*((SubID-26)/5000-1);
              end;
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-26)/5000-1))..NF_L0_UN24..(30000+45000*((SubID-26)/5000-1))..NF_L0_UN25..exp);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 27 then
	      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-27)/5000-1))..NF_L0_UN23..(3000+1500*((SubID-27)/5000-1))..NF_L0_UN24..(30000+45000*((SubID-27)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 28 then
              if (SubID-28)/5000 <= 2 then
                  exp = 400+400*((SubID-28)/5000);
              else
                  exp = 3000+1500*((SubID-28)/5000-1);
              end;
	      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-28)/5000-1))..NF_L0_UN23..(3000+1500*((SubID-28)/5000-1))..NF_L0_UN25..exp);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 29 then
              if (SubID-29)/5000 <= 2 then
                  exp = 400+400*((SubID-29)/5000);
              else
                  exp = 3000+1500*((SubID-29)/5000-1);
              end;
	      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-29)/5000-1))..NF_L0_UN24..(30000+45000*((SubID-29)/5000-1))..NF_L0_UN25..exp);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 30 then
              if (SubID-30)/5000 <= 2 then
                  exp = 400+400*((SubID-30)/5000);
              else
                  exp = 3000+1500*((SubID-30)/5000-1);
              end;
	      FirstWin_Text1:SetText(NF_L0_UN23..(3000+1500*((SubID-30)/5000-1))..NF_L0_UN24..(30000+45000*((SubID-30)/5000-1))..NF_L0_UN25..exp);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 31 then
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-31)/5000-1))..NF_L0_UN2..(3000+600*((SubID-31)/5000-1))..NF_L0_UN33..(30000+45000*((SubID-31)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 32 then
              if (SubID-32)/5000 <= 2 then
                  exp = 400+400*((SubID-32)/5000);
              else
                  exp = 3000+1500*((SubID-32)/5000-1);
              end;
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-32)/5000-1))..NF_L0_UN2..(3000+600*((SubID-32)/5000-1))..NF_L0_UN34..exp);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 33 then
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-33)/5000-1))..NF_L0_UN2..(3000+600*((SubID-33)/5000-1))..NF_L0_UN35..(12+6*((SubID-33)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 34 then
              if (SubID-34)/5000 <= 2 then
                  exp = 400+400*((SubID-34)/5000);
              else
                  exp = 3000+1500*((SubID-34)/5000-1);
              end;
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-34)/5000-1))..NF_L0_UN33..(30000+45000*((SubID-34)/5000-1))..NF_L0_UN34..exp);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 35 then
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-35)/5000-1))..NF_L0_UN33..(30000+45000*((SubID-35)/5000-1))..NF_L0_UN35..(12+6*((SubID-35)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 36 then
              if (SubID-36)/5000 <= 2 then
                  exp = 400+400*((SubID-36)/5000);
              else
                  exp = 3000+1500*((SubID-36)/5000-1);
              end;
	      FirstWin_Text1:SetText(NF_L0_UN1..(60+15*((SubID-36)/5000-1))..NF_L0_UN34..exp..NF_L0_UN35..(12+6*((SubID-36)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 37 then
              if (SubID-37)/5000 <= 2 then
                  exp = 400+400*((SubID-37)/5000);
              else
                  exp = 3000+1500*((SubID-37)/5000-1);
              end;
	      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-37)/5000-1))..NF_L0_UN33..(30000+45000*((SubID-37)/5000-1))..NF_L0_UN34..exp);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 38 then
	      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-38)/5000-1))..NF_L0_UN33..(30000+45000*((SubID-38)/5000-1))..NF_L0_UN35..(12+6*((SubID-38)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 39 then
              if (SubID-39)/5000 <= 2 then
                  exp = 400+400*((SubID-39)/5000);
              else
                  exp = 3000+1500*((SubID-39)/5000-1);
              end;
	      FirstWin_Text1:SetText(NF_L0_UN2..(3000+600*((SubID-39)/5000-1))..NF_L0_UN34..exp..NF_L0_UN35..(12+6*((SubID-39)/5000-1)));
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,5000) == 40 then
              if (SubID-40)/5000 <= 2 then
                  exp = 400+400*((SubID-40)/5000);
              else
                  exp = 3000+1500*((SubID-40)/5000-1);
              end;
	      FirstWin_Text1:SetText(NF_L0_UN33..(30000+45000*((SubID-40)/5000-1))..NF_L0_UN34..exp..NF_L0_UN35..(12+6*((SubID-40)/5000-1)));
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
end
