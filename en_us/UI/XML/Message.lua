--Revive.lua--死亡复活说明文本----------------------

local MSG_Revive = {};
MSG_Revive.msg1 = "You are dead.";
MSG_Revive.msg2 = "Thanatos has taken his hook back.";
MSG_Revive.msg3 = "You are so close to Gaea.";
MSG_Revive.msg4 = "The mystical hair of Apollo has been dropped and lost.";
MSG_Revive.msg5 = "Orpheus is singing around you.";
MSG_Revive.msg6 = "Thetis sprinkles some water from the river Stys on you.";
MSG_Revive.msg7 = "Asclepius has taught me how to revive.";
MSG_Revive.msg8 = "Chiron has taught me how to revive.";
MSG_Revive.msg9 = "I have the blood of Cadmus family.";
MSG_Revive.msg10 = "You shout: I will be back!";
MSG_Revive.msg11 = "Should I go to Tartaros after my death?";
MSG_Revive.msg12 = "Cerberus is holwing at me...";
MSG_Revive.msg13 = "You can't go to heaven.";
MSG_Revive.msg14 = "Set my soul on fire.";
MSG_Revive.msg15 = "I dreamed of Aries and Athena.";
MSG_Revive.msg16 = "You have a chance to revive.";
MSG_Revive.msg17 = "I know the 7th feeling while I am dying.";
MSG_Revive.msg18 = "Can't I see Helen and Medea any longer?";
MSG_Revive.msg19 = "Even the thunder of Zeus can't stop me.";
MSG_Revive.msg20 = "I am not willing to go to hell now.";
MSG_Revive.msg21 = "Andromeda's soul accompanies me.";
MSG_Revive.msg22 = "Even my body will disappear.";
MSG_Revive.msg23 = "I am unable to control my feet.";
MSG_Revive.msg24 = "I can't die here.";
MSG_Revive.msg25 = "Can my soul fly to Egypt as well?";
MSG_Revive.msg26 = "Prophets from Delphi bless me.";
MSG_Revive.msg27 = "My life is burning.";

MSG_Revive.msg50 = "Not enough Gold. Reviving here takes you ";
MSG_Revive.msg51 = " Gold";
MSG_Revive.msg52 = "Reviving here takes you ";
MSG_Revive.msg53 = " Gold!";
MSG_Revive.msg54 = "Restore 100% HP and MP";
MSG_Revive.msg55 = "Not enough Silver. Reviving here costs you ";
MSG_Revive.msg56 = " Silver";
MSG_Revive.msg57 = " Silver!";
MSG_Revive.msg58 = "Restore 30% HP and MP";
MSG_Revive.msg59 = "You will return to a nearby city.";
MSG_Revive.msg60 = " seconds later,you will revive. ";

function Get_Revive_Msg(text)
	return MSG_Revive[text];
end
