-- 2008.09.10 tavia
--帮组系统技能的配置------
--战士1-100
--斗士101-200
--祭祀201-300
--法师301-400
--配置表项最多：Descrip，ID，MaxLev，Power2，Power1，Values，Time，CoolingTime，MP，Level
--Power2，Power1，CoolingTime，MP的值从magic.ini中读取
--Values，Time的值从statues.ini中读取，有状态的情况下才读取
--其它项都是手动 配置

local HelpSystem_SkillCofig = {};

HelpSystem_SkillCofig[1] = {
Descrip=[[Light Chop：Chops the target with light, dealing physical damage caused by physical attack power plus physical damage.


			           Lesser   Middle  Greater   Major    Super
Base Damage:    250      400      530      900      990
Damage Bonus:   50%      60%      80%     100%     105%
Cooldown:        10        10       10       10       10
Consume MP:     12       32       60       100       120
Available level:  1        15       30       45       132

]]

}

HelpSystem_SkillCofig[2] = {
Descrip=[[Whirlwind：Wield a sword to produce a whirlwind, dealing physical damage caused by physical attack power plus physical damage.

			          Lesser    Middle   Greater   Major   Super
Base Damage:  350       520       750      1120     1232
Damage Bonus: 100%     120%     160%    200%    210%
Cooldown:        10       10       10      10      10
Consume MP:     50       72      120     220     264
Available level: 35       55       70      85     135

]]
}

HelpSystem_SkillCofig[3] = {
Descrip=[[Flash Chop:Chops the target with flash, dealing physical damage caused by physical attack power plus physical damage.

				         Lesser   Middle  Greater   Major   Super
Base Damage:   825      1200     1650    2100    2310
Damage Bonus:  140%     170%     220%    300%    320%
Cooldown:       10       10       10       10       10
Consume MP:     90       150      240     380     456
Available level: 75       90       100     110     140

]]
}

HelpSystem_SkillCofig[4] = {
Descrip=
[[Sword Storm:Freezes the nearby air and then transforms the ice into sharp blades to attack nearby enemies, dealing physical damage caused by physical attack power plus physical damage.

				         Lesser   Middle   Greater   Major   Super
Base Damage:   250      350       700     1200     1320
Damage Bonus:  20%      30%       50%      80%      82%
Cooldown:       16       16        16       16       16
Consume MP:     40       80       140      250      300
Available level: 10       30        50       70      133

]]
}

HelpSystem_SkillCofig[5] = {
Descrip=[[Steel Rain:Transforms warrior's rage into sharp blades to attack nearby enemy targets, dealing physical damage caused by physical attack power plus physical damage.

				         Lesser    Middle   Greater   Major   Super
Base Damage:  600      900      1200     2000     2200
Damage Bonus: 40%       70%      100%     150%    155%
Cooldown:      16       16      16      16      16
Consume MP:    120      220     350     600     720
Available level: 55       80       97     106     138

]]
}

HelpSystem_SkillCofig[6] = {
Descrip=[[Blood Claw:Attacks the target with blood claw for physical damage. Chance to hit causing for sec per sec losing health.

							      Lesser   Middle  Greater  Major  Super
Base Damage:     140      180     280     400    440
Damage Bonus:    20%      20%     40%     50%     55%
Damage every 2 sec: 50     100      200    350     350
Consume MP:       8        15      30     60      72
Available level:   5        25      45     65      131
]]
}

HelpSystem_SkillCofig[7] = {
Descrip=[[Rage Claw:Attacks the target with rage claw for physical damage caused by physical attack power plus physical damage. Chance to hit causing for sec per sec losing health.

					       Lesser    Middle  Greater   Major   Super
Base Damage:  150       220      300      400      440
Damage Bonus:  50%      50%     80%      100%     102%
Damage every 2 sec:120     250     500     800    800
Consume MP:     25      50       75       100      120
Available level:  50      70       90      109      131

]]
}

HelpSystem_SkillCofig[8] = {
Descrip=[[Stun：Stuns the target. Chance to hit causing for sec. During the duration, the target cannot perform any action.

				         Lesser  Middle  Greater   Major  Super
Duration s:       3       3        3         3       3
Cooldown:        30      26       23       20      18
Consume MP:      25      60      110      180     250
Available level:  14      40      66       85      103

]]
}

HelpSystem_SkillCofig[9] = {
Descrip=[[Expose Armor:Casts on nearby enemy targets for sec, reducing both their physical defense and magical defense.

					            Lesser   Middle  Greater  Major Super
Consume MP:      50　　  80　　   110 　     150 　 200
Reduce defense:   30　    70　    140 　   250 　 400
Reduce M.Defense: 20　　  50　　  100　　   180 　 300
Available level:  20　    42　　  64　　    86　 　108

]]
}

HelpSystem_SkillCofig[10] = {
Descrip=[[Holy Ward: Summons a holy ward to reduce physical damage. 10 sec cooldown.

				             Lesser   Middle  Greater  Major  Super
Consume MP: 	     35       45 	    60 	     90 	    120
Reduce damage:   10%      13%     16%      20%     25%
Reduce M.damage:  0%       0%      5%      10%     15%
Duration s:      600      600     600     600     600
Available level: 10       34      58       82     106

]]
}

HelpSystem_SkillCofig[101] = {
Descrip=
[[Jab：Jabs the target, dealing physical damage caused by physical attack power plus physical damage.

							      Lesser   Middle  Greater  Major  Super
Base Damage:    160     280     350     500     550
Damage Bonus:    20%     40%    60%     100%     105%
Cooldown:         6       6       6       6       6
Consume MP:      10     26      48      75      90
Available level:  1       15      30      45     132

]]
}

HelpSystem_SkillCofig[102] = {
Descrip=[[Holy Jab：Jabs the target heavily, dealing physical damage caused by physical attack power plus physical damage.

						        Lesser  Middle  Greater  Major  Super
Base Damage:    210     320     550      800      880
Damage Bonus:   50%     80%     110%     140%     144%
Cooldown:       6        6       6        6        6
Consume MP:     40      60      90       135      162
Available level:  35      55      70       85       134

]]
}

HelpSystem_SkillCofig[103] = {
Descrip=[[Stab：Stabs the target, dealing physical damage caused by physical attack power plus physical damage.

					         Lesser   Middle  Greater  Major   Super
Base Damage:    450      700     900      1200     1320
Damage Bonus:   100%     120%    160%     220%     232%
Cooldown:       6        6        6        6        6
Consume MP:     75       100      140     200      240
Available level:  75       90       100      110     135

]]
}

HelpSystem_SkillCofig[104] = {
Descrip=[[Rage Spear：Transfers rage to spear head to attack the target, dealing physical damage caused by physical attack power plus physical damage.

					     Lesser    Middle   Greater  Major  Super
Base Damage:   360     600     1000    1600    1760
Damage Bonus:   100%    120%    160%    220%    232%
Cooldown:       25      25       25       25      25
Consume MP:     50      110      180      300      360
Available level:   10      30      50       70      135

]]
}

HelpSystem_SkillCofig[105] = {
Descrip=[[Spear Hit：Attacks the target extremely fast using a spear, dealing physical damage caused by physical attack power plus  physical damage.

					        Lesser   Middle  Greater   Major   Super
Base Damage:    700     1000     1800     3200     3520
Damage Bonus:    140%   180%    250%    340%    364%
Cooldown:        25       25        25       25       25
Consume MP:      140     220       350      500      600
Available level:  55      80       97      106       140

]]
}

HelpSystem_SkillCofig[106] = {
Descrip=[[Ruined Strike：Swing the spear to attack all nearby enemy targets, dealing physical damage caused by physical attack power plus  physical damage.

					        Lesser  Middle  Greater   Major   Super
Base Damage:   140      200     350      600      660
Damage Bonus:   40%      50%     70%      90%      91%
Cooldown:        18       18      18       18       18
Consume MP: 	   20       45       75      120      144
Available level:  5        25       45       65      133

]]
}

HelpSystem_SkillCofig[107] = {
Descrip=[[Chip Blast：Blasts all nearby enemy targets with chips, dealing physical damage caused by physical attack power plus physical damage.

						      Lesser    Middle  Greater  Major  Super
Base Damage:    300      420     600     900     990
Damage Bonus:   60%      70%    100%    130%    133%
Cooldown:       16       16       16      16     16
Consume MP:     60       90      140     220    264
Available level:  53       75       95     109    136

]]
}

HelpSystem_SkillCofig[108] = {
Descrip=[[Spear Blast：|Blasts all nearby enemy targets with spears, dealing physical damage caused by physical attack power plus physical damage. Chance to hit causing for sec, increasing the target's physical damage taken by 10%.
							     Lesser   Middle   Greater   Major    Super
Base Damage:　 200 　  400 　  800 　  1500 　 1650
Damage Bonus:　 70%　   80%     100%   140%　  144%
Increase damage:  10%　  10%　   15%　  15%　  15%
Duration s:      12　    20　　   12　    20　    20
Consume MP:      60　   100　   200　   350　   240
Available level:   15　   30　   45     60     137

]]
}

HelpSystem_SkillCofig[109] = {
Descrip=[[Meteor Blast：Blasts all nearby enemy targets with meteors, dealing physical damage caused by physical attack power plus physical damage. Chance to hit causing for sec to increase its physical damage taken by 10%.

									  Lesser    Middle   Greater   Major   Super
Base Damage:     300     600     1200     1800     1980
Damage Bonus:   120%    130%    150%     180%     188%
Increase damage:  10%     10%     15%       15%      15%
Duration s:       12      20      12        20       20
Consume MP:      180     270     450       750      900
Available level:   50      70      90       105      138

]]
}

HelpSystem_SkillCofig[110] = {
Descrip=[[Sacred Zeal：Enters sacred zeal stance for sec, increasing hit and critical chance.

									 Lesser   Middle  Greater   Major  Super
Consume MP:    50      90      130      200     300
Duration s:     600     600      600      600    600
Increase hit:    10      20       30       45      60
Increase crit:    4       8        12       18      24
Available level: 10      34       58       82      106

]]
}

HelpSystem_SkillCofig[111] = {
Descrip=[[Freeze: Freezes the target. The target cannot move for the duration of the spell.

									 Lesser  Middle  Greater   Major   Super
Consume MP:    50      80      120      180     250
Cooldown:       60      55      50       45      40
Duration s:      3       4       5        6       6
Available level: 14     40      66       88      103

]]
}

HelpSystem_SkillCofig[301] = {
Descrip=[[Fireball：Hurls a fiery ball to the target, dealing magical damage caused by magical attack power plus magical damage.

			         Lesser   Middle   Greater   Major   Super
Base Damage:   70       120      200      280      336
Damage Bonus:  70%      70%      80%      90%      92%
Consume MP:     8        12       20       30       42
Available level:  1        15        30       45     131

]]
}

HelpSystem_SkillCofig[302] = {
Descrip=[[Lightball：Hurls a lightball to the target, dealing magical damage caused by magical attack power plus magical damage.

			         Lesser   Middle   Greater  Major  Super
Base Damage:  180      240      320      500      600
Damage Bonus:  80%      80%      100%     110%     112%
Cooldown:     1         1        1        1        1
Consume MP:   15       25       40       60       84
Available level: 35       55       70       85      131

]]
}

HelpSystem_SkillCofig[303] = {
Descrip=[[Lightblade：Hurls a lightblade to the target, dealing magical damage caused by magical attack power plus magical damage.

			          Lesser   Middle  Greater  Major  Super
Base Damage:  300      400     550      700      840
Damage Bonus:   100%     100%    110%     120%     124%
Cooldown:         1        1        1        1        1
Consume MP:    30       50      75       100      140
Available level: 75      90     100      110      131

]]
}

HelpSystem_SkillCofig[304] = {
Descrip=[[Thunder：Call down thunder to attack the target, dealing magical damage caused by magical attack power plus magical damage.

			            Lesser  Middle   Greater  Major  Super
Base Damage:   350      500     900      1400      1680
Damage Bonus:  100%     140%    180%     250%      280%
Cooldown:       22       22      22       22       22
Consume MP:    60       100     180      320      448
Available level: 10       30       50       70      135

]]
}

HelpSystem_SkillCofig[305] = {
Descrip=[[Fire Lotus：Use essence of fire to blast the target like a fire lotus, dealing magical damage caused by magical attack power plus magical damage.

			          Lesser   Middle  Greater  Major  Super
Base Damage:  600      900     1500     2800     3360
Damage Bonus:  160%     220%    280%     350%     400%
Cooldown:      22       22      22       22       22
Consume MP:   140      260     450      700      980
Available level: 55       80       97      108      140

]]
}

HelpSystem_SkillCofig[306] = {
Descrip=[[Star Shower：Call down meteors to pelt the target area, dealing magical damage caused by magical attack power plus magical damage.

			          Lesser   Middle   Greater  Major  Super
Base Damage:  180     280      500      800      960
Damage Bonus: 50%     80%      120%     160%     172%
Cooldown:     18      18        18       18      18
Consume MP:    70      150      300      500      700
Available level: 5       25        45       65      133

]]
}

HelpSystem_SkillCofig[307] = {
Descrip=[[Thundercloud：Call down thunderclouds to pelt the target area, dealing magical damage caused by magical attack power plus magical damage.

				        Lesser   Middle   Greater   Major    Super
Added damage:   400      550     800      1200     1400
Damage Bonus:  100%     140%    200%     250%    280%
Cooldown:      18        18      18       18     18
Consume MP:     220     400     750      1100     1540
Available level:  50      75      95      109      138

]]
}

HelpSystem_SkillCofig[308] = {
Descrip=[[Flame Blast：Use essence of fire to pelt the target area, per sec, dealing magical damage caused by magical attack power plus  magical damage for 5 sec.

				         Lesser  Middle Greater  Major  Super
Base Damage:  24      52     86       124     180
Damage Bonus:  20%     20%    40%      40%     50%
Cooldown:      2        2      2        2       2
Consume MP:     20      45     75       120     180
Available level: 10      34     58       82      106

]]
}

HelpSystem_SkillCofig[309] = {
Descrip=[[Fire Blast: Blasts all enemies within range. Deals magical damage.

				         Lesser  Middle  Greater Major   Super
Base Damage:   600     1000    1600    2500    3500
Damage Bonus:  120%    160%    220%    300%    400%
Cooldown:      180     180     180     180     180
Consume MP:     400     600     900    1500    2000
Available level: 30       52      74     96      106

]]
}

HelpSystem_SkillCofig[310] = {
Descrip=[[Five-star Form：Uses some of the Gods power for sec to reduce magical and physical damage.

								         Lesser  Middle Greater Major Super
Reduce damage（%）: 8      10      12	     15	   20
Reduce M.damage（%）:8      10     12       15    20
Duration s:       120     120    150      180   240
Consume MP:       120    170     250      350   500
Available level:    10      34     58       82    102

]]
}

HelpSystem_SkillCofig[311] = {
Descrip=[[Silence：Silences the target for a time. Chance to hit causing for sec. The target cannot cast spells for the duration of the effect.

			          Lesser   Middle  Greater  Major Super
Duration s:    10       10      10      11      12
Cooldown:      50       42      38      38      38
Consume MP:    100      180     250     350     490
Available level:  26      72     104    135    140

]]
}

HelpSystem_SkillCofig[201] = {
Descrip=[[Heal：Heals the friendly target for.

			         Lesser  Middle  Greater Major   Super
Recovery:    500     900     1600    2500    4000
Cooldown:    8       8       8        8       8
Consume MP:    60      100     180     350     600
Available leve:  6       34      62      88      104

]]
}

HelpSystem_SkillCofig[202] = {
Descrip=[[Area Heal：Heals all nearby allies for.

			         Lesser  Middle  Greater Major  Super
Recovery:    300     500     800     1400   2200
Cooldown:    18      18      18      18      18
Consume MP:   120     200    380     750     1400
Available level: 10      38      66      92      100

]]
}

HelpSystem_SkillCofig[203] = {
Descrip=[[Gaia Care:	Uses the power of the Gods to increase the the dodge chance by 3,000 and crit hitting resistance by 1,000.

							   Lesser  Middle  Greater  Major  Super
Duration s:   5       5        7        8      10
Cooldown:     150     120     120      90     90
Consume MP:    100     150     220      300    400
Available level: 14      40      66       85     102

]]
}

HelpSystem_SkillCofig[204] = {
Descrip=[[Mana Shield：Use essence of air to form a mana shield. For sec increases both physical defense and magical defense.

										     Lesser  Middle  Greater  Major   Super
Increase defense:  20     40      100      180     280
Increase M.defense:15     30      80       140     200
Duration s:       120    120     150      180     240
Consume MP:       100    150     210      300     450
Available level:   10     34      58       82      106
]]
}

HelpSystem_SkillCofig[205] = {
Descrip=[[Shackle: Shackles the target using the power of wind. The target cannot perform any action for the duration of the effect, but the damage done will only be 25% the norm. As the skill level improves, the success rate upon performance increases.

				     Lesser    Middle   Greater   Major   Super
Duration:     10      10       10       11       12
Cooldown:      50      42       38       38       38
Consume MP:    100    160     240     336     470
Available level:  26     72     106    135    140
]]
}

HelpSystem_SkillCofig[206] = {
Descrip=[[Ice Shot：Hurls an ice arrow at the enemy, dealing magical damage caused by magical attack power plus magical damage.

				          Lesser   Middle   Greater   Major   Super
Base Damage:   200    330      460      800      960
Damage Bonus:   50%     50%      50%      50%      60%
Consume MP:    10      18       30        48       67
Available level:  1      20      40      60       131

]]
}

HelpSystem_SkillCofig[207] = {
Descrip=[[Windblade：Hurls a windblade at the enemy, dealing magical damage caused by magical attack power plus magical damage.
			         Lesser   Middle    Greater   Major   Super
Base Damage:   300     600      1100      1500     1800
Damage Bonus:  70%     70%      70%      70%      76%
Cooldown:      1         1        1         1        1
Consume MP:    36       50       72       100      140
Available level: 60       80       95       110      131

]]
}

HelpSystem_SkillCofig[208] = {
Descrip=[[Ice Cone：Binds water vapor into ice cones to attack the enemy, dealing magical damage from magical attack power plus magical damage.

				           Lesser  Middle   Greater  Major  Super
Base Damage:     400      600     800      1000   1200
Damage Bonus:    50%      60%     70%     80%     84%
Cooldown:        5        4        3        2        2
Consume MP:       50       90     140     210     294
Available level:   8        22      36     50      133

]]
}

HelpSystem_SkillCofig[209] = {
Descrip=[[Dripstone：Call up innumerous dripstones from underground to attack the enemy, dealing magical damage caused by magical attack power plus magical damage.

				          Lesser   Middle   Greater  Major  Super
Base Damage:    550     750     1000    1500   1800
Damage Bonus:   120%    140%     180%    220%   244%
Cooldown:      12       12       12      12     12
Consume MP:     110      180     270     420    588
Available level:  37       57      72      87     134

]]
}

HelpSystem_SkillCofig[210] = {
Descrip=[[Holy Light：Use essence of light to blast the enemy, dealing magical damage caused by magical attack power plus magical damage.

			          Lesser   Middle   Greater  Major  Super
Base Damage:   650      750      900      1200    1440
Damage Bonus:  200%     250%     300%     340%    388%
Cooldown:     12        12       12        12      12
Consume MP:    250      340      440      650     910
Available level:  75       90       97      108     140

]]
}

HelpSystem_SkillCofig[211] = {
Descrip=[[Stalagmite：Call up innumerous stalagmites from underground to attack all nearby enemies, dealing magical damage caused by magical attack power plus magical damage.

			           Lesser   Middle   Greater  Major  Super
Base Damage:     200     350     600     1000    1200
Damage Bonus:     50% 	   80%     120%    150%   160%
Cooldown:         20      20      20      20     20
Consume MP:       80      170     340     550    770
Available level:   5        25      45      65     138

]]
}

HelpSystem_SkillCofig[212] = {
Descrip=[[Ternary Curse:Gathers the essence of water, fire and light to attack all nearby enemies, dealing magical damage caused by magical attack power plus magical damage.


			            Lesser   Middle   Greater  Major  Super
Base Damage:    450     800     1200    2000   2400
Damage Bonus:   100%    130%    170%    200%   220%
Cooldown:        20       20       20       20      20
Consume MP:      250     450     800     1200    1680
Available level:  55       75      95      109     135

]]
}
HelpSystem_SkillCofig[401] = {
Descrip=[[
There are 4 ways to obtain a pet.

|cff08D631Capture a Pet|cffffffff
You can capture a monster as your pet in most of the godly territory. A pet bound monster will often say something impressive on World Chat when they appear. Keep an eye on the announcements. Possible locations to find them include the suburbs of Athens and Sparta, Marathon, Parnitha, Megara, Argolis, Nemea, Peloponnesus, and Medusa Island.
Unfortunately it can be tiresome and capturing tools must be equipped in advance. Capturing Tools are available from the following sources:
[Pet]Merchant: Wooden Tool, Iron Tool and Silver Tool.
Item Mall: Gold Tool and Mystic Tool
B-GOLD Vendor: Gold Tool and Mystic Tool.

Advanced Tool:  Pretty much relieves you of the chores of hunting, tracking and capturing.  Many think it's well worth the extra money.

|cff08D631Newbie reward Pet|cffffffff
Everyone new to GodsWar Online will receive a Beginner Gift that will appear at the bottom of the minimap. After a certain amount of in-game time, you will be able to claim your pet. Simple as that!
Any player Level 10 or higher can accept the First Pet quest. (Press the shortcut key Q to bring up your quests.) You can get the quest from the Newbie Guide in the suburbs and submit it to the Pet Master to claim a Flower Pixie Egg or a Minotaur Egg.

|cff08D631Trade for a Pet|cffffffff
It's also possible to trade for a pet egg or a pet-sealed Magic jade from other players.

|cff08D631Item Mall Pet|cffffffff
By far the easiest and safest way to get a good quality pet is from the Item Mall. A wide variety of pets are available in GW Item Mall, all at reasonable prices. Head over to the in-game Item Mall to get your favorite pet now!

Open your backpack (or press B) and |cfff0c800 right click|cffffffff on the Pet Egg icon to get your pet.  A pet's attributes are determined randomly at birth. Open your pet panel (or press P) to check on your new born Pet.

]]
}


HelpSystem_SkillCofig[402] = {
Descrip=[[
Every pet is unique in the world of GodsWar. Let's check on the attributes of your pet.

|cff08D631Name|cffffffff
You will want to choose a name for your pet. A |cfff0c800 Renaming Stone |cffffffff (available in the Item Mall) is needed to change your pets name.

|cff08D631 Types, Gender, Aptitude and Constellation |cffffffff
are a pets fixed attributes. They combine to decide on the looks and the general attributes of a pet.

|cff08D631Food types|cffffffff
Pets have different diets, and owners should feed them accordingly. Fed the wrong food, your pet will only have half growth in |cfff0c800Satiety|cffffffff and zero growth in |cfff0c800Amity|cffffffff.

|cff08D631Sould Contract|cffffffff
Owners can sign Soul Contracts with their pets which will enhance the advancement of their pets's abilities, while also making the pets nontransferable.  View |cfff0c800Pet Raising and Pet Growth|cffffffff）

|cff08D631 Binding a Pet|cffffffff
With your summoned pet, visit the [NPC]Pet Manager in a major city and select Pet Raising. Then, select 'The pet and its owner are bound' to initiate the binding process.

|cff08D631 Satiety and Amity|cffffffff
When a pet is hungry or unfriendly, you need to feed them in a timely manner. If you don't, they will stop cooperating with you.

|cff08D631Lifetime|cffffffff
The lifespan of any pet is predetermined, but it can be extended with the use of |cfff0c800 Effective Water |cffffffff (available in the Item Mall).

|cff08D631Pet Talents|cffffffff
A pets talents are pretty much determined at birth, though Pet Aptitude has a big sway on Pet Talents.

|cff08D631Pet Skills|cffffffff
Pet skills are known to be a big help to your attributes!
Pets can learn up to six skills. Most skills are available for purchase from |cfff0c800 Pet Merchants|cffffffff. To learn a skill is a two-step process. First, a skill slot must be activated using a bottle of |cfff0c800  Spring Water|cffffffff. Then, the skill can be unsealed using a bottle of |cfff0c800 Golden Apple Juice|cffffffff. Just keep in mind that most skills are pet-specific or level-specific.
When the six available skill slots are full, outdated skills can be unlearned. Using a bottle of Strong Purge Potion, players can visit any pet manager, and after talking to them, select "pet raising" and then "unlearn a skill" to free up a pets skill spot.

|cff08D631Pet Level and Pet Exp|cffffffff
When your Pet has amassed a sufficient amount of Exp, click on the |cfff0c800Upgrade|cffffffff button to move your pet up a level.

|cff08D631Merge and Rebirth|cffffffff
Used to record the amount of times your pet has merged or been reborn.

|cff08D631Remaing Chances for Rebirth|cffffffff
Pets with better Aptitude have a better chance for Rebirth. If your Pet is not that type, the |cfff0c800Rebirth Spring Water|cffffffff will give your pet a leg up in reaching the rebirth phase!

|cff08D631GTechnique|cffffffff
One of the six savvies, affects dodge rate, physical resistance, and magic resistance when combined. Pet Technique can be improved by Pet Merging. View |cfff0c800Pet Growth|cffffffff for more relevant info.

|cff08D631Agility, Strength, Accuracy, Technique, Wisdom and Luck|cffffffff
A Pet has 6 savvies, each of which is attributed a |cfff0c800basic value|cffffffff +|cfff0c800Bonus|cffffffff. The basic value can be improved by Pet Merging, while the latter value by Pet Rebirth. View |cfff0c800Pet Growth|cffffffff for more relevant info.
Better attributes in a pet's 6 savvies means more bonus attributes. Click on |cfff0c800Merge Effect|cffffffff to check on the potential benefits of pets merging.

|cff08D631Growth (concealed Growth Values)|cffffffff
Pet's growth values are invisible to the owner. Although now, Pet owners have the option of viewing this information by going to the |cfff0c800Pet Manager|cffffffff in the main city and using a Pixie's Tear (available in the Item Mall).

]]
}

HelpSystem_SkillCofig[501] = {
Descrip=[[
In order to make your pet better, bring it to the|cfff0c800Pet Manager|cffffffff to sign a |cfff0c800 Soul Contract |cffffffff with your pet, and complete the |cfff0c800 Pets Merging |cffffffff or |cfff0c800Pet Rebirth|cffffffff processes.
]]
}

HelpSystem_SkillCofig[502] = {
Descrip=[[
The |cfff0c800Pet Manager|cffffffff in the main cities will help you sign a |cfff0c800Soul Contract|cffffffff with your pet.
1. Signing a Soul Contract can increase the fixed attributes of your pet.
2. Place the |cfff0c800Soul Spirit|cffffffff to stimulate potential attribute growth in your pet.
3. At most 5|cfff0c800Soul Spirits|cffffffff can be used.

|cffFFBBFF Note: When a new contract is signed, any previous ones will be removed and replaced by it.|cffffffff
]]
}


HelpSystem_SkillCofig[503] = {
Descrip=[[
The |cfff0c800Pet Manager|cffffffff in the main cities can help with |cfff0c800Pet Merging|cffffffff. Note the following:
1. Place two pets in, and the secondary pet will be sacrificed in the process.
2. Pets Merging can increase |cfff0c800 Pet Skills|cffffffff and Pet Savvy.
3. The primary pet and secondary pet must be |cfff0c800Lv. 30|cffffffff or above.
4. The secondary pet will play a significant role in the result of the merge.
5. The level of the primary pet |cfff0c800 does not |cffffffff effect the result of the merge.
6. An addition of |cfff0c800Merge Spirit|cffffffff would help the merge result.
7. At most 5|cfff0c800Merge Spirits|cffffffff can be used.

|cffFFBBFF Friendly Reminder: The secondary pet will be sacrificed in the process of pet merging. |cffffffff

]]
}

HelpSystem_SkillCofig[504] = {
Descrip=[[
The |cfff0c800Pet Manager|cffffffff in the main city can help with |cfff0c800Pet Rebirth|cffffffff. Note the following:
1. Reborn pets get accelerated growth (concealed).
2.The rebirth count determines the level requirements for being reborn again.                                  |cfff0c800The first rebirth requires lvl 50.                     The second one requires lvl 80.                        The third one requires lvl 100.                       The fourth one requires lvl 110.                       The fifth one and on require lvl 120.|cffffffff
3.  Reborn pets will start from|cfff0c800 Lvl 1|cffffffff with added Savvy values reset to |cfff0c800 0|cffffffff.
4. You have a choice to insert the |cfff0c800Rebirth Spirit|cffffffff to get additional value for your pet.
5. 5|cfff0c800Rebirth Spirits|cffffffff can be used at most.
6. The use of |cfff0c800Rebirth Spirits can |cffffffffincrease|cfff0c800 the remaining amount of rebirths allowed.

]]
}

HelpSystem_SkillCofig[505] = {
Descrip=[[
The |cfff0c800Pet Manager|cffffffff in the main city can help change the appearance of your pet.
1. Unbound pets do not qualify for an appearance change.
2. |cfff0c800Magic Jade|cffffffff can be used, at a price, to model a pet's appearance.
3. After successfully changing the appearance of your pet, it will be able to learn new skills.

]]
}

HelpSystem_SkillCofig[601] = {
Descrip=[[
The world of the God's contains the secrets of the profession skills |cfff0c800Alchemy, Blacksmithing, Mythcrafting and Scholarship|cffffffff.  The key to cracking these secrets is to possess the mysterious |cfff0c800 Profession Skillbook|cffffffff that corresponds to a particular skill. Try to find the |cfff0c800 Profession Mentor|cffffffff(100,-180) based in the main cities to learn one of the profession skills available.
Once you've mastered a profession skill, you can put it to use by bringing up the Manufacture UI. |cfff0c800[hotkey: V]|cffffffff.  Note: Creating a recipe is usually the first thing to do after mastering a profession skill.

|cff08D631 4 major professions|cffffffff
|cffFFBBFFAlchemy|cffffffff: Alchemists are able to provide a variety of battle-sustaining supplies, which includes (but is not limited to) all kinds of HP/MP potions, Sigil Stones that could be capable of AoE effects, and a series of buff potions beneficial to Exp/TP, and more.
|cffFFBBFFBlacksmithing|cffffffff: Blacksmiths can create mount gear and a variety of Soul Stones. Mount gear adds certain attributes to your mount, while Soul Stones are used to upgrade your mount to higher levels. Higher level mounts are matched with corresponding gear of higher levels.
|cffFFBBFFMythcrafting|cffffffff：Mythcrafters can tailor a range of fashionable suits and other fun items like the Holy Spirit, Fireworks, Firecrackers and Sacred Objects. Higher level fashion suits can even add bonus attributes to your character!
|cffFFBBFFScholarship|cffffffff: Scholars can create items the assist with the other three professions. They can also create gathering tools, quest scrolls, teleportation spells and other handy items.

|cff08D631How to get [Profession Skillbooks]|cffffffff
After reaching Lvl 70 there will be a main quest available that will reward an arcane |cfff0c800Profession Skillbook|cffffffff upon completion. (Open the quest log UI |cfff0c800[hotkey: Q]|cffffffff)
If the Skillbook is lost or destroyed by mistake, you might want to go talk with those  |cfff0c800Scholars|cffffffff, whose professional expertise allows them to create Profession Skillbooks.

|cff08D631Unlearning a Profession|cffffffff
Unhappy with your current profession? You may unlearn it and start a new one, but this will completely remove all traces of the former profession, including cfff0c800any skills or recipes|cffffffff associated with it. Please make sure this is acceptable before you unlearn a profession.
Again, go to the |cfff0c800Profession Mentor |cffffffff(100,-180) in the main cities to unlearn a profession. A |cfff0c800Profession Skillbook|cffffffff is then needed to acquire a new profession.

|cff08D631Activity Point|cffffffff
The Activity Points (AP) your character possesses will be lost gradually through gathering and manufacturing activities. At any time (whether in game or not) you are not performing these two activities, the total number of your AP will increase gradually. Note: In game recovery of AP is much faster than offline recovery.

|cff08D631Profession Exp|cffffffff
The only way to gain Profession Exp is to use recipes to obtain relevant goods. Recipes are ranked by level as well. Note: No Profession Exp will be rewarded for honing your profession skill on recipes whose level is too low.

|cff08D631 Profession level|cffffffff
Your Profession will be upgraded when the amount of Profession Exp grows to a certain level.  Note: Your Profession level corresponds with your characters level. If your character's level is too low, your Profession level may not increase much until the character's level is higher.

]]
}


HelpSystem_SkillCofig[602] = {
Descrip=[[
After you master a formula associated with |cfff0c800Alchemy, Blacksmithing, Mythcrafting or Scholarship|cffffffff, you can go on to bring up the Manufacture UI |cfff0c800[hotkey: V]|cffffffff and start manufacturing profession-associated recipes.

|cff08D631Recipe|cffffffff
The recipes that you have already mastered are displayed on the left side of the Manufacture UI.
Level 1-15 Recipes are available from the |cfff0c800Recipe Vendor|cffffffff(100,-180) in the main cities.
Note: The bottom left section shows the maximum number of recipes available for the Profession at its current level.

|cff08D631Activity Points|cffffffff
Displayed in the top section of the Manufacture UI.
The value on the left demonstrates your current Activity Points(AP), while the one on the right shows the max number that can be reached.  Your character's AP will decrease gradually as you engage in gathering and manufacturing activities, while when you are not engaged in these activities, it will increase gradually (whether or not you are in game). AP builds up faster when you are in game.

|cff08D631Profession Level/Exp|cffffffff
Profession status is displayed at the top right of the Manufacture UI.
The only way to gain Profession Exp is by repeatedly using recipes to produce goods. Recipes are marked with levels, and it should be noted that NO Profession Exp will be rewarded if you hone your profession skill on |cfff0c800 low level recipes |cffffffff. Also your Profession will be upgraded as the Profession Exp reaches certain levels.  One thing to note is that the level of your character also influences your Profession level. The Profession level requires a matching character level. Your Profession level cannot increase if |cfff0c800 your character's level is too low |cffffffff.

|cff08D631Recipe Formulation|cffffffff
The Recipe Formulation area is on the right side of the Manufacture UI.
Select a particular Recipe from the left see more about it.

|cff08D631Recipe Types|cffffffff
There are 4 different types of Recipes: Perpetual, Perpetual (periodic), Disposable and Disposable (periodic)
Perpetual: There is no restriction on the number of finished items that can be created with the recipe. There are also no time restrictions on the recipe. Most recipes fall into this category.
Perpetual (periodic): Only one item, obtained by using the recipe, can be produced at a time. There is also a fixed period before the next time that an item can be produced using the recipe.
Disposable: The recipe will be discarded after use.
Disposable (periodic): The recipe will be discarded after use, and there will be a fixed period of time before the recipe can be used again.

|cff08D631Profession Exp earned through the use of  Recipes|cffffffff
Every use of a recipe will earn you a certain amount of Profession Exp as long as the recipe's level is not too low compared with your Profession Level.

|cff08D631Ingredients|cffffffff
Each recipe has a list of required ingredients (usually no more than 4) displayed on the right side. The total number of ingredients in your bag and the amounts required for one use is also tallied and shown there.
View the tooltip of a particular ingredient for tips on how to obtain it.

|cff08D631[Manufacture]|cffffffff
The default manufacture number is the max number the recipe can manufacture at one time.  Click the [Manufacture] button to start. Fill in the number of items you want manufactured in the field next to the [Manufacture] button.

]]
}


HelpSystem_SkillCofig[603] = {
Descrip=[[
A Recipe usually involves a variety of ingredients. Read on to find the 4 major ways to obtain ingredients.

|cff08D631Gathering|cffffffff
Romance Island is an ideal place to gather up materials. Pick up the required tools and start gathering! Remember that the profession of |cfff0c800 Scholarship |cffffffff can be used to create gathering tools.
Opening Hours:
8:30pm-9:00pm, Wednesday;
8:30pm-9:00pm, Saturday;
4:30pm-5:00pm, Sunday
More gathering points will be introduced in the days to come. Please take note of this: gathering tools are subject to abrasion through use, and AP is to be consumed in the gathering activity. When the gathering tool is completely destroyed, or AP drops to zero, gathering tool will be terminated.

|cff08D631Ingredients Vendor|cffffffff
The |cfff0c800Ingredients Vendors|cffffffff(100,-180) in each of the main cities sell a full range of ingredients needed for recipes.

|cff08D631Recipe UI|cffffffff
Hovering the cursor over a particular ingredient will bring up more info on it, and will also indicate if you could create the Ingredient yourself.

|cff08D631Inter-Player Trading|cffffffff
If you cannot create the Ingredient yourself, try Trading with other players to get it.

]]
}






function Get_HelpSystem_SkillCofig(level)
	return HelpSystem_SkillCofig[level];
end




