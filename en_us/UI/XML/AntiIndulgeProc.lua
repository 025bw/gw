--2010.1.20
--防沉迷--
local anti_win = nil
local anti_btn = nil
local num1 = 1;
local test1 = 255;
local uiapi = UIAPI

--按钮闪烁
function Anti_Update()
	anti_win = uiapi:GetElement("AntiIndulgeBtnWin")
	anti_btn =  anti_win:GetChild("AntiIndulgeBtn")

    test1 = test1-17
    if anti_btn:IsVisible() then
		if test1<= 0 then
		    if num1 == 1 then
		        anti_btn:SetTexturePos(283,476)
		        num1 = 0
		    else
		        anti_btn:SetTexturePos(283,447)
			    num1 = 1
		    end
			test1 = 255
		end
    else
	    anti_btn:SetTexturePos(283,447)
	end

end


