local t = TransmogTokens;
local L = t.L;

t.INVENTORY_SLOTS = {
    ["INVTYPE_HEAD"] = {1},
    ["INVTYPE_SHOULDER"] = {3},
    ["INVTYPE_BODY"] = {4},
    ["INVTYPE_CHEST"] = {5},
    ["INVTYPE_ROBE"] = {5},
    ["INVTYPE_WAIST"] = {6},
    ["INVTYPE_LEGS"] = {7},
    ["INVTYPE_FEET"] = {8},
    ["INVTYPE_WRIST"] = {9},
    ["INVTYPE_HAND"] = {10},
    ["INVTYPE_CLOAK"] = {15},
    ["INVTYPE_WEAPON"] = {16, 17},
    ["INVTYPE_SHIELD"] = {17},
    ["INVTYPE_2HWEAPON"] = {16, 17},
    ["INVTYPE_WEAPONMAINHAND"] = 16,
    ["INVTYPE_RANGED"] = {16},
    ["INVTYPE_RANGEDRIGHT"] = {16},
    ["INVTYPE_WEAPONOFFHAND"] = {17},
    ["INVTYPE_HOLDABLE"] = {17},
	["INVTYPE_TABARD"] = false,
};

t.ARMOR_TYPE_PLATE = "PLATE";
t.ARMOR_TYPE_MAIL = "MAIL";
t.ARMOR_TYPE_CLOTH = "CLOTH";
t.ARMOR_TYPE_LEATHER = "LEATHER";
local PLATE, MAIL, LEATHER, CLOTH = t.ARMOR_TYPE_PLATE, t.ARMOR_TYPE_MAIL, t.ARMOR_TYPE_LEATHER, t.ARMOR_TYPE_CLOTH

local CLASS_WARRIOR = 1;
local CLASS_PALADIN = 2;
local CLASS_HUNTER = 3;
local CLASS_ROGUE = 4;
local CLASS_PRIEST = 5;
local CLASS_DEATHKNIGHT = 6;
local CLASS_SHAMAN = 7;
local CLASS_MAGE = 8;
local CLASS_WARLOCK = 9;
local CLASS_MONK = 10;
local CLASS_DRUID = 11;
local CLASS_DEMONHUNTER = 12;

t.CLASS_ITEM_TYPE = {
	[CLASS_WARRIOR] = PLATE,
	[CLASS_PALADIN] = PLATE,
	[CLASS_DEATHKNIGHT] = PLATE,
	[CLASS_MAGE] = CLOTH,
	[CLASS_WARLOCK] = CLOTH,
	[CLASS_PRIEST] = CLOTH,
	[CLASS_DRUID] = LEATHER,
	[CLASS_ROGUE] = LEATHER,
	[CLASS_MONK] = LEATHER,
	[CLASS_DEMONHUNTER] = LEATHER,
	[CLASS_HUNTER] = MAIL,
	[CLASS_SHAMAN] = MAIL,
};

local REDEEM_AQ_KEYL = 1
local REDEEM_AQ_HARO = 2
local REDEEM_AQ_ANDO = 3
local REDEEM_AQ_VETH = 4
local REDEEM_AQ_KAND = 5
local REDEEM_T4 = 40
local REDEEM_T5 = 50
local REDEEM_T6_SUNWELL = 61
local REDEEM_T6_SUNMOTE = 62
local REDEEM_T9 = 90
local REDEEM_T10 = 100
local REDEEM_T11 = 110
local REDEEM_T12_BOE = 121
local REDEEM_T14 = 140
local REDEEM_T15 = 150
local REDEEM_T16_LFR = 160
local REDEEM_T16_NM = 161
local REDEEM_T16_HM = 162
local REDEEM_T16_MM = 163
local REDEEM_T17 = 170

t.REDEEM_LOOKUP = {
	[REDEEM_AQ_KEYL] = L.REDEEM_LOOKUP["REDEEM_AQ_KEYL"],
	[REDEEM_AQ_HARO] = L.REDEEM_LOOKUP["REDEEM_AQ_HARO"],
	[REDEEM_AQ_ANDO] = L.REDEEM_LOOKUP["REDEEM_AQ_ANDO"],
	[REDEEM_AQ_VETH] = L.REDEEM_LOOKUP["REDEEM_AQ_VETH"],
	[REDEEM_AQ_KAND] = L.REDEEM_LOOKUP["REDEEM_AQ_KAND"],
	[REDEEM_T4] = L.REDEEM_LOOKUP["REDEEM_TIER_4"],
	[REDEEM_T5] = L.REDEEM_LOOKUP["REDEEM_TIER_5"],
	[REDEEM_T6_SUNWELL] = L.REDEEM_LOOKUP["REDEEM_TBC_TIER_6"],
	[REDEEM_T6_SUNMOTE] = L.REDEEM_LOOKUP["REDEEM_TBC_SUNMOTE"],
	[REDEEM_T12_BOE] = L.REDEEM_LOOKUP["REDEEM_FIRELANDS_BOE"],
	[REDEEM_T14] = L.REDEEM_LOOKUP["REDEEM_MOP_OXHEART"],
	[REDEEM_T15] = L.REDEEM_LOOKUP["REDEEM_TIER_15"],
}

t.ALLIANCE_REDEEM_LOOKUP = {
	[REDEEM_T9] = L.ALLIANCE_REDEEM_LOOKUP["REDEEM_TOC"],
	[REDEEM_T11] = L.ALLIANCE_REDEEM_LOOKUP["REDEEM_TIER_11"],
	[REDEEM_T16_LFR] = L.ALLIANCE_REDEEM_LOOKUP["REDEEM_TIER_16_LFR"],
	[REDEEM_T16_NM] = L.ALLIANCE_REDEEM_LOOKUP["REDEEM_TIER_16_NORMAL"],
	[REDEEM_T16_HM] = L.ALLIANCE_REDEEM_LOOKUP["REDEEM_TIER_16_HEROIC"],
	[REDEEM_T16_MM] = L.ALLIANCE_REDEEM_LOOKUP["REDEEM_TIER_16_MYTHIC"],
	[REDEEM_T17] = L.ALLIANCE_REDEEM_LOOKUP["REDEEM_TIER_17"],
}

t.HORDE_REDEEM_LOOKUP = {
	[REDEEM_T9] = L.HORDE_REDEEM_LOOKUP["REDEEM_TOC"],
	[REDEEM_T11] = L.HORDE_REDEEM_LOOKUP["REDEEM_TIER_11"],
	[REDEEM_T16_LFR] = L.HORDE_REDEEM_LOOKUP["REDEEM_TIER_16_LFR"],
	[REDEEM_T16_NM] = L.HORDE_REDEEM_LOOKUP["REDEEM_TIER_16_NORMAL"],
	[REDEEM_T16_HM] = L.HORDE_REDEEM_LOOKUP["REDEEM_TIER_16_HEROIC"],
	[REDEEM_T16_MM] = L.HORDE_REDEEM_LOOKUP["REDEEM_TIER_16_MYTHIC"],
	[REDEEM_T17] = L.HORDE_REDEEM_LOOKUP["REDEEM_TIER_17"],
}

t.CLASS_REDEEM_LOOKUP = {
	[CLASS_WARRIOR] = {
		[REDEEM_T10] = "Redeem: Crusader Grimtong @ Icecrown Citadel\nLocated in Light's Hammer",  -- ICC
	},
	[CLASS_PALADIN] = {
		[REDEEM_T10] = "Redeem: Crusader Halford @ Icecrown Citadel\nLocated in Light's Hammer",  -- ICC
	},
	[CLASS_DEATHKNIGHT] = {
		[REDEEM_T10] = "Redeem: Ormus the Penitent @ Icecrown Citadel\nLocated in Light's Hammer",  -- ICC
	},
	[CLASS_MAGE] = {
		[REDEEM_T10] = "Redeem: Malfus Grimfrost @ Icecrown Citadel\nLocated in Light's Hammer",  -- ICC
	},
	[CLASS_WARLOCK] = {
		[REDEEM_T10] = "Redeem: Niby the Almighty @ Icecrown Citadel\nLocated in Light's Hammer",  -- ICC
	},
	[CLASS_PRIEST] = {
		[REDEEM_T10] = "Redeem: Scott the Merciful @ Icecrown Citadel\nLocated in Light's Hammer",  -- ICC
	},
	[CLASS_DRUID] = {
		[REDEEM_T10] = "Redeem: Alana Moonstrike @ Icecrown Citadel\nLocated in Light's Hammer",  -- ICC
	},
	[CLASS_ROGUE] = {
		[REDEEM_T10] = "Redeem: Yili @ Icecrown Citadel\nLocated in Light's Hammer",  -- ICC
	},
	[CLASS_HUNTER] = {
		[REDEEM_T10] = "Redeem: Talan Moonstrike @ Icecrown Citadel\nLocated in Light's Hammer",  -- ICC
	},
	[CLASS_SHAMAN] = {
		[REDEEM_T10] = "Redeem: Jadebia @ Icecrown Citadel\nLocated in Light's Hammer",  -- ICC
	},
}

local SET_TIER_4 = 1
local SET_TIER_5 = 2
local SET_TIER_6 = 3
local SET_TIER_7 = 4
local SET_TIER_8 = 5
local SET_TIER_9 = 6
local SET_TIER_10 = 7

t.SET_INDEX = {
	SET_TIER_4 = "Tier 4 (TBC)", -- 1
	SET_TIER_5 = "Tier 5 (TBC)", -- 2
	SET_TIER_6 = "Tier 6 (TBC)", -- 3
	SET_TIER_7 = "Tier 7 (WotLK)", -- 4
	-- SET_TIER_8 = "Tier 8 (WotLK)", -- 5
	-- SET_TIER_9 = "Tier 9 (WotLK)", -- 6
	-- SET_TIER_10 = "Tier 10 (WotLK)", -- 7
};

local NO_USE = t.L["This token cannot be redeemed for anything."]

local REDEEM = "REDEEM"
local ITEMS = "ITEMS"
local BONUS = "BONUS"
local DUPLICATE_BONUS = "DUPLICATE_BONUS"
local OBTAIN = "OBTAIN"
local LINK = "LINK"
local NOTE = "NOTE"

local BALEFUL_WEP_1H_SWORD = 124624;
local BALEFUL_WEP_2H_SWORD = 124625;
local BALEFUL_WEP_GUN = 124626;
local BALEFUL_WEP_DAGGER = 124627;
local BALEFUL_WEP_1H_AXE = 124628;
local BALEFUL_WEP_POLEARM = 124629;
local BALEFUL_WEP_STAFF = 124630;
local BALEFUL_WEP_1H_MACE = 124631;

local TIER_17_HEROIC = 566;
local TIER_17_MYTHIC = 567;

local TIER_17_BONUS_LOOKUP = {
	[570] = TIER_17_HEROIC, -- Heroic
	[569] = TIER_17_MYTHIC, -- Mythic
};

local TIER_18_BONUS_LOOKUP = {
	[570] = 1798, -- Heroic
	[569] = 1799, -- Mythic
};

local TIER_19_BONUS_LOOKUP = {
	[570] = 3516, -- Heroic
	[569] = 3518, -- Mythic
};

local TIER_20_BONUS_LOOKUP = {
	[570] = 3562, -- Heroic
	[596] = 3563, -- Mythic
};

local TIER_21_BONUS_LOOKUP = {
	[570] = 3611, -- Heroic
	[569] = 3612, -- Mythic
}; 

t.AQ_DATA = {
	[CLASS_DRUID] = {
		[21409] = { -- Cloak of Unending Life
			[ITEMS] = {
				[20889] = 1, -- Qiraji Regal Drape
				[20872] = 2, -- Vermillion Idol
				[20864] = 5, -- Bone Scarab
				[20860] = 5, -- Silver Scarab
			},
			[REDEEM] = REDEEM_AQ_KEYL
		},
		[21354] = { -- Genesis Shoulderpads
			[ITEMS] = {
				[20932] = 1, -- Qiraji Bindings of Dominance
				[20881] = 2, -- Idol of Strife
				[20859] = 5, -- Gold Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21357] = { -- Genesis Vest
			[ITEMS] = {
				[20933] = 1, -- Husk of the Old God
				[20878] = 2, -- Idol of Rebirth
				[20861] = 5, -- Bronze Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_VETH
		},
		[21407] = { -- Mace of Unending Life
			[ITEMS] = {
				[20890] = 1, -- Qiraji Ornate Hilt
				[20870] = 2, -- Jasper Idol
				[20862] = 5, -- Crystal Scarab
				[20858] = 5, -- Stone Scarab
			},
			[REDEEM] = REDEEM_AQ_HARO
		},
		[21356] = { -- Genesis Trousers
			[ITEMS] = {
				[20931] = 1, -- Skin of the Great Sandworm
				[20882] = 2, -- Idol of War
				[20858] = 5, -- Stone Scarab
				[20862] = 5, -- Crystal Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21353] = { -- Genesis Helm
			[ITEMS] = {
				[20930] = 1, -- Vek'lor's Diadem
				[20879] = 2, -- Idol of Life
				[20859] = 5, -- Gold Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21355] = { -- Genesis Boots
			[ITEMS] = {
				[20932] = 1, -- Qiraji Bindings of Dominance
				[20878] = 2, -- Idol of Rebirth
				[20858] = 5, -- Stone Scarab
				[20860] = 5, -- Silver Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
	},

	[CLASS_HUNTER] = {
		[21401] = { -- Scythe of the Unseen Path
			[ITEMS] = {
				[20886] = 1, -- Qiraji Spiked Hilt
				[20866] = 2, -- Azure Idol
				[20860] = 5, -- Silver Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_HARO
		},
		[21365] = { -- Striker's Footguards
			[ITEMS] = {
				[20928] = 1, -- Qiraji Bindings of Command
				[20879] = 2, -- Idol of Life
				[20858] = 5, -- Stone Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21368] = { -- Striker's Leggings
			[ITEMS] = {
				[20931] = 1, -- Skin of the Great Sandworm
				[20874] = 2, -- Idol of the Sun
				[20860] = 5, -- Silver Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21366] = { -- Striker's Diadem
			[ITEMS] = {
				[20930] = 1, -- Vek'lor's Diadem
				[20881] = 2, -- Idol of Strife
				[20861] = 5, -- Bronze Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21403] = { -- Cloak of the Unseen Path
			[ITEMS] = {
				[20889] = 1, -- Qiraji Regal Drape
				[20868] = 2, -- Lambent Idol
				[20858] = 5, -- Stone Scarab
				[20862] = 5, -- Crystal Scarab
			},
			[REDEEM] = REDEEM_AQ_KEYL
		},
		[21367] = { -- Striker's Pauldrons
			[ITEMS] = {
				[20928] = 1, -- Qiraji Bindings of Command
				[20882] = 2, -- Idol of War
				[20862] = 5, -- Crystal Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21370] = { -- Striker's Hauberk
			[ITEMS] = {
				[20929] = 1, -- Carapace of the Old God
				[20879] = 2, -- Idol of Life
				[20859] = 5, -- Gold Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_VETH
		},
	},

	[CLASS_MAGE] = {
		[21413] = { -- Blade of Vaulted Secrets
			[ITEMS] = {
				[20890] = 1, -- Qiraji Ornate Hilt
				[20871] = 2, -- Obsidian Idol
				[20860] = 5, -- Silver Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_HARO
		},
		[21346] = { -- Enigma Leggings
			[ITEMS] = {
				[20927] = 1, -- Ouro's Intact Hide
				[20877] = 2, -- Idol of the Sage
				[20860] = 5, -- Silver Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21347] = { -- Enigma Circlet
			[ITEMS] = {
				[20926] = 1, -- Vek'nilash's Circlet
				[20875] = 2, -- Idol of Night
				[20861] = 5, -- Bronze Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21345] = { -- Enigma Shoulderpads
			[ITEMS] = {
				[20932] = 1, -- Qiraji Bindings of Dominance
				[20876] = 2, -- Idol of Death
				[20858] = 5, -- Stone Scarab
				[20861] = 5, -- Bronze Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21415] = { -- Drape of Vaulted Secrets
			[ITEMS] = {
				[20885] = 1, -- Qiraji Martial Drape
				[20873] = 2, -- Alabaster Idol
				[20858] = 5, -- Stone Scarab
				[20862] = 5, -- Crystal Scarab
			},
			[REDEEM] = REDEEM_AQ_KEYL
		},
		[21344] = { -- Enigma Boots
			[ITEMS] = {
				[20932] = 1, -- Qiraji Bindings of Dominance
				[20874] = 2, -- Idol of the Sun
				[20860] = 5, -- Silver Scarab
				[20862] = 5, -- Crystal Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21343] = { -- Enigma Robes
			[ITEMS] = {
				[20933] = 1, -- Husk of the Old God
				[20874] = 2, -- Idol of the Sun
				[20859] = 5, -- Gold Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_VETH
		},
	},

	[CLASS_PALADIN] = {
		[21389] = { -- Avenger's Breastplate
			[ITEMS] = {
				[20929] = 1, -- Carapace of the Old God
				[20877] = 2, -- Idol of the Sage
				[20860] = 5, -- Silver Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_VETH
		},
		[21395] = { -- Blade of Eternal Justice
			[ITEMS] = {
				[20886] = 1, -- Qiraji Spiked Hilt
				[20869] = 2, -- Amber Idol
				[20861] = 5, -- Bronze Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_HARO
		},
		[21388] = { -- Avenger's Greaves
			[ITEMS] = {
				[20932] = 1, -- Qiraji Bindings of Dominance
				[20877] = 2, -- Idol of the Sage
				[20861] = 5, -- Bronze Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21390] = { -- Avenger's Legguards
			[ITEMS] = {
				[20931] = 1, -- Skin of the Great Sandworm
				[20881] = 2, -- Idol of Strife
				[20865] = 5, -- Ivory Scarab
				[20861] = 5, -- Bronze Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21387] = { -- Avenger's Crown
			[ITEMS] = {
				[20930] = 1, -- Vek'lor's Diadem
				[20878] = 2, -- Idol of Rebirth
				[20858] = 5, -- Stone Scarab
				[20862] = 5, -- Crystal Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21391] = { -- Avenger's Pauldrons
			[ITEMS] = {
				[20932] = 1, -- Qiraji Bindings of Dominance
				[20879] = 2, -- Idol of Life
				[20859] = 5, -- Gold Scarab
				[20862] = 5, -- Crystal Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21397] = { -- Cape of Eternal Justice
			[ITEMS] = {
				[20889] = 1, -- Qiraji Regal Drape
				[20871] = 2, -- Obsidian Idol
				[20859] = 5, -- Gold Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_KEYL
		},
	},

	[CLASS_PRIEST] = {
		[21348] = { -- Tiara of the Oracle
			[ITEMS] = {
				[20926] = 1, -- Vek'nilash's Circlet
				[20877] = 2, -- Idol of the Sage
				[20860] = 5, -- Silver Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21410] = { -- Gavel of Infinite Wisdom
			[ITEMS] = {
				[20890] = 1, -- Qiraji Ornate Hilt
				[20868] = 2, -- Lambent Idol
				[20861] = 5, -- Bronze Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_HARO
		},
		[21349] = { -- Footwraps of the Oracle
			[ITEMS] = {
				[20928] = 1, -- Qiraji Bindings of Command
				[20876] = 2, -- Idol of Death
				[20861] = 5, -- Bronze Scarab
				[20859] = 5, -- Gold Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21351] = { -- Vestments of the Oracle
			[ITEMS] = {
				[20933] = 1, -- Husk of the Old God
				[20876] = 2, -- Idol of Death
				[20858] = 5, -- Stone Scarab
				[20862] = 5, -- Crystal Scarab
			},
			[REDEEM] = REDEEM_AQ_VETH
		},
		[21412] = { -- Shroud of Infinite Wisdom
			[ITEMS] = {
				[20885] = 1, -- Qiraji Martial Drape
				[20870] = 2, -- Jasper Idol
				[20859] = 5, -- Gold Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_KEYL
		},
		[21352] = { -- Trousers of the Oracle
			[ITEMS] = {
				[20927] = 1, -- Ouro's Intact Hide
				[20879] = 2, -- Idol of Life
				[20859] = 5, -- Gold Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21350] = { -- Mantle of the Oracle
			[ITEMS] = {
				[20928] = 1, -- Qiraji Bindings of Command
				[20878] = 2, -- Idol of Rebirth
				[20860] = 5, -- Silver Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
	},

	[CLASS_ROGUE] = {
		[21359] = { -- Deathdealer's Boots
			[ITEMS] = {
				[20928] = 1, -- Qiraji Bindings of Command
				[20881] = 2, -- Idol of Strife
				[20862] = 5, -- Crystal Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21406] = { -- Cloak of Veiled Shadows
			[ITEMS] = {
				[20885] = 1, -- Qiraji Martial Drape
				[20866] = 2, -- Azure Idol
				[20861] = 5, -- Bronze Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_KEYL
		},
		[21364] = { -- Deathdealer's Vest
			[ITEMS] = {
				[20929] = 1, -- Carapace of the Old God
				[20881] = 2, -- Idol of Strife
				[20861] = 5, -- Bronze Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_VETH
		},
		[21362] = { -- Deathdealer's Leggings
			[ITEMS] = {
				[20927] = 1, -- Ouro's Intact Hide
				[20875] = 2, -- Idol of Night
				[20858] = 5, -- Stone Scarab
				[20862] = 5, -- Crystal Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21404] = { -- Dagger of Veiled Shadows
			[ITEMS] = {
				[20886] = 1, -- Qiraji Spiked Hilt
				[20872] = 2, -- Vermillion Idol
				[20859] = 5, -- Gold Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_HARO
		},
		[21360] = { -- Deathdealer's Helm
			[ITEMS] = {
				[20930] = 1, -- Vek'lor's Diadem
				[20882] = 2, -- Idol of War
				[20863] = 5, -- Clay Scarab
				[20859] = 5, -- Gold Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21361] = { -- Deathdealer's Spaulders
			[ITEMS] = {
				[20928] = 1, -- Qiraji Bindings of Command
				[20874] = 2, -- Idol of the Sun
				[20860] = 5, -- Silver Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
	},

	[CLASS_SHAMAN] = {
		[21374] = { -- Stormcaller's Hauberk
			[ITEMS] = {
				[20929] = 1, -- Carapace of the Old God
				[20877] = 2, -- Idol of the Sage
				[20860] = 5, -- Silver Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_VETH
		},
		[21398] = { -- Hammer of the Gathering Storm
			[ITEMS] = {
				[20886] = 1, -- Qiraji Spiked Hilt
				[20869] = 2, -- Amber Idol
				[20861] = 5, -- Bronze Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_HARO
		},
		[21373] = { -- Stormcaller's Footguards
			[ITEMS] = {
				[20932] = 1, -- Qiraji Bindings of Dominance
				[20877] = 2, -- Idol of the Sage
				[20861] = 5, -- Bronze Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21375] = { -- Stormcaller's Leggings
			[ITEMS] = {
				[20931] = 1, -- Skin of the Great Sandworm
				[20881] = 2, -- Idol of Strife
				[20865] = 5, -- Ivory Scarab
				[20861] = 5, -- Bronze Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21372] = { -- Stormcaller's Diadem
			[ITEMS] = {
				[20930] = 1, -- Vek'lor's Diadem
				[20878] = 2, -- Idol of Rebirth
				[20858] = 5, -- Stone Scarab
				[20862] = 5, -- Crystal Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21376] = { -- Stormcaller's Pauldrons
			[ITEMS] = {
				[20932] = 1, -- Qiraji Bindings of Dominance
				[20879] = 2, -- Idol of Life
				[20859] = 5, -- Gold Scarab
				[20862] = 5, -- Crystal Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21400] = { -- Cloak of the Gathering Storm
			[ITEMS] = {
				[20889] = 1, -- Qiraji Regal Drape
				[20871] = 2, -- Obsidian Idol
				[20863] = 5, -- Clay Scarab
				[20859] = 5, -- Gold Scarab
			},
			[REDEEM] = REDEEM_AQ_KEYL
		},
	},

	[CLASS_WARLOCK] = {
		[21337] = { -- Doomcaller's Circlet
			[ITEMS] = {
				[20926] = 1, -- Vek'nilash's Circlet
				[20876] = 2, -- Idol of Death
				[20860] = 5, -- Silver Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21335] = { -- Doomcaller's Mantle
			[ITEMS] = {
				[20932] = 1, -- Qiraji Bindings of Dominance
				[20877] = 2, -- Idol of the Sage
				[20861] = 5, -- Bronze Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21418] = { -- Shroud of Unspoken Names
			[ITEMS] = {
				[20889] = 1, -- Qiraji Regal Drape
				[20869] = 2, -- Amber Idol
				[20861] = 5, -- Bronze Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_KEYL
		},
		[21334] = { -- Doomcaller's Robes
			[ITEMS] = {
				[20933] = 1, -- Husk of the Old God
				[20875] = 2, -- Idol of Night
				[20862] = 5, -- Crystal Scarab
				[20858] = 5, -- Stone Scarab
			},
			[REDEEM] = REDEEM_AQ_VETH
		},
		[21416] = { -- Kris of Unspoken Names
			[ITEMS] = {
				[20890] = 1, -- Qiraji Ornate Hilt
				[20867] = 2, -- Onyx Idol
				[20859] = 5, -- Gold Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_HARO
		},
		[21336] = { -- Doomcaller's Trousers
			[ITEMS] = {
				[20931] = 1, -- Skin of the Great Sandworm
				[20878] = 2, -- Idol of Rebirth
				[20859] = 5, -- Gold Scarab
				[20863] = 5, -- Clay Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21338] = { -- Doomcaller's Footwraps
			[ITEMS] = {
				[20932] = 1, -- Qiraji Bindings of Dominance
				[20875] = 2, -- Idol of Night
				[20863] = 5, -- Clay Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
	},

	[CLASS_WARRIOR] = {
		[21394] = { -- Drape of Unyielding Strength
			[ITEMS] = {
				[20885] = 1, -- Qiraji Martial Drape
				[20867] = 2, -- Onyx Idol
				[20864] = 5, -- Bone Scarab
				[20860] = 5, -- Silver Scarab
			},
			[REDEEM] = REDEEM_AQ_KEYL
		},
		[21331] = { -- Conqueror's Breastplate
			[ITEMS] = {
				[20929] = 1, -- Carapace of the Old God
				[20882] = 2, -- Idol of War
				[20860] = 5, -- Silver Scarab
				[20864] = 5, -- Bone Scarab
			},
			[REDEEM] = REDEEM_AQ_VETH
		},
		[21332] = { -- Conqueror's Legguards
			[ITEMS] = {
				[20927] = 1, -- Ouro's Intact Hide
				[20876] = 2, -- Idol of Death
				[20861] = 5, -- Bronze Scarab
				[20865] = 5, -- Ivory Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
		[21392] = { -- Sickle of Unyielding Strength
			[ITEMS] = {
				[20886] = 1, -- Qiraji Spiked Hilt
				[20873] = 2, -- Alabaster Idol
				[20862] = 5, -- Crystal Scarab
				[20858] = 5, -- Stone Scarab
			},
			[REDEEM] = REDEEM_AQ_HARO
		},
		[21329] = { -- Conqueror's Crown
			[ITEMS] = {
				[20926] = 1, -- Vek'nilash's Circlet
				[20874] = 2, -- Idol of the Sun
				[20862] = 5, -- Crystal Scarab
				[20858] = 5, -- Stone Scarab
			},
			[REDEEM] = REDEEM_AQ_ANDO
		},
		[21333] = { -- Conqueror's Greaves
			[ITEMS] = {
				[20928] = 1, -- Qiraji Bindings of Command
				[20882] = 2, -- Idol of War
				[20865] = 5, -- Ivory Scarab
				[20859] = 5, -- Gold Scarab
			},
			[REDEEM] = REDEEM_AQ_KAND
		},
	},
};

t.ITEM_DATA = {
	--[[ TIER 4 (Gruul, Mag, Kara) 
	[29761] = { -- Helm of the Fallen Defender [Malchezaar]
		[OBTAIN] = {SET_TIER_4, "Prince Malchezaar (Karazhan)"},
		[REDEEM] = REDEEM_T4,
		[CLASS_WARRIOR] = {24545, 29021, 29011},
		[CLASS_PRIEST] = {27708, 31410, 29049, 29058},
		[CLASS_DRUID] = {28137, 31376, 28127, 29098, 29086, 29093},
	},
	[29764] = { -- Pauldrons of the Fallen Defender [Maulgar]
		[OBTAIN] = {SET_TIER_4, "High King Maulgar (Gruul's Lair)"},
		[REDEEM] = REDEEM_T4,
		[CLASS_WARRIOR] = {24546, 29023, 29016},
		[CLASS_PRIEST] = {31412, 27710, 29054, 29060},
		[CLASS_DRUID] = {28129, 28139, 31378, 29100, 29089, 29095},
	},
	[29753] = { -- Chestguard of the Fallen Defender [Magtheridon]
		[OBTAIN] = {SET_TIER_4, "Magtheridon (Magtheridon's Lair)"},
		[REDEEM] = REDEEM_T4,
		[CLASS_WARRIOR] = {24544, 29019, 29012},
		[CLASS_PRIEST] = {31413, 27711, 29050, 29056},
		[CLASS_DRUID] = {28130, 28140, 31379, 29096, 29087, 29091},
	},
	[29758] = { -- Gloves of the Fallen Defender [Curator]
		[OBTAIN] = {SET_TIER_4, "The Curator (Karazhan)"},
		[REDEEM] = REDEEM_T4,
		[CLASS_WARRIOR] = {24549, 29020, 29017},
		[CLASS_PRIEST] = {27707, 31409, 29055, 29057},
		[CLASS_DRUID] = {31375, 28126, 28136, 29097, 29090, 29092},
	},
	[29767] = { -- Leggings of the Fallen Defender [Gruul]
		[OBTAIN] = {SET_TIER_4, "Gruul (Gruul's Lair)"},
		[REDEEM] = REDEEM_T4,
		[CLASS_WARRIOR] = {24547, 29022, 29015},
		[CLASS_PRIEST] = {31411, 27709, 29053, 29059},
		[CLASS_DRUID] = {28128, 28138, 31377, 29099, 29088, 29094},
	},
	
	[29760] = { -- Helm of the Fallen Champion [Malchezaar]
		[OBTAIN] = {SET_TIER_4, "Prince Malchezaar (Karazhan)"},
		[REDEEM] = REDEEM_T4,
		[CLASS_PALADIN] = {27704, 27881, 31616, 29073, 29061, 29068},
		[CLASS_ROGUE] = {25830, 29044},
		[CLASS_SHAMAN] = {27471, 31400, 25998, 29035, 29040, 29028},
	},
	[29763] = { -- Pauldrons of the Fallen Champion [Maulgar]
		[OBTAIN] = {SET_TIER_4, "High King Maulgar (Gruul's Lair)"},
		[REDEEM] = REDEEM_T4,
		[CLASS_PALADIN] = {31619, 27706, 27883, 29075, 29064, 29070},
		[CLASS_ROGUE] = {25832, 29047},
		[CLASS_SHAMAN] = {25999, 27473, 31407, 29037, 29043, 29031},
	},
	[29754] = { -- Chestguard of the Fallen Champion [Magtheridon]
		[OBTAIN] = {SET_TIER_4, "Magtheridon (Magtheridon's Lair)"},
		[REDEEM] = REDEEM_T4,
		[CLASS_PALADIN] = {31613, 27702, 27879, 29071, 29062, 29066},
		[CLASS_ROGUE] = {25831, 29045},
		[CLASS_SHAMAN] = {25997, 27469, 31396, 29033, 29038, 29029},
	},
	[29757] = { -- Gloves of the Fallen Champion [Curator]
		[OBTAIN] = {SET_TIER_4, "The Curator (Karazhan)"},
		[REDEEM] = REDEEM_T4,
		[CLASS_PALADIN] = {27703, 27880, 31614, 29072, 29065, 29067},
		[CLASS_ROGUE] = {25834, 29048},
		[CLASS_SHAMAN] = {31397, 26000, 27470, 29034, 29039, 29032},
	},
	[29766] = { -- Leggings of the Fallen Champion [Gruul]
		[OBTAIN] = {SET_TIER_4, "Gruul (Gruul's Lair)"},
		[REDEEM] = REDEEM_T4,
		[CLASS_PALADIN] = {31618, 27705, 27882, 29074, 29063, 29069},
		[CLASS_ROGUE] = {25833, 29046},
		[CLASS_SHAMAN] = {26001, 27472, 31406, 29036, 29042, 29030},
	},
	
	[29759] = { -- Helm of the Fallen Hero [Malchezaar]
		[OBTAIN] = {SET_TIER_4, "Prince Malchezaar (Karazhan)"},
		[REDEEM] = REDEEM_T4,
		[CLASS_HUNTER] = {28331, 29081},
		[CLASS_MAGE] = {25855, 29076},
		[CLASS_WARLOCK] = {24553, 30187, 28963},
	},
	[29762] = { -- Pauldrons of the Fallen Hero [Maulgar]
		[OBTAIN] = {SET_TIER_4, "High King Maulgar (Gruul's Lair)"},
		[REDEEM] = REDEEM_T4,
		[CLASS_HUNTER] = {28333, 29084},
		[CLASS_MAGE] = {25854, 29079},
		[CLASS_WARLOCK] = {24554, 30186, 28967},
	},
	[29755] = { -- Chestguard of the Fallen Hero [Magtheridon]
		[OBTAIN] = {SET_TIER_4, "Magtheridon (Magtheridon's Lair)"},
		[REDEEM] = REDEEM_T4,
		[CLASS_HUNTER] = {28334, 29082},
		[CLASS_MAGE] = {25856, 29077},
		[CLASS_WARLOCK] = {24552, 30200, 28964},
	},
	[29756] = { -- Gloves of the Fallen Hero [Curator]
		[OBTAIN] = {SET_TIER_4, "The Curator (Karazhan)"},
		[REDEEM] = REDEEM_T4,
		[CLASS_HUNTER] = {28335, 29085},
		[CLASS_MAGE] = {25857, 29080},
		[CLASS_WARLOCK] = {24556, 30188, 28968},
	},
	[29765] = { -- Leggings of the Fallen Hero [Gruul]
		[OBTAIN] = {SET_TIER_4, "Gruul (Gruul's Lair)"},
		[REDEEM] = REDEEM_T4,
		[CLASS_HUNTER] = {28332, 29083},
		[CLASS_MAGE] = {25858, 29078},
		[CLASS_WARLOCK] = {30201, 24555, 28966},
	},
	--]]
	
	--[[ TIER 5 (TK, SSC) 
	[30242] = { -- Helm of the Vanquished Champion [Vashj]
		[OBTAIN] = {SET_TIER_5, "Lady Vashj (Serpentshrine Cavern)"},
		[REDEEM] = REDEEM_T5,
		[CLASS_PALADIN] = {31997, 32022, 32041, 30131, 30136, 30125},
		[CLASS_ROGUE] = {31999, 30146},
		[CLASS_SHAMAN] = {32006, 32011, 32031, 30190, 30166, 30171},
	},
	[30248] = { -- Pauldrons of the Vanquished Champion [Void Reaver]
		[OBTAIN] = {SET_TIER_5, "Void Reaver (The Eye)"},
		[REDEEM] = REDEEM_T5,
		[CLASS_PALADIN] = {31996, 32024, 32043, 30133, 30138, 30127},
		[CLASS_ROGUE] = {32001, 30149},
		[CLASS_SHAMAN] = {32008, 32013, 32033, 30194, 30168, 30173},
	},
	[30236] = { -- Chestguard of the Vanquished Champion [Kael'thas]
		[OBTAIN] = {SET_TIER_5, "Kael'thas Sunstrider (The Eye)"},
		[REDEEM] = REDEEM_T5,
		[CLASS_PALADIN] = {32020, 32039, 31992, 30129, 30134, 30123},
		[CLASS_ROGUE] = {32002, 30144},
		[CLASS_SHAMAN] = {32009, 32029, 32004, 30185, 30164, 30169},
	},
	[30239] = { -- Gloves of the Vanquished Champion [Leotheras]
		[OBTAIN] = {SET_TIER_5, "Leotheras the Blind (Serpentshrine Cavern)"},
		[REDEEM] = REDEEM_T5,
		[CLASS_PALADIN] = {31993, 32021, 32040, 30130, 30135, 30124},
		[CLASS_ROGUE] = {31998, 30145},
		[CLASS_SHAMAN] = {32005, 32010, 32030, 30189, 30165, 30170},
	},
	[30245] = { -- Leggings of the Vanquished Champion [Karathress]
		[OBTAIN] = {SET_TIER_5, "Fathom-Lord Karathress (Serpentshrine Cavern)"},
		[REDEEM] = REDEEM_T5,
		[CLASS_PALADIN] = {31995, 32023, 32042, 30132, 30137, 30126},
		[CLASS_ROGUE] = {32000, 30148},
		[CLASS_SHAMAN] = {32032, 32007, 32012, 30192, 30167, 30172},
	},
	
	[30243] = { -- Helm of the Vanquished Defender [Vashj]
		[OBTAIN] = {SET_TIER_5, "Lady Vashj (Serpentshrine Cavern)"},
		[REDEEM] = REDEEM_T5,
		[CLASS_WARRIOR] = {30488, 30120, 30115},
		[CLASS_PRIEST] = {32016, 32035, 30152, 30161},
		[CLASS_DRUID] = {32057, 31968, 31988, 30233, 30219, 30228},
	},
	[30249] = { -- Pauldrons of the Vanquished Defender [Void Reaver]
		[OBTAIN] = {SET_TIER_5, "Void Reaver (The Eye)"},
		[REDEEM] = REDEEM_T5,
		[CLASS_WARRIOR] = {30490, 30117, 30122},
		[CLASS_PRIEST] = {32018, 32037, 30154, 30163},
		[CLASS_DRUID] = {31990, 32059, 31971, 30221, 30230, 30235},
	},
	[30237] = { -- Chestguard of the Vanquished Defender [Kael'thas]
		[OBTAIN] = {SET_TIER_5, "Kael'thas Sunstrider (The Eye)"},
		[REDEEM] = REDEEM_T5,
		[CLASS_WARRIOR] = {30486, 30118, 30113},
		[CLASS_PRIEST] = {32019, 32038, 30150, 30159},
		[CLASS_DRUID] = {31991, 32060, 31972, 30231, 30216, 30222},
	},
	[30240] = { -- Gloves of the Vanquished Defender [Leotheras]
		[OBTAIN] = {SET_TIER_5, "Leotheras the Blind (Serpentshrine Cavern)"},
		[REDEEM] = REDEEM_T5,
		[CLASS_WARRIOR] = {30487, 30119, 30114},
		[CLASS_PRIEST] = {32015, 32034, 30151, 30160},
		[CLASS_DRUID] = {31987, 32056, 31967, 30232, 30217, 30223},
	},
	[30246] = { -- Leggings of the Vanquished Defender [Karathress]
		[OBTAIN] = {SET_TIER_5, "Fathom-Lord Karathress (Serpentshrine Cavern)"},
		[REDEEM] = REDEEM_T5,
		[CLASS_WARRIOR] = {30489, 30121, 30116},
		[CLASS_PRIEST] = {32017, 32036, 30153, 30162},
		[CLASS_DRUID] = {31989, 32058, 31969, 30234, 30220, 30229},
	},
	
	[30244] = { -- Helm of the Vanquished Hero [Vashj]
		[OBTAIN] = {SET_TIER_5, "Lady Vashj (Serpentshrine Cavern)"},
		[REDEEM] = REDEEM_T5,
		[CLASS_HUNTER] = {31962, 30141},
		[CLASS_MAGE] = {32048, 30206},
		[CLASS_WARLOCK] = {31974, 31980, 30212},
	},
	[30250] = { -- Pauldrons of the Vanquished Hero [Void Reaver]
		[OBTAIN] = {SET_TIER_5, "Void Reaver (The Eye)"},
		[REDEEM] = REDEEM_T5,
		[CLASS_HUNTER] = {31964, 30143},
		[CLASS_MAGE] = {32047, 30210},
		[CLASS_WARLOCK] = {31976, 31979, 30215},
	},
	[30238] = { -- Chestguard of the Vanquished Hero [Kael'thas]
		[OBTAIN] = {SET_TIER_5, "Kael'thas Sunstrider (The Eye)"},
		[REDEEM] = REDEEM_T5,
		[CLASS_HUNTER] = {31960, 30139},
		[CLASS_MAGE] = {32050, 30196},
		[CLASS_WARLOCK] = {31977, 31982, 30214},
	},
	[30241] = { -- Gloves of the Vanquished Hero [Leotheras]
		[OBTAIN] = {SET_TIER_5, "Leotheras the Blind (Serpentshrine Cavern)"},
		[REDEEM] = REDEEM_T5,
		[CLASS_HUNTER] = {31961, 30140},
		[CLASS_MAGE] = {32049, 30205},
		[CLASS_WARLOCK] = {31973, 31981, 30211},
	},
	[30247] = { -- Leggings of the Vanquished Hero [Karathress]
		[OBTAIN] = {SET_TIER_5, "Fathom-Lord Karathress (Serpentshrine Cavern)"},
		[REDEEM] = REDEEM_T5,
		[CLASS_HUNTER] = {31963, 30142},
		[CLASS_MAGE] = {32051, 30207},
		[CLASS_WARLOCK] = {31975, 31983, 30213},
	},
	--]]
	
	--[[ TIER 6 + SUNWELL (Hyjal, BT, SWP) 
	[31097] = { -- Helm of the Forgotten Conqueror [Archimonde]
		[OBTAIN] = {SET_TIER_6, "Archimonde (Hyjal Summit)"},
		[CLASS_PALADIN] = {30987, 30989, 30988, 32041, 31997, 32022},
		[CLASS_PRIEST] = {31063, 31064, 32016, 32035},
		[CLASS_WARLOCK] = {31051, 31980, 31974},
	},
	[31101] = { -- Pauldrons of the Forgotten Conqueror [Mother Shahraz]
		[OBTAIN] = {SET_TIER_6, "Mother Shahraz (Black Temple)"},
		[CLASS_PALADIN] = {30996, 30998, 30997, 32043, 31996, 32024},
		[CLASS_PRIEST] = {31069, 31070, 32018, 32037},
		[CLASS_WARLOCK] = {31054, 31979, 31976},
	},
	[31089] = { -- Chestguard of the Forgotten Conqueror [Illidan]
		[OBTAIN] = {SET_TIER_6, "Illidan Stormrage (Black Temple)"},
		[CLASS_PALADIN] = {30990, 30992, 30991, 32039, 31992, 32020},
		[CLASS_PRIEST] = {31065, 31066, 32019, 32038},
		[CLASS_WARLOCK] = {31052, 31982, 31977},
	},
	[31092] = { -- Gloves of the Forgotten Conqueror [Azgalor]
		[OBTAIN] = {SET_TIER_6, "Azgalor (Hyjal Summit)"},
		[CLASS_PALADIN] = {30982, 30985, 30983, 32021, 32040, 31993},
		[CLASS_PRIEST] = {31060, 31061, 32015, 32034},
		[CLASS_WARLOCK] = {31050, 31981, 31973},
	},
	[31098] = { -- Leggings of the Forgotten Conqueror [Illidari Council]
		[OBTAIN] = {SET_TIER_6, "The Illidari Council (Black Temple)"},
		[CLASS_PALADIN] = {30993, 30995, 30994, 32042, 31995, 32023},
		[CLASS_PRIEST] = {31067, 31068, 32017, 32036},
		[CLASS_WARLOCK] = {31053, 31983, 31975},
	},
	
	[31096] = { -- Helm of the Forgotten Vanquisher [Archimonde]
		[OBTAIN] = {SET_TIER_6, "Archimonde (Hyjal Summit)"},
		[CLASS_ROGUE] = {31027, 31999},
		[CLASS_MAGE] = {31056, 32048},
		[CLASS_DRUID] = {31037, 31039, 31040, 31968, 31988, 32057},
	},
	[31102] = { -- Pauldrons of the Forgotten Vanquisher [Mother Shahraz]
		[OBTAIN] = {SET_TIER_6, "Mother Shahraz (Black Temple)"},
		[CLASS_ROGUE] = {31030, 32001},
		[CLASS_MAGE] = {31059, 32047},
		[CLASS_DRUID] = {31047, 31048, 31049, 32059, 31971, 31990},
	},
	[31090] = { -- Chestguard of the Forgotten Vanquisher [Illidan]
		[OBTAIN] = {SET_TIER_6, "Illidan Stormrage (Black Temple)"},
		[CLASS_ROGUE] = {31028, 32002},
		[CLASS_MAGE] = {31057, 32050},
		[CLASS_DRUID] = {31041, 31042, 31043, 31972, 31991, 32060},
	},
	[31093] = { -- Gloves of the Forgotten Vanquisher [Azgalor]
		[OBTAIN] = {SET_TIER_6, "Azgalor (Hyjal Summit)"},
		[CLASS_ROGUE] = {31026, 31998},
		[CLASS_MAGE] = {31055, 32049},
		[CLASS_DRUID] = {31032, 31034, 31035, 31967, 31987, 32056},
	},
	[31099] = { -- Leggings of the Forgotten Vanquisher [Illidari Council]
		[OBTAIN] = {SET_TIER_6, "The Illidari Council (Black Temple)"},
		[CLASS_ROGUE] = {31029, 32000},
		[CLASS_MAGE] = {31058, 32051},
		[CLASS_DRUID] = {31044, 31045, 31046, 31969, 31989, 32058},
	},
	
	[31095] = { -- Helm of the Forgotten Protector [Archimonde]
		[OBTAIN] = {SET_TIER_6, "Archimonde (Hyjal Summit)"},
		[CLASS_WARRIOR] = {30972, 30974, 30488},
		[CLASS_HUNTER] = {31003, 31962},
		[CLASS_SHAMAN] = {31015, 31012, 31014, 32006, 32011, 32031},
	},
	[31103] = { -- Pauldrons of the Forgotten Protector [Mother Shahraz]
		[OBTAIN] = {SET_TIER_6, "Mother Shahraz (Black Temple)"},
		[CLASS_WARRIOR] = {30979, 30980, 30490},
		[CLASS_HUNTER] = {31006, 31964},
		[CLASS_SHAMAN] = {31024, 31022, 31023, 32008, 32013, 32033},
	},
	[31091] = { -- Chestguard of the Forgotten Protector [Illidan]
		[OBTAIN] = {SET_TIER_6, "Illidan Stormrage (Black Temple)"},
		[CLASS_WARRIOR] = {30975, 30976, 30486},
		[CLASS_HUNTER] = {31004, 31960},
		[CLASS_SHAMAN] = {31018, 31016, 31017, 32004, 32009, 32029},
	},
	[31094] = { -- Gloves of the Forgotten Protector [Azgalor]
		[OBTAIN] = {SET_TIER_6, "Azgalor (Hyjal Summit)"},
		[CLASS_WARRIOR] = {30969, 30970, 30487},
		[CLASS_HUNTER] = {31001, 31961},
		[CLASS_SHAMAN] = {31011, 31007, 31008, 32010, 32030, 32005},
	},
	[31100] = { -- Leggings of the Forgotten Protector [Illidari Council]
		[OBTAIN] = {SET_TIER_6, "The Illidari Council (Black Temple)"},
		[CLASS_WARRIOR] = {30977, 30978, 30489},
		[CLASS_HUNTER] = {31005, 31963},
		[CLASS_SHAMAN] = {31019, 31020, 31021, 32007, 32012, 32032},
	},
	
	[34848] = { -- Bracers of the Forgotten Conqueror [Kalecgos, Eredar Twins]
		[OBTAIN] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[REDEEM] = REDEEM_T6_SUNWELL,
		[CLASS_PALADIN] = {34431, 34432, 34433, 33889, 33904, 33910},
		[CLASS_PRIEST] = {34434, 34435, 33883, 33901},
		[CLASS_WARLOCK] = {34436, 33883, 33901},
		[CLASS_MAGE] = {33883, 33901},
		[CLASS_WARRIOR] = {33889, 33904, 33910},
	},
	[34853] = { -- Belt of the Forgotten Conqueror [Brutallus, Eredar Twins]
		[OBTAIN] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[REDEEM] = REDEEM_T6_SUNWELL,
		[CLASS_PALADIN] = {34485, 34487, 34488, 33888, 33903, 33909},
		[CLASS_PRIEST] = {34527, 34528, 33882, 33900},
		[CLASS_WARLOCK] = {34541, 33882, 33900},
		[CLASS_MAGE] = {33882, 33900},
		[CLASS_WARRIOR] = {33888, 33903, 33909},
	},
	[34856] = { -- Boots of the Forgotten Conqueror [Felmyst, Eredar Twins]
		[OBTAIN] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[REDEEM] = REDEEM_T6_SUNWELL,
		[CLASS_PALADIN] = {34559, 34560, 34561, 33890, 33905, 33911},
		[CLASS_PRIEST] = {34562, 34563, 33884, 33902},
		[CLASS_WARLOCK] = {34564, 33884, 33902},
		[CLASS_MAGE] = {33884, 33902},
		[CLASS_WARRIOR] = {33890, 33905, 33911},
	},
	
	[34851] = { -- Bracers of the Forgotten Protector [Kalecgos, Eredar Twins]
		[OBTAIN] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[REDEEM] = REDEEM_T6_SUNWELL,
		[CLASS_WARRIOR] = {34441, 34442, 33813},
		[CLASS_HUNTER] = {34443, 33876, 33894, 33897, 33906},
		[CLASS_SHAMAN] = {34437, 34438, 34439, 33876, 33894, 33897, 33906},
		[CLASS_PALADIN] = 33813,
	},
	[34854] = { -- Belt of the Forgotten Protector [Brutallus, Eredar Twins]
		[OBTAIN] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[REDEEM] = REDEEM_T6_SUNWELL,
		[CLASS_WARRIOR] = {34546, 34547, 33811},
		[CLASS_HUNTER] = {34549, 33877, 33895, 33898, 33907},
		[CLASS_SHAMAN] = {34542, 34543, 34545, 33877, 33895, 33898, 33907},
		[CLASS_PALADIN] = 33811,
	},
	[34857] = { -- Boots of the Forgotten Protector [Felmyst, Eredar Twins]
		[OBTAIN] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[REDEEM] = REDEEM_T6_SUNWELL,
		[CLASS_WARRIOR] = {34568, 34569, 33812},
		[CLASS_HUNTER] = {34570, 33878, 33896, 33899, 33908},
		[CLASS_SHAMAN] = {34565, 34566, 34567, 33878, 33896, 33899, 33908},
		[CLASS_PALADIN] = 33812,
	},
	
	[34852] = { -- Bracers of the Forgotten Vanquisher [Kalecgos, Eredar Twins]
		[OBTAIN] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[REDEEM] = REDEEM_T6_SUNWELL,
		[CLASS_ROGUE] = {34448, 33881, 33887, 33893, 33917},
		[CLASS_MAGE] = {34447, 33913},
		[CLASS_DRUID] = {34444, 34445, 34446, 33881, 33887, 33893, 33917},
		[CLASS_PRIEST] = 33913,
		[CLASS_WARLOCK] = 33913,
		[CLASS_MONK] = {33881, 33887, 33893, 33917},
	},
	[34855] = { -- Belt of the Forgotten Vanquisher [Brutallus, Eredar Twins]
		[OBTAIN] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[REDEEM] = REDEEM_T6_SUNWELL,
		[CLASS_ROGUE] = {34558, 33879, 33885, 33891, 33915},
		[CLASS_MAGE] = {34557, 33912},
		[CLASS_DRUID] = {34554, 34555, 34556, 33879, 33885, 33891, 33915},
		[CLASS_PRIEST] = 33912,
		[CLASS_WARLOCK] = 33912,
		[CLASS_MONK] = {33879, 33885, 33891, 33915},
	},
	[34858] = { -- Boots of the Forgotten Vanquisher [Felmyst, Eredar Twins]
		[OBTAIN] = {SET_TIER_6, "Multiple Bosses (Sunwell Plateau)"},
		[REDEEM] = REDEEM_T6_SUNWELL,
		[CLASS_ROGUE] = {34575, 33880, 33886, 33892, 33916},
		[CLASS_MAGE] = {34574, 33914},
		[CLASS_DRUID] = {34571, 34572, 34573, 33880, 33886, 33892, 33916},
		[CLASS_PRIEST] = 33914,
		[CLASS_WARLOCK] = 33914,
		[CLASS_MONK] = {33880, 33886, 33892, 33916},
	},
	
	[34664] = { -- Sunmote
		[REDEEM] = REDEEM_T6_SUNMOTE,
		[PLATE] = {34388, 34389, 34394, 34395, 34382, 34400, 34401, 34381},
		[MAIL] = {34396, 34390, 34402, 34383, 34409},
		[LEATHER] = {34384, 34385, 34391, 34392, 34397, 34398, 34403, 34404, 34408, 34407},
		[CLOTH] = {34399, 34393, 34386, 34406, 34405},
	},
	
	[34339] = { [REDEEM] = REDEEM_T6_SUNMOTE, [CLOTH] = 34405 }, -- Helm of Arcane Purity
	[34342] = { [REDEEM] = REDEEM_T6_SUNMOTE, [CLOTH] = 34406 }, -- Gloves of Tyri's Power
	[34233] = { [REDEEM] = REDEEM_T6_SUNMOTE, [CLOTH] = 34399 }, -- Robes of Ghostly Hatred
	[34170] = { [REDEEM] = REDEEM_T6_SUNMOTE, [CLOTH] = 34386 }, -- Pantaloons of Growing Strife
	[34202] = { [REDEEM] = REDEEM_T6_SUNMOTE, [CLOTH] = 34393 }, -- Shoulderpads of Knowledge's Pursuit
	[34211] = { [REDEEM] = REDEEM_T6_SUNMOTE, [LEATHER] = 34397 }, -- Bladed Chaos Tunic
	[34212] = { [REDEEM] = REDEEM_T6_SUNMOTE, [LEATHER] = 34398 }, -- Utopian Tunic of Elune
	[34169] = { [REDEEM] = REDEEM_T6_SUNMOTE, [LEATHER] = 34384 }, -- Breeches of Natural Splendor
	[34188] = { [REDEEM] = REDEEM_T6_SUNMOTE, [LEATHER] = 34385 }, -- Leggings of the Immortal Beast
	[34245] = { [REDEEM] = REDEEM_T6_SUNMOTE, [LEATHER] = 34403 }, -- Cover of Ursoc the Mighty
	[34244] = { [REDEEM] = REDEEM_T6_SUNMOTE, [LEATHER] = 34404 }, -- Mask of the Fury Hunter
	[34209] = { [REDEEM] = REDEEM_T6_SUNMOTE, [LEATHER] = 34391 }, -- Spaulders of Devastation
	[34195] = { [REDEEM] = REDEEM_T6_SUNMOTE, [LEATHER] = 34392 }, -- Demontooth Shoulderpads
	[34234] = { [REDEEM] = REDEEM_T6_SUNMOTE, [LEATHER] = 34408 }, -- Gloves of the Forest Drifter
	[34351] = { [REDEEM] = REDEEM_T6_SUNMOTE, [LEATHER] = 34407 }, -- Tranquil Moonlight Wraps
	[34229] = { [REDEEM] = REDEEM_T6_SUNMOTE, [MAIL] = 34396 }, -- Garments of Crashing Shores
	[34186] = { [REDEEM] = REDEEM_T6_SUNMOTE, [MAIL] = 34383 }, -- Kilt of Spiritual Reconstruction
	[34332] = { [REDEEM] = REDEEM_T6_SUNMOTE, [MAIL] = 34402 }, -- Shroud of Chieftain Ner'zhul
	[34208] = { [REDEEM] = REDEEM_T6_SUNMOTE, [MAIL] = 34390 }, -- Erupting Epaulets
	[34350] = { [REDEEM] = REDEEM_T6_SUNMOTE, [MAIL] = 34409 }, -- Gauntlets of the Ancient Frostwolf
	[34180] = { [REDEEM] = REDEEM_T6_SUNMOTE, [PLATE] = 34381 }, -- Felstrength Legplates
	[34167] = { [REDEEM] = REDEEM_T6_SUNMOTE, [PLATE] = 34382 }, -- Judicator's Legguards
	[34345] = { [REDEEM] = REDEEM_T6_SUNMOTE, [PLATE] = 34400 }, -- Crown of Dath'Remar
	[34243] = { [REDEEM] = REDEEM_T6_SUNMOTE, [PLATE] = 34401 }, -- Helm of Uther's Resolve
	[34192] = { [REDEEM] = REDEEM_T6_SUNMOTE, [PLATE] = 34388 }, -- Pauldrons of Berserking
	[34193] = { [REDEEM] = REDEEM_T6_SUNMOTE, [PLATE] = 34389 }, -- Spaulders of the Thalassian Defender
	[34215] = { [REDEEM] = REDEEM_T6_SUNMOTE, [PLATE] = 34394 }, -- Breastplate of Agony's Aversion
	[34216] = { [REDEEM] = REDEEM_T6_SUNMOTE, [PLATE] = 34395 }, -- Noble Judicator's Chestguard
	--]]
	
	--[[ TIER 7 (Naxx, OS) 
	-- 10-Man
	[40616] = { -- Helm of the Lost Conqueror [Kel'Thuzad 10]
		[OBTAIN] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [10-Man])"},
		[CLASS_PALADIN] = {39628, 39635, 39640},
		[CLASS_PRIEST] = {39514, 39521},
		[CLASS_WARLOCK] = 39496,
	},
	[40622] = { -- Spaulders of the Lost Conqueror [Loatheb, Gluth 10]
		[OBTAIN] = {SET_TIER_7, "Loatheb (Naxxramas [10-Man])"},
		[CLASS_PALADIN] = {39631, 39637, 39642},
		[CLASS_PRIEST] = {39518, 39529},
		[CLASS_WARLOCK] = 39499,
	},
	[40610] = { -- Chestguard of the Lost Conqueror [Four Horsemen, Gluth 10]
		[OBTAIN] = {SET_TIER_7, "The Four Horsemen (Naxxramas [10-Man])"},
		[CLASS_PALADIN] = {39629, 39633, 39638},
		[CLASS_PRIEST] = {39515, 39523},
		[CLASS_WARLOCK] = 39497,
	},
	[40613] = { -- Gloves of the Lost Conqueror [Sartharion 10]
		[OBTAIN] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [10-Man])"},
		[CLASS_PALADIN] = {39632, 39634, 39639},
		[CLASS_PRIEST] = {39519, 39530},
		[CLASS_WARLOCK] = 39500,
	},
	[40619] = { -- Leggings of the Lost Conqueror [Gluth, Thaddius 10]
		[OBTAIN] = {SET_TIER_7, "Thaddius (Naxxramas [10-Man])"},
		[CLASS_PALADIN] = {39630, 39636, 39641},
		[CLASS_PRIEST] = {39517, 39528},
		[CLASS_WARLOCK] = 39498,
	},
	
	[40617] = { -- Helm of the Lost Protector [Kel'Thuzad 10]
		[OBTAIN] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [10-Man])"},
		[CLASS_WARRIOR] = {39605, 39610},
		[CLASS_HUNTER] = 39578,
		[CLASS_SHAMAN] = {39583, 39594, 39602},
	},
	[40623] = { -- Spaulders of the Lost Protector [Loatheb, Gluth 10]
		[OBTAIN] = {SET_TIER_7, "Loatheb (Naxxramas [10-Man])"},
		[CLASS_WARRIOR] = {39608, 39613},
		[CLASS_HUNTER] = 39581,
		[CLASS_SHAMAN] = {39590, 39596, 39604},
	},
	[40611] = { -- Chestguard of the Lost Protector [Four Horsemen, Gluth 10]
		[OBTAIN] = {SET_TIER_7, "Gluth (Naxxramas [10-Man])"},
		[CLASS_WARRIOR] = {39606, 39611},
		[CLASS_HUNTER] = 39579,
		[CLASS_SHAMAN] = {39597, 39588, 39592},
	},
	[40614] = { -- Gloves of the Lost Protector [Sartharion 10]
		[OBTAIN] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [10-Man])"},
		[CLASS_WARRIOR] = {39609, 39622},
		[CLASS_HUNTER] = 39582,
		[CLASS_SHAMAN] = {39591, 39593, 39601},
	},
	[40620] = { -- Leggings of the Lost Protector [Gluth, Thaddius 10]
		[OBTAIN] = {SET_TIER_7, "Thaddius (Naxxramas [10-Man])"},
		[CLASS_WARRIOR] = {39607, 39612},
		[CLASS_HUNTER] = 39580,
		[CLASS_SHAMAN] = {39589, 39595, 39603},
	},
	
	[40618] = { -- Helm of the Lost Vanquisher [Kel'Thuzad 10]
		[OBTAIN] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [10-Man])"},
		[CLASS_ROGUE] = 39561,
		[CLASS_DEATHKNIGHT] = {39619, 39625},
		[CLASS_MAGE] = 39491,
		[CLASS_DRUID] = {39531, 39545, 39553},
	},
	[40624] = { -- Spaulders of the Lost Vanquisher [Loatheb, Gluth 10]
		[OBTAIN] = {SET_TIER_7, "Loatheb (Naxxramas [10-Man])"},
		[CLASS_ROGUE] = 39565,
		[CLASS_DEATHKNIGHT] = {39621, 39627},
		[CLASS_MAGE] = 39494,
		[CLASS_DRUID] = {39542, 39548, 39556},
	},
	[40612] = { -- Chestguard of the Lost Vanquisher [Four Horsemen, Gluth 10]
		[OBTAIN] = {SET_TIER_7, "Gluth (Naxxramas [10-Man])"},
		[CLASS_ROGUE] = 39558,
		[CLASS_DEATHKNIGHT] = {39617, 39623},
		[CLASS_MAGE] = 39492,
		[CLASS_DRUID] = {39538, 39547, 39554},
	},
	[40615] = { -- Gloves of the Lost Vanquisher [Sartharion 10]
		[OBTAIN] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [10-Man])"},
		[CLASS_ROGUE] = 39560,
		[CLASS_DEATHKNIGHT] = {39618, 39624},
		[CLASS_MAGE] = 39495,
		[CLASS_DRUID] = {39543, 39544, 39557},
	},
	[40621] = { -- Leggings of the Lost Vanquisher [Gluth, Thaddius 10]
		[OBTAIN] = {SET_TIER_7, "Thaddius (Naxxramas [10-Man])"},
		[CLASS_ROGUE] = 39564,
		[CLASS_DEATHKNIGHT] = {39620, 39626},
		[CLASS_MAGE] = 39493,
		[CLASS_DRUID] = {39539, 39546, 39555},
	},
	
	-- 25-Man
	[40631] = { -- Crown of the Lost Conqueror [Kel'Thuzad 25]
		[OBTAIN] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [25-Man])"},
		[CLASS_PALADIN] = {40571, 40576, 40581},
		[CLASS_PRIEST] = {40447, 40456},
		[CLASS_WARLOCK] = 40421,
	},
	[40637] = { -- Mantle of the Lost Conqueror [Loatheb, Gluth 25]
		[OBTAIN] = {SET_TIER_7, "Loatheb (Naxxramas [25-Man])"},
		[CLASS_PALADIN] = {40573, 40578, 40584},
		[CLASS_PRIEST] = {40450, 40459},
		[CLASS_WARLOCK] = 40424,
	},
	[40625] = { -- Breastplate of the Lost Conqueror [Four Horsemen, Gluth 25]
		[OBTAIN] = {SET_TIER_7, "Four Horsemen (Naxxramas [25-Man])"},
		[CLASS_WARLOCK] = 40423,
		[CLASS_PRIEST] = {40449, 40458},
		[CLASS_PALADIN] = {40569, 40574, 40579},
	},
	[40628] = { -- Gauntlets of the Lost Conqueror [Sartharion 25]
		[OBTAIN] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [25-Man])"},
		[CLASS_PALADIN] = {40570, 40575, 40580},
		[CLASS_PRIEST] = {40445, 40454},
		[CLASS_WARLOCK] = 40420,
	},
	[40634] = { -- Legplates of the Lost Conqueror [Gluth, Thaddius 25]
		[OBTAIN] = {SET_TIER_7, "Thaddius (Naxxramas [25-Man])"},
		[CLASS_PALADIN] = {40572, 40577, 40583},
		[CLASS_PRIEST] = {40448, 40457},
		[CLASS_WARLOCK] = 40422,
	},
	
	[40632] = { -- Crown of the Lost Protector [Kel'Thuzad 25]
		[OBTAIN] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [25-Man])"},
		[CLASS_WARRIOR] = {40528, 40546},
		[CLASS_HUNTER] = 40505,
		[CLASS_SHAMAN] = {40521, 40510, 40516},
	},
	[40638] = { -- Mantle of the Lost Protector [Loatheb, Gluth 25]
		[OBTAIN] = {SET_TIER_7, "Loatheb (Naxxramas [25-Man])"},
		[CLASS_WARRIOR] = {40530, 40548},
		[CLASS_HUNTER] = 40507,
		[CLASS_SHAMAN] = {40513, 40518, 40524},
	},
	[40626] = { -- Breastplate of the Lost Protector [Four Horsemen, Gluth 25]
		[OBTAIN] = {SET_TIER_7, "Four Horsemen (Naxxramas [25-Man])"},
		[CLASS_WARRIOR] = {40525, 40544},
		[CLASS_HUNTER] = 40503,
		[CLASS_SHAMAN] = {40514, 40523, 40508},
	},
	[40629] = { -- Gauntlets of the Lost Protector [Sartharion 25]
		[OBTAIN] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [25-Man])"},
		[CLASS_WARRIOR] = {40527, 40545},
		[CLASS_HUNTER] = 40504,
		[CLASS_SHAMAN] = {40509, 40515, 40520},
	},
	[40635] = { -- Legplates of the Lost Protector [Gluth, Thaddius 25]
		[OBTAIN] = {SET_TIER_7, "Thaddius (Naxxramas [25-Man])"},
		[CLASS_WARRIOR] = {40529, 40547},
		[CLASS_HUNTER] = 40506,
		[CLASS_SHAMAN] = {40512, 40517, 40522},
	},
	
	[40633] = { -- Crown of the Lost Vanquisher [Kel'Thuzad 25]
		[OBTAIN] = {SET_TIER_7, "Kel'Thuzad (Naxxramas [25-Man])"},
		[CLASS_ROGUE] = 40499,
		[CLASS_DEATHKNIGHT] = {40554, 40565},
		[CLASS_MAGE] = 40416,
		[CLASS_DRUID] = {40461, 40467, 40473},
	},
	[40639] = { -- Mantle of the Lost Vanquisher [Loatheb, Gluth 25]
		[OBTAIN] = {SET_TIER_7, "Loatheb (Naxxramas [25-Man])"},
		[CLASS_ROGUE] = 40502,
		[CLASS_DEATHKNIGHT] = {40557, 40568},
		[CLASS_MAGE] = 40419,
		[CLASS_DRUID] = {40465, 40470, 40494},
	},
	[40627] = { -- Breastplate of the Lost Vanquisher [Four Horsemen, Gluth 25]
		[OBTAIN] = {SET_TIER_7, "Four Horsemen (Naxxramas [25-Man])"},
		[CLASS_ROGUE] = 40495,
		[CLASS_DEATHKNIGHT] = {40550, 40559},
		[CLASS_MAGE] = 40418,
		[CLASS_DRUID] = {40463, 40469, 40471},
	},
	[40630] = { -- Gauntlets of the Lost Vanquisher [Sartharion 25]
		[OBTAIN] = {SET_TIER_7, "Sartharion (The Obsidian Sanctum [25-Man])"},
		[CLASS_ROGUE] = 40496,
		[CLASS_DEATHKNIGHT] = {40552, 40563},
		[CLASS_MAGE] = 40415,
		[CLASS_DRUID] = {40460, 40466, 40472},
	},
	[40636] = { -- Legplates of the Lost Vanquisher [Gluth, Thaddius 25]
		[OBTAIN] = {SET_TIER_7, "Thaddius (Naxxramas [25-Man])"},
		[CLASS_ROGUE] = 40500,
		[CLASS_DEATHKNIGHT] = {40556, 40567},
		[CLASS_MAGE] = 40417,
		[CLASS_DRUID] = {40462, 40468, 40493},
	},
	--]]
	
	--[[ TIER 8 (Uldu) 
	-- ex-10-Man
	[45647] = { -- Helm of the Wayward Conqueror [Mimiron]
		[CLASS_PALADIN] = {45372, 45377, 45382},
		[CLASS_PRIEST] = {45386, 45391},
		[CLASS_WARLOCK] = 45417,
	},
	[45659] = { -- Spaulders of the Wayward Conqueror [Thorim]
		[CLASS_PALADIN] = {45373, 45380, 45385},
		[CLASS_PRIEST] = {45390, 45393},
		[CLASS_WARLOCK] = 45422,
	},
	[45635] = { -- Chestguard of the Wayward Conqueror [Yogg-Saron]
		[CLASS_PALADIN] = {45374, 45375, 45381},
		[CLASS_PRIEST] = {45389, 45395},
		[CLASS_WARLOCK] = 45421,
	},
	[45644] = { -- Gloves of the Wayward Conqueror [Freya]
		[CLASS_PALADIN] = {45370, 45376, 45383},
		[CLASS_PRIEST] = {45387, 45392},
		[CLASS_WARLOCK] = 45419,
	},
	[45650] = { -- Leggings of the Wayward Conqueror [Hodir]
		[CLASS_PALADIN] = {45371, 45379, 45384},
		[CLASS_PRIEST] = {45388, 45394},
		[CLASS_WARLOCK] = 45420,
	},
	
	[45648] = { -- Helm of the Wayward Protector [Mimiron]
		[CLASS_WARRIOR] = {45425, 45431},
		[CLASS_HUNTER] = 45361,
		[CLASS_SHAMAN] = {45402, 45408, 45412},
	},
	[45660] = { -- Spaulders of the Wayward Protector [Thorim]
		[CLASS_WARRIOR] = {45428, 45433},
		[CLASS_HUNTER] = 45363,
		[CLASS_SHAMAN] = {45404, 45410, 45415},
	},
	[45636] = { -- Chestguard of the Wayward Protector [Yogg-Saron]
		[CLASS_WARRIOR] = {45424, 45429},
		[CLASS_HUNTER] = 45364,
		[CLASS_SHAMAN] = {45405, 45411, 45413},
	},
	[45645] = { -- Gloves of the Wayward Protector [Freya]
		[CLASS_WARRIOR] = {45426, 45430},
		[CLASS_HUNTER] = 45360,
		[CLASS_SHAMAN] = {45401, 45406, 45414},
	},
	[45651] = { -- Leggings of the Wayward Protector [Hodir]
		[CLASS_WARRIOR] = {45427, 45432},
		[CLASS_HUNTER] = 45362,
		[CLASS_SHAMAN] = {45403, 45409, 45416},
	},
	
	[45649] = { -- Helm of the Wayward Vanquisher [Mimiron]
		[CLASS_ROGUE] = 45398,
		[CLASS_DEATHKNIGHT] = {45336, 45342},
		[CLASS_MAGE] = 45365,
		[CLASS_DRUID] = {45346, 45356, 46313},
	},
	[45661] = { -- Spaulders of the Wayward Vanquisher [Thorim]
		[CLASS_ROGUE] = 45400,
		[CLASS_DEATHKNIGHT] = {45339, 45344},
		[CLASS_MAGE] = 45369,
		[CLASS_DRUID] = {45349, 45352, 45359},
	},
	[45637] = { -- Chestguard of the Wayward Vanquisher [Yogg-Saron]
		[CLASS_ROGUE] = 45396,
		[CLASS_DEATHKNIGHT] = {45335, 45340},
		[CLASS_MAGE] = 45368,
		[CLASS_DRUID] = {45348, 45354, 45358},
	},
	[45646] = { -- Gloves of the Wayward Vanquisher [Freya]
		[CLASS_ROGUE] = 45397,
		[CLASS_DEATHKNIGHT] = {45337, 45341},
		[CLASS_MAGE] = 46131,
		[CLASS_DRUID] = {45345, 45351, 45355},
	},
	[45652] = { -- Leggings of the Wayward Vanquisher [Hodir]
		[CLASS_ROGUE] = 45399,
		[CLASS_DEATHKNIGHT] = {45338, 45343},
		[CLASS_MAGE] = 45367,
		[CLASS_DRUID] = {45347, 45353, 45357},
	},
	
	-- ex-25-Man
	[45638] = { -- Crown of the Wayward Conqueror [Thorim]
		[CLASS_PALADIN] = {46156, 46175, 46180},
		[CLASS_PRIEST] = {46172, 46197},
		[CLASS_WARLOCK] = 46140,
	},
	[45656] = { -- Mantle of the Wayward Conqueror [Yogg-Saron]
		[CLASS_PALADIN] = {46177, 46182, 46152},
		[CLASS_PRIEST] = {46165, 46190},
		[CLASS_WARLOCK] = 46136,
	},
	[45632] = { -- Breastplate of the Wayward Conqueror [Hodir]
		[CLASS_PALADIN] = {46154, 46173, 46178},
		[CLASS_PRIEST] = {46168, 46193},
		[CLASS_WARLOCK] = 46137,
	},
	[45641] = { -- Gauntlets of the Wayward Conqueror [Mimiron]
		[CLASS_PALADIN] = {46155, 46174, 46179},
		[CLASS_PRIEST] = {46163, 46188},
		[CLASS_WARLOCK] = 46135,
	},
	[45653] = { -- Legplates of the Wayward Conqueror [Freya]
		[CLASS_PALADIN] = {46153, 46176, 46181},
		[CLASS_PRIEST] = {46170, 46195},
		[CLASS_WARLOCK] = 46139,
	},
	
	[45639] = { -- Crown of the Wayward Protector [Thorim]
		[CLASS_WARRIOR] = {46151, 46166},
		[CLASS_HUNTER] = 46143,
		[CLASS_SHAMAN] = {46201, 46209, 46212},
	},
	[45657] = { -- Mantle of the Wayward Protector [Yogg-Saron]
		[CLASS_WARRIOR] = {46149, 46167},
		[CLASS_HUNTER] = 46145,
		[CLASS_SHAMAN] = {46203, 46204, 46211},
	},
	[45633] = { -- Breastplate of the Wayward Protector [Hodir]
		[CLASS_WARRIOR] = {46146, 46162},
		[CLASS_HUNTER] = 46141,
		[CLASS_SHAMAN] = {46198, 46205, 46206},
	},
	[45642] = { -- Gauntlets of the Wayward Protector [Mimiron]
		[CLASS_WARRIOR] = {46148, 46164},
		[CLASS_HUNTER] = 46142,
		[CLASS_SHAMAN] = {46199, 46200, 46207},
	},
	[45654] = { -- Legplates of the Wayward Protector [Freya]
		[CLASS_WARRIOR] = {46150, 46169},
		[CLASS_HUNTER] = 46144,
		[CLASS_SHAMAN] = {46202, 46208, 46210},
	},
	
	[45640] = { -- Crown of the Wayward Vanquisher [Thorim]
		[CLASS_ROGUE] = 46125,
		[CLASS_DEATHKNIGHT] = {46115, 46120},
		[CLASS_MAGE] = 46129,
		[CLASS_DRUID] = {46161, 46184, 46191},
	},
	[45658] = { -- Mantle of the Wayward Vanquisher [Yogg-Saron]
		[CLASS_ROGUE] = 46127,
		[CLASS_DEATHKNIGHT] = {46117, 46122},
		[CLASS_MAGE] = 46134,
		[CLASS_DRUID] = {46157, 46187, 46196},
	},
	[45634] = { -- Breastplate of the Wayward Vanquisher [Hodir]
		[CLASS_ROGUE] = 46123,
		[CLASS_DEATHKNIGHT] = {46111, 46118},
		[CLASS_MAGE] = 46130,
		[CLASS_DRUID] = {46159, 46186, 46194},
	},
	[45643] = { -- Gauntlets of the Wayward Vanquisher [Mimiron]
		[CLASS_ROGUE] = 46124,
		[CLASS_DEATHKNIGHT] = {46113, 46119},
		[CLASS_DRUID] = {46158, 46183, 46189},
		[CLASS_MAGE] = 46132,
	},
	[45655] = { -- Legplates of the Wayward Vanquisher [Freya]
		[CLASS_ROGUE] = 46126,
		[CLASS_DEATHKNIGHT] = {46116, 46121},
		[CLASS_MAGE] = 46133,
		[CLASS_DRUID] = {46160, 46185, 46192},
	},
	--]]
	
	--[[ TIER 10 (ICC) 
	-- 10H/25N
	[52025] = { -- Vanquisher's Mark of Sanctification [Saurfang, Putricide, Lana'thel, Sindragosa, Lich King]
		[REDEEM] = REDEEM_T10,
		[CLASS_ROGUE] = {51185, 51186, 51187, 51188, 51189},
		[CLASS_DEATHKNIGHT] = {51130, 51131, 51132, 51133, 51134, 51129, 51125, 51126, 51127, 51128},
		[CLASS_MAGE] = {51159, 51155, 51156, 51157, 51158},
		[CLASS_DRUID] = {51138, 51139, 51145, 51146, 51147, 51148, 51149, 51140, 51141, 51142, 51143, 51144, 51135, 51136, 51137},
	},
	[52026] = { -- Protector's Mark of Sanctification [Saurfang, Putricide, Lana'thel, Sindragosa, Lich King]
		[REDEEM] = REDEEM_T10,
		[CLASS_WARRIOR] = {51217, 51218, 51219, 51210, 51211, 51212, 51213, 51214, 51215, 51216},
		[CLASS_HUNTER] = {51150, 51151, 51152, 51153, 51154},
		[CLASS_SHAMAN] = {51190, 51199, 51200, 51201, 51202, 51203, 51204, 51198, 51191, 51192, 51193, 51194, 51195, 51196, 51197},
	},
	[52027] = { -- Conqueror's Mark of Sanctification [Saurfang, Putricide, Lana'thel, Sindragosa, Lich King]
		[REDEEM] = REDEEM_T10,
		[CLASS_PALADIN] = {51161, 51162, 51163, 51164, 51170, 51171, 51172, 51173, 51174, 51165, 51166, 51167, 51168, 51169, 51160},
		[CLASS_PRIEST] = {51184, 51178, 51179, 51180, 51181, 51182, 51183, 51177, 51175, 51176},
		[CLASS_WARLOCK] = {51205, 51206, 51207, 51208, 51209},
	},
	
	-- 25H
	[52028] = { -- Vanquisher's Mark of Sanctification [Saurfang, Putricide, Lana'thel, Sindragosa, Lich King]
		[REDEEM] = REDEEM_T10,
		[CLASS_ROGUE] = {51250, 51251, 51252, 51253, 51254},
		[CLASS_DEATHKNIGHT] = {51312, 51310, 51311, 51313, 51314, 51305, 51306, 51307, 51308, 51309},
		[CLASS_MAGE] = {51283, 51284, 51280, 51281, 51282},
		[CLASS_DRUID] = {51295, 51296, 51297, 51298, 51299, 51300, 51301, 51294, 51302, 51303, 51304, 51290, 51291, 51292, 51293},
	},
	[52029] = { -- Protector's Mark of Sanctification [Saurfang, Putricide, Lana'thel, Sindragosa, Lich King]
		[REDEEM] = REDEEM_T10,
		[CLASS_WARRIOR] = {51222, 51223, 51224, 51225, 51226, 51227, 51228, 51229, 51220, 51221},
		[CLASS_HUNTER] = {51285, 51286, 51287, 51288, 51289},
		[CLASS_SHAMAN] = {51249, 51239, 51238, 51237, 51236, 51235, 51240, 51241, 51248, 51247, 51246, 51245, 51244, 51243, 51242},
	},
	[52030] = { -- Conqueror's Mark of Sanctification [Saurfang, Putricide, Lana'thel, Sindragosa, Lich King]
		[REDEEM] = REDEEM_T10,
		[CLASS_PALADIN] = {51265, 51266, 51267, 51268, 51269, 51270, 51271, 51272, 51273, 51274, 51275, 51276, 51277, 51278, 51279},
		[CLASS_PRIEST] = {51257, 51258, 51259, 51256, 51260, 51261, 51262, 51263, 51264, 51255},
		[CLASS_WARLOCK] = {51233, 51230, 51231, 51232, 51234},
	},
	
	-- Tier 10 Plate Exchange
	[50098] = { [REDEEM] = REDEEM_T10, [CLASS_DEATHKNIGHT] = 51125 }, -- Sanctified Scourgelord Shoulderplates
	[50097] = { [REDEEM] = REDEEM_T10, [CLASS_DEATHKNIGHT] = 51126 }, -- Sanctified Scourgelord Legplates
	[50096] = { [REDEEM] = REDEEM_T10, [CLASS_DEATHKNIGHT] = 51127 }, -- Sanctified Scourgelord Helmet
	[50095] = { [REDEEM] = REDEEM_T10, [CLASS_DEATHKNIGHT] = 51128 }, -- Sanctified Scourgelord Gauntlets
	[50094] = { [REDEEM] = REDEEM_T10, [CLASS_DEATHKNIGHT] = 51129 }, -- Sanctified Scourgelord Battleplate
	[50853] = { [REDEEM] = REDEEM_T10, [CLASS_DEATHKNIGHT] = 51130 }, -- Sanctified Scourgelord Pauldrons
	[50854] = { [REDEEM] = REDEEM_T10, [CLASS_DEATHKNIGHT] = 51131 }, -- Sanctified Scourgelord Legguards
	[50856] = { [REDEEM] = REDEEM_T10, [CLASS_DEATHKNIGHT] = 51132 }, -- Sanctified Scourgelord Handguards
	[50855] = { [REDEEM] = REDEEM_T10, [CLASS_DEATHKNIGHT] = 51133 }, -- Sanctified Scourgelord Faceguard
	[50857] = { [REDEEM] = REDEEM_T10, [CLASS_DEATHKNIGHT] = 51134 }, -- Sanctified Scourgelord Chestguard
	[51134] = { [REDEEM] = REDEEM_T10, [CLASS_DEATHKNIGHT] = 51305 }, -- Sanctified Scourgelord Chestguard
	[51133] = { [REDEEM] = REDEEM_T10, [CLASS_DEATHKNIGHT] = 51306 }, -- Sanctified Scourgelord Faceguard
	[51132] = { [REDEEM] = REDEEM_T10, [CLASS_DEATHKNIGHT] = 51307 }, -- Sanctified Scourgelord Handguards
	[51131] = { [REDEEM] = REDEEM_T10, [CLASS_DEATHKNIGHT] = 51308 }, -- Sanctified Scourgelord Legguards
	[51130] = { [REDEEM] = REDEEM_T10, [CLASS_DEATHKNIGHT] = 51309 }, -- Sanctified Scourgelord Pauldrons
	[51129] = { [REDEEM] = REDEEM_T10, [CLASS_DEATHKNIGHT] = 51310 }, -- Sanctified Scourgelord Battleplate
	[51128] = { [REDEEM] = REDEEM_T10, [CLASS_DEATHKNIGHT] = 51311 }, -- Sanctified Scourgelord Gauntlets
	[51127] = { [REDEEM] = REDEEM_T10, [CLASS_DEATHKNIGHT] = 51312 }, -- Sanctified Scourgelord Helmet
	[51126] = { [REDEEM] = REDEEM_T10, [CLASS_DEATHKNIGHT] = 51313 }, -- Sanctified Scourgelord Legplates
	[51125] = { [REDEEM] = REDEEM_T10, [CLASS_DEATHKNIGHT] = 51314 }, -- Sanctified Scourgelord Shoulderplates
	[50324] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51160 }, -- Sanctified Lightsworn Shoulderplates
	[50325] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51161 }, -- Sanctified Lightsworn Legplates
	[50326] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51162 }, -- Sanctified Lightsworn Helmet
	[50327] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51163 }, -- Sanctified Lightsworn Gauntlets
	[50328] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51164 }, -- Sanctified Lightsworn Battleplate
	[50869] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51165 }, -- Sanctified Lightsworn Tunic
	[50865] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51166 }, -- Sanctified Lightsworn Spaulders
	[50867] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51167 }, -- Sanctified Lightsworn Headpiece
	[50866] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51168 }, -- Sanctified Lightsworn Greaves
	[50868] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51169 }, -- Sanctified Lightsworn Gloves
	[50860] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51170 }, -- Sanctified Lightsworn Shoulderguards
	[50861] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51171 }, -- Sanctified Lightsworn Legguards
	[50863] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51172 }, -- Sanctified Lightsworn Handguards
	[50862] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51173 }, -- Sanctified Lightsworn Faceguard
	[50864] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51174 }, -- Sanctified Lightsworn Chestguard
	[51174] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51265 }, -- Sanctified Lightsworn Chestguard
	[51173] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51266 }, -- Sanctified Lightsworn Faceguard
	[51172] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51267 }, -- Sanctified Lightsworn Handguards
	[51171] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51268 }, -- Sanctified Lightsworn Legguards
	[51170] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51269 }, -- Sanctified Lightsworn Shoulderguards
	[51169] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51270 }, -- Sanctified Lightsworn Gloves
	[51168] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51271 }, -- Sanctified Lightsworn Greaves
	[51167] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51272 }, -- Sanctified Lightsworn Headpiece
	[51166] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51273 }, -- Sanctified Lightsworn Spaulders
	[51165] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51274 }, -- Sanctified Lightsworn Tunic
	[51164] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51275 }, -- Sanctified Lightsworn Battleplate
	[51163] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51276 }, -- Sanctified Lightsworn Gauntlets
	[51162] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51277 }, -- Sanctified Lightsworn Helmet
	[51161] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51278 }, -- Sanctified Lightsworn Legplates
	[51160] = { [REDEEM] = REDEEM_T10, [CLASS_PALADIN] = 51279 }, -- Sanctified Lightsworn Shoulderplates
	[50082] = { [REDEEM] = REDEEM_T10, [CLASS_WARRIOR] = 51210 }, -- Sanctified Ymirjar Lord's Shoulderplates
	[50081] = { [REDEEM] = REDEEM_T10, [CLASS_WARRIOR] = 51211 }, -- Sanctified Ymirjar Lord's Legplates
	[50080] = { [REDEEM] = REDEEM_T10, [CLASS_WARRIOR] = 51212 }, -- Sanctified Ymirjar Lord's Helmet
	[50079] = { [REDEEM] = REDEEM_T10, [CLASS_WARRIOR] = 51213 }, -- Sanctified Ymirjar Lord's Gauntlets
	[50078] = { [REDEEM] = REDEEM_T10, [CLASS_WARRIOR] = 51214 }, -- Sanctified Ymirjar Lord's Battleplate
	[50846] = { [REDEEM] = REDEEM_T10, [CLASS_WARRIOR] = 51215 }, -- Sanctified Ymirjar Lord's Pauldrons
	[50847] = { [REDEEM] = REDEEM_T10, [CLASS_WARRIOR] = 51216 }, -- Sanctified Ymirjar Lord's Legguards
	[50849] = { [REDEEM] = REDEEM_T10, [CLASS_WARRIOR] = 51217 }, -- Sanctified Ymirjar Lord's Handguards
	[50848] = { [REDEEM] = REDEEM_T10, [CLASS_WARRIOR] = 51218 }, -- Sanctified Ymirjar Lord's Greathelm
	[50850] = { [REDEEM] = REDEEM_T10, [CLASS_WARRIOR] = 51219 }, -- Sanctified Ymirjar Lord's Breastplate
	[51219] = { [REDEEM] = REDEEM_T10, [CLASS_WARRIOR] = 51220 }, -- Sanctified Ymirjar Lord's Breastplate
	[51218] = { [REDEEM] = REDEEM_T10, [CLASS_WARRIOR] = 51221 }, -- Sanctified Ymirjar Lord's Greathelm
	[51217] = { [REDEEM] = REDEEM_T10, [CLASS_WARRIOR] = 51222 }, -- Sanctified Ymirjar Lord's Handguards
	[51216] = { [REDEEM] = REDEEM_T10, [CLASS_WARRIOR] = 51223 }, -- Sanctified Ymirjar Lord's Legguards
	[51215] = { [REDEEM] = REDEEM_T10, [CLASS_WARRIOR] = 51224 }, -- Sanctified Ymirjar Lord's Pauldrons
	[51214] = { [REDEEM] = REDEEM_T10, [CLASS_WARRIOR] = 51225 }, -- Sanctified Ymirjar Lord's Battleplate
	[51213] = { [REDEEM] = REDEEM_T10, [CLASS_WARRIOR] = 51226 }, -- Sanctified Ymirjar Lord's Gauntlets
	[51212] = { [REDEEM] = REDEEM_T10, [CLASS_WARRIOR] = 51227 }, -- Sanctified Ymirjar Lord's Helmet
	[51211] = { [REDEEM] = REDEEM_T10, [CLASS_WARRIOR] = 51228 }, -- Sanctified Ymirjar Lord's Legplates
	[51210] = { [REDEEM] = REDEEM_T10, [CLASS_WARRIOR] = 51229 }, -- Sanctified Ymirjar Lord's Shoulderplates
	
	-- Tier 10 Mail Exchange
	[50118] = { [REDEEM] = REDEEM_T10, [CLASS_HUNTER] = 51150 }, -- Sanctified Ahn'Kahar Blood Hunter's Tunic
	[50117] = { [REDEEM] = REDEEM_T10, [CLASS_HUNTER] = 51151 }, -- Sanctified Ahn'Kahar Blood Hunter's Spaulders
	[50116] = { [REDEEM] = REDEEM_T10, [CLASS_HUNTER] = 51152 }, -- Sanctified Ahn'Kahar Blood Hunter's Legguards
	[50115] = { [REDEEM] = REDEEM_T10, [CLASS_HUNTER] = 51153 }, -- Sanctified Ahn'Kahar Blood Hunter's Headpiece
	[50114] = { [REDEEM] = REDEEM_T10, [CLASS_HUNTER] = 51154 }, -- Sanctified Ahn'Kahar Blood Hunter's Handguards
	[51154] = { [REDEEM] = REDEEM_T10, [CLASS_HUNTER] = 51285 }, -- Sanctified Ahn'Kahar Blood Hunter's Handguards
	[51153] = { [REDEEM] = REDEEM_T10, [CLASS_HUNTER] = 51286 }, -- Sanctified Ahn'Kahar Blood Hunter's Headpiece
	[51152] = { [REDEEM] = REDEEM_T10, [CLASS_HUNTER] = 51287 }, -- Sanctified Ahn'Kahar Blood Hunter's Legguards
	[51151] = { [REDEEM] = REDEEM_T10, [CLASS_HUNTER] = 51288 }, -- Sanctified Ahn'Kahar Blood Hunter's Spaulders
	[51150] = { [REDEEM] = REDEEM_T10, [CLASS_HUNTER] = 51289 }, -- Sanctified Ahn'Kahar Blood Hunter's Tunic
	[50835] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51190 }, -- Sanctified Frost Witch's Tunic
	[50836] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51191 }, -- Sanctified Frost Witch's Handguards
	[50837] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51192 }, -- Sanctified Frost Witch's Headpiece
	[50838] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51193 }, -- Sanctified Frost Witch's Legguards
	[50839] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51194 }, -- Sanctified Frost Witch's Spaulders
	[50830] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51195 }, -- Sanctified Frost Witch's Chestguard
	[50831] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51196 }, -- Sanctified Frost Witch's Grips
	[50832] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51197 }, -- Sanctified Frost Witch's Faceguard
	[50833] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51198 }, -- Sanctified Frost Witch's War-Kilt
	[50834] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51199 }, -- Sanctified Frost Witch's Shoulderguards
	[50841] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51200 }, -- Sanctified Frost Witch's Hauberk
	[50842] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51201 }, -- Sanctified Frost Witch's Gloves
	[50843] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51202 }, -- Sanctified Frost Witch's Helm
	[50844] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51203 }, -- Sanctified Frost Witch's Kilt
	[50845] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51204 }, -- Sanctified Frost Witch's Shoulderpads
	[51204] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51235 }, -- Sanctified Frost Witch's Shoulderpads
	[51203] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51236 }, -- Sanctified Frost Witch's Kilt
	[51202] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51237 }, -- Sanctified Frost Witch's Helm
	[51201] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51238 }, -- Sanctified Frost Witch's Gloves
	[51200] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51239 }, -- Sanctified Frost Witch's Hauberk
	[51199] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51240 }, -- Sanctified Frost Witch's Shoulderguards
	[51198] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51241 }, -- Sanctified Frost Witch's War-Kilt
	[51197] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51242 }, -- Sanctified Frost Witch's Faceguard
	[51196] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51243 }, -- Sanctified Frost Witch's Grips
	[51195] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51244 }, -- Sanctified Frost Witch's Chestguard
	[51194] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51245 }, -- Sanctified Frost Witch's Spaulders
	[51193] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51246 }, -- Sanctified Frost Witch's Legguards
	[51192] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51247 }, -- Sanctified Frost Witch's Headpiece
	[51191] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51248 }, -- Sanctified Frost Witch's Handguards
	[51190] = { [REDEEM] = REDEEM_T10, [CLASS_SHAMAN] = 51249 }, -- Sanctified Frost Witch's Tunic
	
	-- Tier 10 Leather Exchange
	[50113] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51135 }, -- Sanctified Lasherweave Pauldrons
	[50109] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51136 }, -- Sanctified Lasherweave Legplates
	[50108] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51137 }, -- Sanctified Lasherweave Helmet
	[50107] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51138 }, -- Sanctified Lasherweave Gauntlets
	[50106] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51139 }, -- Sanctified Lasherweave Robes
	[50824] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51140 }, -- Sanctified Lasherweave Shoulderpads
	[50828] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51141 }, -- Sanctified Lasherweave Raiment
	[50825] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51142 }, -- Sanctified Lasherweave Legguards
	[50826] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51143 }, -- Sanctified Lasherweave Headguard
	[50827] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51144 }, -- Sanctified Lasherweave Handgrips
	[50823] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51145 }, -- Sanctified Lasherweave Vestment
	[50820] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51146 }, -- Sanctified Lasherweave Trousers
	[50819] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51147 }, -- Sanctified Lasherweave Mantle
	[50822] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51148 }, -- Sanctified Lasherweave Gloves
	[50821] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51149 }, -- Sanctified Lasherweave Cover
	[51149] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51290 }, -- Sanctified Lasherweave Cover
	[51148] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51291 }, -- Sanctified Lasherweave Gloves
	[51147] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51292 }, -- Sanctified Lasherweave Mantle
	[51146] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51293 }, -- Sanctified Lasherweave Trousers
	[51145] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51294 }, -- Sanctified Lasherweave Vestment
	[51144] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51295 }, -- Sanctified Lasherweave Handgrips
	[51143] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51296 }, -- Sanctified Lasherweave Headguard
	[51142] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51297 }, -- Sanctified Lasherweave Legguards
	[51141] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51298 }, -- Sanctified Lasherweave Raiment
	[51140] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51299 }, -- Sanctified Lasherweave Shoulderpads
	[51139] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51300 }, -- Sanctified Lasherweave Robes
	[51138] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51301 }, -- Sanctified Lasherweave Gauntlets
	[51137] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51302 }, -- Sanctified Lasherweave Helmet
	[51136] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51303 }, -- Sanctified Lasherweave Legplates
	[51135] = { [REDEEM] = REDEEM_T10, [CLASS_DRUID] = 51304 }, -- Sanctified Lasherweave Pauldrons
	[50105] = { [REDEEM] = REDEEM_T10, [CLASS_ROGUE] = 51185 }, -- Sanctified Shadowblade Pauldrons
	[50090] = { [REDEEM] = REDEEM_T10, [CLASS_ROGUE] = 51186 }, -- Sanctified Shadowblade Legplates
	[50089] = { [REDEEM] = REDEEM_T10, [CLASS_ROGUE] = 51187 }, -- Sanctified Shadowblade Helmet
	[50088] = { [REDEEM] = REDEEM_T10, [CLASS_ROGUE] = 51188 }, -- Sanctified Shadowblade Gauntlets
	[50087] = { [REDEEM] = REDEEM_T10, [CLASS_ROGUE] = 51189 }, -- Sanctified Shadowblade Breastplate
	[51189] = { [REDEEM] = REDEEM_T10, [CLASS_ROGUE] = 51250 }, -- Sanctified Shadowblade Breastplate
	[51188] = { [REDEEM] = REDEEM_T10, [CLASS_ROGUE] = 51251 }, -- Sanctified Shadowblade Gauntlets
	[51187] = { [REDEEM] = REDEEM_T10, [CLASS_ROGUE] = 51252 }, -- Sanctified Shadowblade Helmet
	[51186] = { [REDEEM] = REDEEM_T10, [CLASS_ROGUE] = 51253 }, -- Sanctified Shadowblade Legplates
	[51185] = { [REDEEM] = REDEEM_T10, [CLASS_ROGUE] = 51254 }, -- Sanctified Shadowblade Pauldrons
	
	-- Tier 10 Cloth Exchange
	[50767] = { [REDEEM] = REDEEM_T10, [CLASS_PRIEST] = 51175 }, -- Sanctified Crimson Acolyte Shoulderpads
	[50768] = { [REDEEM] = REDEEM_T10, [CLASS_PRIEST] = 51176 }, -- Sanctified Crimson Acolyte Robe
	[50769] = { [REDEEM] = REDEEM_T10, [CLASS_PRIEST] = 51177 }, -- Sanctified Crimson Acolyte Leggings
	[50765] = { [REDEEM] = REDEEM_T10, [CLASS_PRIEST] = 51178 }, -- Sanctified Crimson Acolyte Hood
	[50766] = { [REDEEM] = REDEEM_T10, [CLASS_PRIEST] = 51179 }, -- Sanctified Crimson Acolyte Gloves
	[50394] = { [REDEEM] = REDEEM_T10, [CLASS_PRIEST] = 51180 }, -- Sanctified Crimson Acolyte Raiments
	[50393] = { [REDEEM] = REDEEM_T10, [CLASS_PRIEST] = 51181 }, -- Sanctified Crimson Acolyte Pants
	[50396] = { [REDEEM] = REDEEM_T10, [CLASS_PRIEST] = 51182 }, -- Sanctified Crimson Acolyte Mantle
	[50391] = { [REDEEM] = REDEEM_T10, [CLASS_PRIEST] = 51183 }, -- Sanctified Crimson Acolyte Handwraps
	[50392] = { [REDEEM] = REDEEM_T10, [CLASS_PRIEST] = 51184 }, -- Sanctified Crimson Acolyte Cowl
	[51184] = { [REDEEM] = REDEEM_T10, [CLASS_PRIEST] = 51255 }, -- Sanctified Crimson Acolyte Cowl
	[51183] = { [REDEEM] = REDEEM_T10, [CLASS_PRIEST] = 51256 }, -- Sanctified Crimson Acolyte Handwraps
	[51182] = { [REDEEM] = REDEEM_T10, [CLASS_PRIEST] = 51257 }, -- Sanctified Crimson Acolyte Mantle
	[51181] = { [REDEEM] = REDEEM_T10, [CLASS_PRIEST] = 51258 }, -- Sanctified Crimson Acolyte Pants
	[51180] = { [REDEEM] = REDEEM_T10, [CLASS_PRIEST] = 51259 }, -- Sanctified Crimson Acolyte Raiments
	[51179] = { [REDEEM] = REDEEM_T10, [CLASS_PRIEST] = 51260 }, -- Sanctified Crimson Acolyte Gloves
	[51178] = { [REDEEM] = REDEEM_T10, [CLASS_PRIEST] = 51261 }, -- Sanctified Crimson Acolyte Hood
	[51177] = { [REDEEM] = REDEEM_T10, [CLASS_PRIEST] = 51262 }, -- Sanctified Crimson Acolyte Leggings
	[51176] = { [REDEEM] = REDEEM_T10, [CLASS_PRIEST] = 51263 }, -- Sanctified Crimson Acolyte Robe
	[51175] = { [REDEEM] = REDEEM_T10, [CLASS_PRIEST] = 51264 }, -- Sanctified Crimson Acolyte Shoulderpads
	[50244] = { [REDEEM] = REDEEM_T10, [CLASS_WARLOCK] = 51205 }, -- Sanctified Dark Coven Shoulderpads
	[50243] = { [REDEEM] = REDEEM_T10, [CLASS_WARLOCK] = 51206 }, -- Sanctified Dark Coven Robe
	[50242] = { [REDEEM] = REDEEM_T10, [CLASS_WARLOCK] = 51207 }, -- Sanctified Dark Coven Leggings
	[50241] = { [REDEEM] = REDEEM_T10, [CLASS_WARLOCK] = 51208 }, -- Sanctified Dark Coven Hood
	[50240] = { [REDEEM] = REDEEM_T10, [CLASS_WARLOCK] = 51209 }, -- Sanctified Dark Coven Gloves
	[51209] = { [REDEEM] = REDEEM_T10, [CLASS_WARLOCK] = 51230 }, -- Sanctified Dark Coven Gloves
	[51208] = { [REDEEM] = REDEEM_T10, [CLASS_WARLOCK] = 51231 }, -- Sanctified Dark Coven Hood
	[51207] = { [REDEEM] = REDEEM_T10, [CLASS_WARLOCK] = 51232 }, -- Sanctified Dark Coven Leggings
	[51206] = { [REDEEM] = REDEEM_T10, [CLASS_WARLOCK] = 51233 }, -- Sanctified Dark Coven Robe
	[51205] = { [REDEEM] = REDEEM_T10, [CLASS_WARLOCK] = 51234 }, -- Sanctified Dark Coven Shoulderpads
	[51159] = { [REDEEM] = REDEEM_T10, [CLASS_MAGE] = 51280 }, -- Sanctified Bloodmage Gloves
	[51158] = { [REDEEM] = REDEEM_T10, [CLASS_MAGE] = 51281 }, -- Sanctified Bloodmage Hood
	[51157] = { [REDEEM] = REDEEM_T10, [CLASS_MAGE] = 51282 }, -- Sanctified Bloodmage Leggings
	[51156] = { [REDEEM] = REDEEM_T10, [CLASS_MAGE] = 51283 }, -- Sanctified Bloodmage Robe
	[51155] = { [REDEEM] = REDEEM_T10, [CLASS_MAGE] = 51284 }, -- Sanctified Bloodmage Shoulderpads
	[50279] = { [REDEEM] = REDEEM_T10, [CLASS_MAGE] = 51155 }, -- Sanctified Bloodmage Shoulderpads
	[50278] = { [REDEEM] = REDEEM_T10, [CLASS_MAGE] = 51156 }, -- Sanctified Bloodmage Robe
	[50277] = { [REDEEM] = REDEEM_T10, [CLASS_MAGE] = 51157 }, -- Sanctified Bloodmage Leggings
	[50276] = { [REDEEM] = REDEEM_T10, [CLASS_MAGE] = 51158 }, -- Sanctified Bloodmage Hood
	[50275] = { [REDEEM] = REDEEM_T10, [CLASS_MAGE] = 51159 }, -- Sanctified Bloodmage Gloves
	--]]
	
	--[[ TIER 11 (BWD, BoT, ToFW) 
	-- Normal
	[63682] = { -- Helm of the Forlorn Vanquisher [Nefarian, Al'Akir NM]
		[NOTE] = NO_USE,
		[CLASS_ROGUE] = {}, [CLASS_DEATHKNIGHT] = {}, [CLASS_MAGE] = {}, [CLASS_DRUID] = {}
	},
	[64314] = { -- Mantle of the Forlorn Vanquisher [Cho'gall, Al'Akir NM]
		[NOTE] = NO_USE,
		[CLASS_ROGUE] = {}, [CLASS_DEATHKNIGHT] = {}, [CLASS_MAGE] = {}, [CLASS_DRUID] = {}
	},
	
	[63683] = { -- Helm of the Forlorn Conqueror [Nefarian, Al'Akir NM]
		[NOTE] = NO_USE,
		[CLASS_PALADIN] = {}, [CLASS_PRIEST] = {}, [CLASS_WARLOCK] = {}
	},
	[64315] = { -- Mantle of the Forlorn Conqueror [Cho'gall, Al'Akir NM]
		[NOTE] = NO_USE,
		[CLASS_PALADIN] = {}, [CLASS_PRIEST] = {}, [CLASS_WARLOCK] = {}
	},
	
	[63684] = { -- Helm of the Forlorn Protector [Nefarian, Al'Akir NM]
		[NOTE] = NO_USE,
		[CLASS_WARRIOR] = {}, [CLASS_HUNTER] = {}, [CLASS_SHAMAN] = {}
	},
	[64316] = { -- Mantle of the Forlorn Protector [Cho'gall, Al'Akir NM]
		[NOTE] = NO_USE,
		[CLASS_WARRIOR] = {}, [CLASS_HUNTER] = {}, [CLASS_SHAMAN] = {}
	},
	
	-- Heroic
	[65000] = { -- Crown of the Forlorn Protector [Nefarian, Al'Akir HM]
		[CLASS_WARRIOR] = {65266, 65271},
		[CLASS_HUNTER] = 65206,
		[CLASS_SHAMAN] = {65246, 65251, 65256},
	},
	[65087] = { -- Shoulders of the Forlorn Protector [Cho'gall, Al'Akir HM]
		[CLASS_WARRIOR] = {65268, 65273},
		[CLASS_HUNTER] = 65208,
		[CLASS_SHAMAN] = {65248, 65253, 65258},
	},
	[67424] = { -- Chest of the Forlorn Protector [Halfus HM]
		[CLASS_WARRIOR] = {65269, 65264},
		[CLASS_HUNTER] = 65204,
		[CLASS_SHAMAN] = {65254, 65249, 65244},
	},
	[67427] = { -- Leggings of the Forlorn Protector [Maloriak HM]
		[CLASS_WARRIOR] = {65267, 65272},
		[CLASS_HUNTER] = 65207,
		[CLASS_SHAMAN] = {65257, 65252, 65247},
	},
	[67430] = { -- Gauntlets of the Forlorn Protector [Magmaw HM]
		[CLASS_WARRIOR] = {65265, 65270},
		[CLASS_HUNTER] = 65205,
		[CLASS_SHAMAN] = {65255, 65245, 65250},
	},
	
	[65001] = { -- Crown of the Forlorn Conqueror [Nefarian, Al'Akir HM]
		[CLASS_PALADIN] = {65216, 65221, 65226},
		[CLASS_PRIEST] = {65230, 65235},
		[CLASS_WARLOCK] = 65260,
	},
	[65088] = { -- Shoulders of the Forlorn Conqueror [Cho'gall, Al'Akir HM]
		[CLASS_PALADIN] = {65218, 65223, 65228},
		[CLASS_PRIEST] = {65233, 65238},
		[CLASS_WARLOCK] = 65263,
	},
	[67423] = { -- Chest of the Forlorn Conqueror [Halfus HM]
		[CLASS_PALADIN] = {65224, 65219, 65214},
		[CLASS_PRIEST] = {65237, 65232},
		[CLASS_WARLOCK] = 65262,
	},
	[67428] = { -- Leggings of the Forlorn Conqueror [Maloriak HM]
		[CLASS_PALADIN] = {65227, 65222, 65217},
		[CLASS_PRIEST] = {65236, 65231},
		[CLASS_WARLOCK] = 65261,
	},
	[67429] = { -- Gauntlets of the Forlorn Conqueror [Magmaw HM]
		[CLASS_PALADIN] = {65215, 65220, 65225},
		[CLASS_PRIEST] = {65229, 65234},
		[CLASS_WARLOCK] = 65259,
	},
	
	[65002] = { -- Crown of the Forlorn Vanquisher [Nefarian, Al'Akir HM]
		[CLASS_ROGUE] = 65241,
		[CLASS_DEATHKNIGHT] = {65181, 65186},
		[CLASS_MAGE] = 65210,
		[CLASS_DRUID] = {65190, 65195, 65200},
	},
	[65089] = { -- Shoulders of the Forlorn Vanquisher [Cho'gall, Al'Akir HM]
		[CLASS_ROGUE] = 65243,
		[CLASS_DEATHKNIGHT] = {65183, 65188},
		[CLASS_MAGE] = 65213,
		[CLASS_DRUID] = {65193, 65198, 65203},
	},
	[67425] = { -- Chest of the Forlorn Vanquisher [Halfus HM]
		[CLASS_ROGUE] = 65239,
		[CLASS_DEATHKNIGHT] = {65184, 65179},
		[CLASS_MAGE] = 65212,
		[CLASS_DRUID] = {65202, 65197, 65192},
	},
	[67426] = { -- Leggings of the Forlorn Vanquisher [Maloriak HM]
		[CLASS_ROGUE] = 65242,
		[CLASS_DEATHKNIGHT] = {65187, 65182},
		[CLASS_MAGE] = 65211,
		[CLASS_DRUID] = {65201, 65196, 65191},
	},
	[67431] = { -- Gauntlets of the Forlorn Vanquisher [Magmaw HM]
		[CLASS_ROGUE] = 65240,
		[CLASS_DEATHKNIGHT] = {65180, 65185},
		[CLASS_MAGE] = 65209,
		[CLASS_DRUID] = {65194, 65199, 65189},
	},
	
	[66998] = { -- Essence of the Forlorn [Al'Akir HM]
		[REDEEM] = REDEEM_T11,
		[LINK] = {65000, 65087, 67424, 67427, 67430, 65001, 65088, 67423, 67428, 67429, 65002, 65089, 67425, 67426, 67431},
	},
	--]]
	
	--[[ TIER 12 (FL) 
	-- Normal
	[71668] = { -- Helm of the Fiery Vanquisher [Ragnaros NM]
		[NOTE] = NO_USE,
		[CLASS_ROGUE] = {}, [CLASS_DEATHKNIGHT] = {}, [CLASS_MAGE] = {}, [CLASS_DRUID] = {}
	},
	[71674] = { -- Mantle of the Fiery Vanquisher [Staghelm NM]
		[NOTE] = NO_USE,
		[CLASS_ROGUE] = {}, [CLASS_DEATHKNIGHT] = {}, [CLASS_MAGE] = {}, [CLASS_DRUID] = {}
	},
	
	[71675] = { -- Helm of the Fiery Conqueror [Ragnaros NM]
		[NOTE] = NO_USE,
		[CLASS_PALADIN] = {}, [CLASS_PRIEST] = {}, [CLASS_WARLOCK] = {}
	},
	[71681] = { -- Mantle of the Fiery Conqueror [Staghelm NM]
		[NOTE] = NO_USE,
		[CLASS_PALADIN] = {}, [CLASS_PRIEST] = {}, [CLASS_WARLOCK] = {}
	},
	
	[71682] = { -- Helm of the Fiery Protector [Ragnaros NM]
		[NOTE] = NO_USE,
		[CLASS_WARRIOR] = {}, [CLASS_HUNTER] = {}, [CLASS_SHAMAN] = {}
	},
	[71688] = { -- Mantle of the Fiery Protector [Staghelm NM]
		[NOTE] = NO_USE,
		[CLASS_WARRIOR] = {}, [CLASS_HUNTER] = {}, [CLASS_SHAMAN] = {}
	},
	
	-- Heroic
	[71670] = { -- Crown of the Fiery Vanquisher [Ragnaros HM]
		[CLASS_ROGUE] = 71539,
		[CLASS_DEATHKNIGHT] = {71478, 71483},
		[CLASS_MAGE] = 71508,
		[CLASS_DRUID] = {71488, 71492, 71497},
	},
	[71673] = { -- Shoulders of the Fiery Vanquisher [Staghelm HM]
		[CLASS_ROGUE] = 71541,
		[CLASS_DEATHKNIGHT] = {71480, 71485},
		[CLASS_MAGE] = 71511,
		[CLASS_DRUID] = {71490, 71495, 71500},
	},
	[71672] = { -- Chest of the Fiery Vanquisher [Alysrazor HM]
		[CLASS_ROGUE] = 71537,
		[CLASS_DEATHKNIGHT] = {71476, 71481},
		[CLASS_MAGE] = 71510,
		[CLASS_DRUID] = {71486, 71494, 71499},
	},
	[71669] = { -- Gauntlets of the Fiery Vanquisher [Baleroc HM]
		[CLASS_ROGUE] = 71538,
		[CLASS_DEATHKNIGHT] = {71477, 71482},
		[CLASS_MAGE] = 71507,
		[CLASS_DRUID] = {71487, 71491, 71496},
	},
	[71671] = { -- Leggings of the Fiery Vanquisher [Shannox HM]
		[CLASS_ROGUE] = 71540,
		[CLASS_DEATHKNIGHT] = {71479, 71484},
		[CLASS_MAGE] = 71509,
		[CLASS_DRUID] = {71489, 71493, 71498},
	},
	
	[71677] = { -- Crown of the Fiery Conqueror [Ragnaros HM]
		[CLASS_PALADIN] = {71514, 71519, 71524},
		[CLASS_PRIEST] = {71528, 71533},
		[CLASS_WARLOCK] = 71595,
	},
	[71680] = { -- Shoulders of the Fiery Conqueror [Staghelm HM]
		[CLASS_PALADIN] = {71516, 71521, 71526},
		[CLASS_PRIEST] = {71531, 71536},
		[CLASS_WARLOCK] = 71598,
	},
	[71679] = { -- Chest of the Fiery Conqueror [Alysrazor HM]
		[CLASS_PALADIN] = {71522, 71512, 71517},
		[CLASS_PRIEST] = {71530, 71535},
		[CLASS_WARLOCK] = 71597,
	},
	[71676] = { -- Gauntlets of the Fiery Conqueror [Baleroc HM]
		[CLASS_PALADIN] = {71513, 71518, 71523},
		[CLASS_PRIEST] = {71527, 71532},
		[CLASS_WARLOCK] = 71594,
	},
	[71678] = { -- Leggings of the Fiery Conqueror [Shannox HM]
		[CLASS_PALADIN] = {71515, 71520, 71525},
		[CLASS_PRIEST] = {71529, 71534},
		[CLASS_WARLOCK] = 71596,
	},
	
	[71684] = { -- Crown of the Fiery Protector [Ragnaros HM]
		[CLASS_WARRIOR] = {71599, 71606},
		[CLASS_HUNTER] = 71503,
		[CLASS_SHAMAN] = {71544, 71549, 71554},
	},
	[71687] = { -- Shoulders of the Fiery Protector [Staghelm HM]
		[CLASS_WARRIOR] = {71603, 71608},
		[CLASS_HUNTER] = 71505,
		[CLASS_SHAMAN] = {71556, 71546, 71551},
	},
	[71686] = { -- Chest of the Fiery Protector [Alysrazor HM]
		[CLASS_WARRIOR] = {71600, 71604},
		[CLASS_HUNTER] = 71501,
		[CLASS_SHAMAN] = {71542, 71547, 71552},
	},
	[71683] = { -- Gauntlets of the Fiery Protector [Baleroc HM]
		[CLASS_WARRIOR] = {71605, 71601},
		[CLASS_HUNTER] = 71502,
		[CLASS_SHAMAN] = {71543, 71548, 71553},
	},
	[71685] = { -- Leggings of the Fiery Protector [Shannox HM]
		[CLASS_WARRIOR] = {71602, 71607},
		[CLASS_HUNTER] = 71504,
		[CLASS_SHAMAN] = {71545, 71550, 71555},
	},
	
	[71617] = { -- Crystallized Firestone
		[REDEEM] = REDEEM_T12_BOE,
		[CLASS_DEATHKNIGHT] = {71562, 71557},
		[CLASS_DEMONHUNTER] = {71562, 71641},
		[CLASS_DRUID] = {71557, 71559, 71560, 71641},
		[CLASS_HUNTER] = {71562, 71557, 71559, 71560, 71558, 71561},
		[CLASS_MAGE] = {71559, 71560, 71579, 71575},
		[CLASS_MONK] = {71562, 71557, 71559, 71641},
		[CLASS_PALADIN] = {71562, 71557},
		[CLASS_PRIEST] = {71559, 71560, 71579, 71575},
		[CLASS_ROGUE] = {71562, 71560, 71558, 71641},
		[CLASS_SHAMAN] = {71562, 71559, 71560, 71561},
		[CLASS_WARLOCK] = {71559, 71560, 71579, 71575},
		[CLASS_WARRIOR] = {71562, 71557, 71559, 71560, 71558},
	},
	
	[71150] = { -- Scorchvine Wand (Wand)
		[REDEEM] = REDEEM_T12_BOE, 
		[CLASS_MAGE] = 71579, [CLASS_PRIEST] = 71579, [CLASS_WARLOCK] = 71579, 
	},
	[71151] = { -- Trail of Embers (Wand)
		[REDEEM] = REDEEM_T12_BOE, 
		[CLASS_MAGE] = 71575, [CLASS_PRIEST] = 71575, [CLASS_WARLOCK] = 71575, 
	},
	[71359] = { -- Chelley's Sterilized Scalpel (Dagger)
		[REDEEM] = REDEEM_T12_BOE, 
		[CLASS_DRUID] = 71560, [CLASS_HUNTER] = 71560, [CLASS_MAGE] = 71560, [CLASS_PRIEST] = 71560, 
		[CLASS_ROGUE] = 71560, [CLASS_SHAMAN] = 71560, [CLASS_WARLOCK] = 71560, [CLASS_WARRIOR] = 71560, 
	},
	[71360] = { -- Spire of Scarlet Pain (Staff)
		[REDEEM] = REDEEM_T12_BOE, 
		[CLASS_DRUID] = 71559, [CLASS_HUNTER] = 71559, [CLASS_MAGE] = 71559, [CLASS_MONK] = 71559, 
		[CLASS_PRIEST] = 71559, [CLASS_SHAMAN] = 71559, [CLASS_WARLOCK] = 71559, [CLASS_WARRIOR] = 71559, 
	},
	[71361] = { -- Ranseur of Hatred (Polearm)
		[REDEEM] = REDEEM_T12_BOE, 
		[CLASS_DEATHKNIGHT] = 71557, [CLASS_DRUID] = 71557, [CLASS_HUNTER] = 71557, 
		[CLASS_MONK] = 71557, [CLASS_PALADIN] = 71557, [CLASS_WARRIOR] = 71557, 
	},
	[71362] = { -- Obsidium Cleaver (1H Axe)
		[REDEEM] = REDEEM_T12_BOE, 
		[CLASS_DEATHKNIGHT] = 71562, [CLASS_DEMONHUNTER] = 71562, [CLASS_HUNTER] = 71562, [CLASS_MONK] = 71562, 
		[CLASS_PALADIN] = 71562, [CLASS_ROGUE] = 71562, [CLASS_SHAMAN] = 71562, [CLASS_WARRIOR] = 71562, 
	},
	[71365] = { -- Hide-Bound Chains (Mail Wrist)
		[REDEEM] = REDEEM_T12_BOE, 
		[MAIL] = 71561, 
	},
	[71366] = { -- Lava Bolt Crossbow (Crossbow)
		[REDEEM] = REDEEM_T12_BOE, 
		[CLASS_HUNTER] = 71558, [CLASS_ROGUE] = 71558, [CLASS_WARRIOR] = 71558, 
	},
	[71640] = { -- Riplimb's Lost Collar (Leather Waist)
		[REDEEM] = REDEEM_T12_BOE, 
		[LEATHER] = 71641, 
	},
	--]]
	
	--[[ TIER 13 (DS) 
	-- Raid Finder
	[78868] = { -- Crown of the Corrupted Vanquisher [Blackhorn, ... LFR]
		[CLASS_ROGUE] = 78794,
		[CLASS_DEATHKNIGHT] = {78782, 78792},
		[CLASS_MAGE] = 78796,
		[CLASS_DRUID] = {78785, 78789, 78791},
	},
	[78874] = { -- Shoulders of the Corrupted Vanquisher [Hagara, ... LFR]
		[CLASS_ROGUE] = 78833,
		[CLASS_DEATHKNIGHT] = {78846, 78831},
		[CLASS_MAGE] = 78843,
		[CLASS_DRUID] = {78838, 78839, 78835},
	},
	[78862] = { -- Chest of the Corrupted Vanquisher [Ultraxion, ... LFR]
		[CLASS_ROGUE] = 78759,
		[CLASS_DEATHKNIGHT] = {78754, 78758},
		[CLASS_MAGE] = 78824,
		[CLASS_DRUID] = {78755, 78757, 78760},
	},
	[78865] = { -- Gauntlets of the Corrupted Vanquisher [Zon'ozz, ... LFR]
		[CLASS_ROGUE] = 78774,
		[CLASS_DEATHKNIGHT] = {78765, 78773},
		[CLASS_MAGE] = 78766,
		[CLASS_DRUID] = {78771, 78775, 78779},
	},
	[78871] = { -- Leggings of the Corrupted Vanquisher [Yor'sahj, ... LFR]
		[CLASS_ROGUE] = 78803,
		[CLASS_DEATHKNIGHT] = {78802, 78811},
		[CLASS_MAGE] = 78815,
		[CLASS_DRUID] = {78805, 78808, 78809},
	},
	
	[78870] = { -- Crown of the Corrupted Protector [Blackhorn, ... LFR]
		[CLASS_WARRIOR] = {78783, 78784},
		[CLASS_HUNTER] = 78793,
		[CLASS_SHAMAN] = {78780, 78781, 78786},
	},
	[78876] = { -- Shoulders of the Corrupted Protector [Hagara, ... LFR]
		[CLASS_WARRIOR] = {78829, 78830},
		[CLASS_HUNTER] = 78832,
		[CLASS_SHAMAN] = {78828, 78834, 78836},
	},
	[78864] = { -- Chest of the Corrupted Protector [Ultraxion, ... LFR]
		[CLASS_WARRIOR] = {78752, 78753},
		[CLASS_HUNTER] = 78756,
		[CLASS_SHAMAN] = {78818, 78819, 78820},
	},
	[78867] = { -- Gauntlets of the Corrupted Protector [Zon'ozz, ... LFR]
		[CLASS_WARRIOR] = {78763, 78764},
		[CLASS_HUNTER] = 78769,
		[CLASS_SHAMAN] = {78761, 78762, 78767},
	},
	[78873] = { -- Leggings of the Corrupted Protector [Yor'sahj, ... LFR]
		[CLASS_WARRIOR] = {78800, 78801},
		[CLASS_HUNTER] = 78804,
		[CLASS_SHAMAN] = {78799, 78806, 78813},
	},
	
	[78869] = { -- Crown of the Corrupted Conqueror [Blackhorn, ... LFR]
		[CLASS_PALADIN] = {78787, 78788, 78790},
		[CLASS_PRIEST] = {78795, 78798},
		[CLASS_WARLOCK] = 78797,
	},
	[78875] = { -- Shoulders of the Corrupted Conqueror [Hagara, ... LFR]
		[CLASS_PALADIN] = {78840, 78841, 78837},
		[CLASS_PRIEST] = {78842, 78845},
		[CLASS_WARLOCK] = 78844,
	},
	[78863] = { -- Chest of the Corrupted Conqueror [Ultraxion, ... LFR]
		[CLASS_PALADIN] = {78821, 78822, 78827},
		[CLASS_PRIEST] = {78823, 78826},
		[CLASS_WARLOCK] = 78825,
	},
	[78866] = { -- Gauntlets of the Corrupted Conqueror [Zon'ozz, ... LFR]
		[CLASS_PALADIN] = {78768, 78770, 78772},
		[CLASS_PRIEST] = {78777, 78778},
		[CLASS_WARLOCK] = 78776,
	},
	[78872] = { -- Leggings of the Corrupted Conqueror [Yor'sahj, ... LFR]
		[CLASS_PALADIN] = {78807, 78810, 78812},
		[CLASS_PRIEST] = {78814, 78817},
		[CLASS_WARLOCK] = 78816,
	},
	
	-- Normal
	[78172] = { -- Crown of the Corrupted Vanquisher [Blackhorn NM]
		[CLASS_ROGUE] = 77025,
		[CLASS_DEATHKNIGHT] = {76976, 77010},
		[CLASS_MAGE] = 76213,
		[CLASS_DRUID] = {76750, 77015, 77019},
	},
	[78170] = { -- Shoulders of the Corrupted Vanquisher [Hagara NM]
		[CLASS_ROGUE] = 77027,
		[CLASS_DEATHKNIGHT] = {76978, 77012},
		[CLASS_MAGE] = 76216,
		[CLASS_DRUID] = {76753, 77017, 77022},
	},
	[78174] = { -- Chest of the Corrupted Vanquisher [Ultraxion NM]
		[CLASS_ROGUE] = 77023,
		[CLASS_DEATHKNIGHT] = {76974, 77008},
		[CLASS_MAGE] = 76215,
		[CLASS_DRUID] = {76752, 77013, 77021},
	},
	[78173] = { -- Gauntlets of the Corrupted Vanquisher [Zon'ozz NM]
		[CLASS_ROGUE] = 77024,
		[CLASS_DEATHKNIGHT] = {76975, 77009},
		[CLASS_MAGE] = 76212,
		[CLASS_DRUID] = {76749, 77014, 77018},
	},
	[78171] = { -- Leggings of the Corrupted Vanquisher [Yor'sahj NM]
		[CLASS_ROGUE] = 77026,
		[CLASS_DEATHKNIGHT] = {76977, 77011},
		[CLASS_MAGE] = 76214,
		[CLASS_DRUID] = {77016, 77020, 76751},
	},
	
	[78177] = { -- Crown of the Corrupted Protector [Blackhorn NM]
		[CLASS_WARRIOR] = {76983, 76990},
		[CLASS_HUNTER] = 77030,
		[CLASS_SHAMAN] = {76758, 77037, 77042},
	},
	[78175] = { -- Shoulders of the Corrupted Protector [Hagara NM]
		[CLASS_WARRIOR] = {76987, 76992},
		[CLASS_HUNTER] = 77032,
		[CLASS_SHAMAN] = {76760, 77035, 77044},
	},
	[78179] = { -- Chest of the Corrupted Protector [Ultraxion NM]
		[CLASS_WARRIOR] = {76984, 76988},
		[CLASS_HUNTER] = 77028,
		[CLASS_SHAMAN] = {76756, 77039, 77040},
	},
	[78178] = { -- Gauntlets of the Corrupted Protector [Zon'ozz NM]
		[CLASS_WARRIOR] = {76985, 76989},
		[CLASS_HUNTER] = 77029,
		[CLASS_SHAMAN] = {76757, 77038, 77041},
	},
	[78176] = { -- Leggings of the Corrupted Protector [Yor'sahj NM]
		[CLASS_WARRIOR] = {76986, 76991},
		[CLASS_HUNTER] = 77031,
		[CLASS_SHAMAN] = {76759, 77036, 77043},
	},
	
	[78182] = { -- Crown of the Corrupted Conqueror [Blackhorn NM]
		[CLASS_PALADIN] = {76767, 76876, 77005},
		[CLASS_PRIEST] = {76347, 76358},
		[CLASS_WARLOCK] = 76342,
	},
	[78180] = { -- Shoulders of the Corrupted Conqueror [Hagara NM]
		[CLASS_PALADIN] = {76769, 76878, 77007},
		[CLASS_PRIEST] = {76344, 76361},
		[CLASS_WARLOCK] = 76339,
	},
	[78184] = { -- Chest of the Corrupted Conqueror [Ultraxion NM]
		[CLASS_PALADIN] = {76765, 76874, 77003},
		[CLASS_PRIEST] = {76345, 76360},
		[CLASS_WARLOCK] = 76340,
	},
	[78183] = { -- Gauntlets of the Corrupted Conqueror [Zon'ozz NM]
		[CLASS_PALADIN] = {76766, 76875, 77004},
		[CLASS_PRIEST] = {76348, 76357},
		[CLASS_WARLOCK] = 76343,
	},
	[78181] = { -- Leggings of the Corrupted Conqueror [Yor'sahj NM]
		[CLASS_PALADIN] = {76768, 76877, 77006},
		[CLASS_PRIEST] = {76346, 76359},
		[CLASS_WARLOCK] = 76341,
	},
	
	-- Heroic
	[78852] = { -- Crown of the Corrupted Vanquisher [Blackhorn HM]
		[CLASS_ROGUE] = 78699,
		[CLASS_DEATHKNIGHT] = {78687, 78697},
		[CLASS_MAGE] = 78701,
		[CLASS_DRUID] = {78690, 78694, 78696},
	},
	[78861] = { -- Shoulders of the Corrupted Vanquisher [Hagara HM]
		[CLASS_ROGUE] = 78738,
		[CLASS_DEATHKNIGHT] = {78736, 78751},
		[CLASS_MAGE] = 78748,
		[CLASS_DRUID] = {78740, 78743, 78744},
	},
	[78849] = { -- Chest of the Corrupted Vanquisher [Ultraxion HM]
		[CLASS_ROGUE] = 78664,
		[CLASS_DEATHKNIGHT] = {78659, 78663},
		[CLASS_MAGE] = 78729,
		[CLASS_DRUID] = {78660, 78662, 78665},
	},
	[78855] = { -- Gauntlets of the Corrupted Vanquisher [Zon'ozz HM]
		[CLASS_ROGUE] = 78679,
		[CLASS_DEATHKNIGHT] = {78670, 78678},
		[CLASS_MAGE] = 78671,
		[CLASS_DRUID] = {78676, 78680, 78684},
	},
	[78858] = { -- Leggings of the Corrupted Vanquisher [Yor'sahj HM]
		[CLASS_ROGUE] = 78708,
		[CLASS_DEATHKNIGHT] = {78716, 78707},
		[CLASS_MAGE] = 78720,
		[CLASS_DRUID] = {78710, 78713, 78714},
	},
	
	[78851] = { -- Crown of the Corrupted Protector [Blackhorn HM]
		[CLASS_WARRIOR] = {78688, 78689},
		[CLASS_HUNTER] = 78698,
		[CLASS_SHAMAN] = {78685, 78686, 78691},
	},
	[78860] = { -- Shoulders of the Corrupted Protector [Hagara HM]
		[CLASS_WARRIOR] = {78734, 78735},
		[CLASS_HUNTER] = 78737,
		[CLASS_SHAMAN] = {78739, 78741, 78733},
	},
	[78848] = { -- Chest of the Corrupted Protector [Ultraxion HM]
		[CLASS_WARRIOR] = {78658, 78657},
		[CLASS_HUNTER] = 78661,
		[CLASS_SHAMAN] = {78723, 78724, 78725},
	},
	[78854] = { -- Gauntlets of the Corrupted Protector [Zon'ozz HM]
		[CLASS_WARRIOR] = {78668, 78669},
		[CLASS_HUNTER] = 78674,
		[CLASS_SHAMAN] = {78666, 78667, 78672},
	},
	[78857] = { -- Leggings of the Corrupted Protector [Yor'sahj HM]
		[CLASS_WARRIOR] = {78705, 78706},
		[CLASS_HUNTER] = 78709,
		[CLASS_SHAMAN] = {78704, 78711, 78718},
	},
	
	[78850] = { -- Crown of the Corrupted Conqueror [Blackhorn HM]
		[CLASS_PALADIN] = {78692, 78693, 78695},
		[CLASS_PRIEST] = {78700, 78703},
		[CLASS_WARLOCK] = 78702,
	},
	[78859] = { -- Shoulders of the Corrupted Conqueror [Hagara HM]
		[CLASS_PALADIN] = {78742, 78745, 78746},
		[CLASS_PRIEST] = {78747, 78750},
		[CLASS_WARLOCK] = 78749,
	},
	[78847] = { -- Chest of the Corrupted Conqueror [Ultraxion HM]
		[CLASS_PALADIN] = {78726, 78727, 78732},
		[CLASS_PRIEST] = {78728, 78731},
		[CLASS_WARLOCK] = 78730,
	},
	[78853] = { -- Gauntlets of the Corrupted Conqueror [Zon'ozz HM]
		[CLASS_PALADIN] = {78673, 78675, 78677},
		[CLASS_PRIEST] = {78682, 78683},
		[CLASS_WARLOCK] = 78681,
	},
	[78856] = { -- Leggings of the Corrupted Conqueror [Yor'sahj HM]
		[CLASS_PALADIN] = {78712, 78715, 78717},
		[CLASS_PRIEST] = {78719, 78722},
		[CLASS_WARLOCK] = 78721,
	},
	--]]
	
	--[[ TIER 14 (HoF, ToES) 
	-- Raid Finder
	[89273] = { -- Helm of the Shadowy Vanquisher [Sha of Fear LFR]
		[REDEEM] = REDEEM_T14,
		[CLASS_ROGUE] = 86641,
		[CLASS_DEATHKNIGHT] = {86656, 86676},
		[CLASS_MAGE] = 86717,
		[CLASS_DRUID] = {86647, 86651, 86697, 86721},
	},
	[89276] = { -- Shoulders of the Shadowy Vanquisher [Lei Shi LFR]
		[REDEEM] = REDEEM_T14,
		[CLASS_ROGUE] = 86639,
		[CLASS_DEATHKNIGHT] = {86654, 86674},
		[CLASS_MAGE] = 86714,
		[CLASS_DRUID] = {86644, 86649, 86694, 86723},
	},
	[89264] = { -- Chest of the Shadowy Vanquisher [Shek'zeer LFR]
		[REDEEM] = REDEEM_T14,
		[CLASS_ROGUE] = 86643,
		[CLASS_DEATHKNIGHT] = {86658, 86678},
		[CLASS_MAGE] = 86715,
		[CLASS_DRUID] = {86719, 86645, 86653, 86695},
	},
	[89270] = { -- Gauntlets of the Shadowy Vanquisher [Mel'jarak LFR]
		[REDEEM] = REDEEM_T14,
		[CLASS_ROGUE] = 86642,
		[CLASS_DEATHKNIGHT] = {86657, 86677},
		[CLASS_MAGE] = 86718,
		[CLASS_DRUID] = {86648, 86652, 86698, 86720},
	},
	[89267] = { -- Leggings of the Shadowy Vanquisher [Un'sok LFR]
		[REDEEM] = REDEEM_T14,
		[CLASS_ROGUE] = 86640,
		[CLASS_DEATHKNIGHT] = {86655, 86675},
		[CLASS_MAGE] = 86716,
		[CLASS_DRUID] = {86646, 86650, 86696, 86722},
	},
	
	[89274] = { -- Helm of the Shadowy Conqueror [Sha of Fear LFR]
		[REDEEM] = REDEEM_T14,
		[CLASS_PALADIN] = {86661, 86681, 86686},
		[CLASS_PRIEST] = {86702, 86705},
		[CLASS_WARLOCK] = 86710,
	},
	[89277] = { -- Shoulders of the Shadowy Conqueror [Lei Shi LFR]
		[REDEEM] = REDEEM_T14,
		[CLASS_PALADIN] = {86659, 86679, 86684},
		[CLASS_PRIEST] = {86699, 86708},
		[CLASS_WARLOCK] = 86713,
	},
	[89265] = { -- Chest of the Shadowy Conqueror [Shek'zeer LFR]
		[REDEEM] = REDEEM_T14,
		[CLASS_PALADIN] = {86663, 86683, 86688},
		[CLASS_PRIEST] = {86700, 86707},
		[CLASS_WARLOCK] = 86712,
	},
	[89271] = { -- Gauntlets of the Shadowy Conqueror [Mel'jarak LFR]
		[REDEEM] = REDEEM_T14,
		[CLASS_PALADIN] = {86662, 86682, 86687},
		[CLASS_PRIEST] = {86703, 86704},
		[CLASS_WARLOCK] = 86709,
	},
	[89268] = { -- Leggings of the Shadowy Conqueror [Un'sok LFR]
		[REDEEM] = REDEEM_T14,
		[CLASS_PALADIN] = {86660, 86680, 86685},
		[CLASS_PRIEST] = {86706, 86701},
		[CLASS_WARLOCK] = 86711,
	},
	
	[89275] = { -- Helm of the Shadowy Protector [Sha of Fear LFR]
		[REDEEM] = REDEEM_T14,
		[CLASS_WARRIOR] = {86666, 86673},
		[CLASS_HUNTER] = 86636,
		[CLASS_SHAMAN] = {86626, 86631, 86691},
		[CLASS_MONK] = {86726, 86730, 86736},
	},
	[89278] = { -- Shoulders of the Shadowy Protector [Lei Shi LFR]
		[REDEEM] = REDEEM_T14,
		[CLASS_WARRIOR] = {86664, 86669},
		[CLASS_HUNTER] = 86634,
		[CLASS_SHAMAN] = {86624, 86633, 86689},
		[CLASS_MONK] = {86724, 86733, 86738},
	},
	[89266] = { -- Chest of the Shadowy Protector [Shek'zeer LFR]
		[REDEEM] = REDEEM_T14,
		[CLASS_WARRIOR] = {86668, 86672},
		[CLASS_HUNTER] = 86638,
		[CLASS_SHAMAN] = {86693, 86628, 86629},
		[CLASS_MONK] = {86728, 86732, 86734},
	},
	[89272] = { -- Gauntlets of the Shadowy Protector [Mel'jarak LFR]
		[REDEEM] = REDEEM_T14,
		[CLASS_WARRIOR] = {86667, 86671},
		[CLASS_HUNTER] = 86637,
		[CLASS_SHAMAN] = {86627, 86630, 86692},
		[CLASS_MONK] = {86727, 86729, 86735},
	},
	[89269] = { -- Leggings of the Shadowy Protector [Un'sok LFR]
		[REDEEM] = REDEEM_T14,
		[CLASS_WARRIOR] = {86665, 86670},
		[CLASS_HUNTER] = 86635,
		[CLASS_SHAMAN] = {86632, 86690, 86625},
		[CLASS_MONK] = {86725, 86731, 86737},
	},
	
	-- Normal
	[89234] = { -- Helm of the Shadowy Vanquisher [Sha of Fear NM]
		[REDEEM] = REDEEM_T14,
		[CLASS_ROGUE] = 85301,
		[CLASS_DEATHKNIGHT] = {85316, 85336},
		[CLASS_MAGE] = 85377,
		[CLASS_DRUID] = {85307, 85311, 85357, 85381},
	},
	[89248] = { -- Shoulders of the Shadowy Vanquisher [Lei Shi NM]
		[REDEEM] = REDEEM_T14,
		[CLASS_ROGUE] = 85299,
		[CLASS_DEATHKNIGHT] = {85314, 85334},
		[CLASS_MAGE] = 85374,
		[CLASS_DRUID] = {85304, 85309, 85354, 85383},
	},
	[89239] = { -- Chest of the Shadowy Vanquisher [Shek'zeer NM]
		[REDEEM] = REDEEM_T14,
		[CLASS_ROGUE] = 85303,
		[CLASS_DEATHKNIGHT] = {85318, 85338},
		[CLASS_MAGE] = 85375,
		[CLASS_DRUID] = {85305, 85313, 85355, 85379},
	},
	[89242] = { -- Gauntlets of the Shadowy Vanquisher [Mel'jarak NM]
		[REDEEM] = REDEEM_T14,
		[CLASS_ROGUE] = 85302,
		[CLASS_DEATHKNIGHT] = {85317, 85337},
		[CLASS_MAGE] = 85378,
		[CLASS_DRUID] = {85308, 85312, 85358, 85380},
	},
	[89245] = { -- Leggings of the Shadowy Vanquisher [Un'sok NM]
		[REDEEM] = REDEEM_T14,
		[CLASS_ROGUE] = 85300,
		[CLASS_DEATHKNIGHT] = {85315, 85335},
		[CLASS_MAGE] = 85376,
		[CLASS_DRUID] = {85306, 85310, 85356, 85382},
	},
	
	[89235] = { -- Helm of the Shadowy Conqueror [Sha of Fear NM]
		[REDEEM] = REDEEM_T14,
		[CLASS_PALADIN] = {85321, 85341, 85346},
		[CLASS_PRIEST] = {85362, 85365},
		[CLASS_WARLOCK] = 85370,
	},
	[89246] = { -- Shoulders of the Shadowy Conqueror [Lei Shi NM]
		[REDEEM] = REDEEM_T14,
		[CLASS_PALADIN] = {85319, 85339, 85344},
		[CLASS_PRIEST] = {85359, 85368},
		[CLASS_WARLOCK] = 85373,
	},
	[89237] = { -- Chest of the Shadowy Conqueror [Shek'zeer NM]
		[REDEEM] = REDEEM_T14,
		[CLASS_PALADIN] = {85323, 85343, 85348},
		[CLASS_PRIEST] = {85360, 85367},
		[CLASS_WARLOCK] = 85372,
	},
	[89240] = { -- Gauntlets of the Shadowy Conqueror [Mel'jarak NM]
		[REDEEM] = REDEEM_T14,
		[CLASS_PALADIN] = {85322, 85342, 85347},
		[CLASS_PRIEST] = {85363, 85364},
		[CLASS_WARLOCK] = 85369,
	},
	[89243] = { -- Leggings of the Shadowy Conqueror [Un'sok NM]
		[REDEEM] = REDEEM_T14,
		[CLASS_PALADIN] = {85320, 85340, 85345},
		[CLASS_PRIEST] = {85361, 85366},
		[CLASS_WARLOCK] = 85371,
	},
	
	[89236] = { -- Helm of the Shadowy Protector [Sha of Fear NM]
		[REDEEM] = REDEEM_T14,
		[CLASS_WARRIOR] = {85326, 85333},
		[CLASS_HUNTER] = 85296,
		[CLASS_SHAMAN] = {85286, 85291, 85351},
		[CLASS_MONK] = {85386, 85390, 85396},
	},
	[89247] = { -- Shoulders of the Shadowy Protector [Lei Shi NM]
		[REDEEM] = REDEEM_T14,
		[CLASS_WARRIOR] = {85324, 85329},
		[CLASS_HUNTER] = 85294,
		[CLASS_SHAMAN] = {85284, 85293, 85349},
		[CLASS_MONK] = {85384, 85393, 85398},
	},
	[89238] = { -- Chest of the Shadowy Protector [Shek'zeer NM]
		[REDEEM] = REDEEM_T14,
		[CLASS_WARRIOR] = {85328, 85332},
		[CLASS_HUNTER] = 85298,
		[CLASS_SHAMAN] = {85288, 85289, 85353},
		[CLASS_MONK] = {85394, 85388, 85392},
	},
	[89241] = { -- Gauntlets of the Shadowy Protector [Mel'jarak NM]
		[REDEEM] = REDEEM_T14,
		[CLASS_WARRIOR] = {85327, 85331},
		[CLASS_HUNTER] = 85297,
		[CLASS_SHAMAN] = {85287, 85290, 85352},
		[CLASS_MONK] = {85387, 85389, 85395},
	},
	[89244] = { -- Leggings of the Shadowy Protector [Un'sok NM]
		[REDEEM] = REDEEM_T14,
		[CLASS_WARRIOR] = {85325, 85330},
		[CLASS_HUNTER] = 85295,
		[CLASS_SHAMAN] = {85285, 85292, 85350},
		[CLASS_MONK] = {85385, 85391, 85397},
	},
	
	-- Heroic
	[89258] = { -- Helm of the Shadowy Vanquisher [Sha of Fear HM]
		[REDEEM] = REDEEM_T14,
		[CLASS_ROGUE] = 87126,
		[CLASS_DEATHKNIGHT] = {86915, 86920},
		[CLASS_MAGE] = 87008,
		[CLASS_DRUID] = {86934, 86940, 86925, 86929},
	},
	[89261] = { -- Shoulders of the Shadowy Vanquisher [Lei Shi HM]
		[REDEEM] = REDEEM_T14,
		[CLASS_ROGUE] = 87128,
		[CLASS_DEATHKNIGHT] = {86917, 86922},
		[CLASS_MAGE] = 87011,
		[CLASS_DRUID] = {86927, 86932, 86937, 86942},
	},
	[89249] = { -- Chest of the Shadowy Vanquisher [Shek'zeer HM]
		[REDEEM] = REDEEM_T14,
		[CLASS_ROGUE] = 87124,
		[CLASS_DEATHKNIGHT] = {86913, 86918},
		[CLASS_MAGE] = 87010,
		[CLASS_DRUID] = {86923, 86931, 86936, 86938},
	},
	[89255] = { -- Gauntlets of the Shadowy Vanquisher [Mel'jarak HM]
		[REDEEM] = REDEEM_T14,
		[CLASS_ROGUE] = 87125,
		[CLASS_DEATHKNIGHT] = {86914, 86919},
		[CLASS_MAGE] = 87007,
		[CLASS_DRUID] = {86924, 86928, 86933, 86939},
	},
	[89252] = { -- Leggings of the Shadowy Vanquisher [Un'sok HM]
		[REDEEM] = REDEEM_T14,
		[CLASS_ROGUE] = 87127,
		[CLASS_DEATHKNIGHT] = {86916, 86921},
		[CLASS_MAGE] = 87009,
		[CLASS_DRUID] = {86926, 86930, 86935, 86941},
	},
	
	[89259] = { -- Helm of the Shadowy Conqueror [Sha of Fear HM]
		[REDEEM] = REDEEM_T14,
		[CLASS_PALADIN] = {87101, 87106, 87111},
		[CLASS_PRIEST] = {87115, 87120},
		[CLASS_WARLOCK] = 87188,
	},
	[89262] = { -- Shoulders of the Shadowy Conqueror [Lei Shi HM]
		[REDEEM] = REDEEM_T14,
		[CLASS_PALADIN] = {87103, 87108, 87113},
		[CLASS_PRIEST] = {87118, 87123},
		[CLASS_WARLOCK] = 87191,
	},
	[89250] = { -- Chest of the Shadowy Conqueror [Shek'zeer HM]
		[REDEEM] = REDEEM_T14,
		[CLASS_PALADIN] = {87099, 87104, 87109},
		[CLASS_PRIEST] = {87117, 87122},
		[CLASS_WARLOCK] = 87190,
	},
	[89256] = { -- Gauntlets of the Shadowy Conqueror [Mel'jarak HM]
		[REDEEM] = REDEEM_T14,
		[CLASS_PALADIN] = {87100, 87105, 87110},
		[CLASS_PRIEST] = {87114, 87119},
		[CLASS_WARLOCK] = 87187,
	},
	[89253] = { -- Leggings of the Shadowy Conqueror [Un'sok HM]
		[REDEEM] = REDEEM_T14,
		[CLASS_PALADIN] = {87102, 87107, 87112},
		[CLASS_PRIEST] = {87116, 87121},
		[CLASS_WARLOCK] = 87189,
	},
	
	[89260] = { -- Helm of the Shadowy Protector [Sha of Fear HM]
		[REDEEM] = REDEEM_T14,
		[CLASS_WARRIOR] = {87192, 87199},
		[CLASS_HUNTER] = 87004,
		[CLASS_SHAMAN] = {87131, 87136, 87141},
		[CLASS_MONK] = {87086, 87090, 87096},
	},
	[89263] = { -- Shoulders of the Shadowy Protector [Lei Shi HM]
		[REDEEM] = REDEEM_T14,
		[CLASS_WARRIOR] = {87196, 87201},
		[CLASS_HUNTER] = 87006,
		[CLASS_SHAMAN] = {87133, 87138, 87143},
		[CLASS_MONK] = {87088, 87093, 87098},
	},
	[89251] = { -- Chest of the Shadowy Protector [Shek'zeer HM]
		[REDEEM] = REDEEM_T14,
		[CLASS_WARRIOR] = {87193, 87197},
		[CLASS_HUNTER] = 87002,
		[CLASS_SHAMAN] = {87129, 87134, 87139},
		[CLASS_MONK] = {87084, 87092, 87094},
	},
	[89257] = { -- Gauntlets of the Shadowy Protector [Mel'jarak HM]
		[REDEEM] = REDEEM_T14,
		[CLASS_WARRIOR] = {87194, 87198},
		[CLASS_HUNTER] = 87003,
		[CLASS_SHAMAN] = {87130, 87135, 87140},
		[CLASS_MONK] = {87085, 87089, 87095},
	},
	[89254] = { -- Leggings of the Shadowy Protector [Un'sok HM]
		[REDEEM] = REDEEM_T14,
		[CLASS_WARRIOR] = {87195, 87200},
		[CLASS_HUNTER] = 87005,
		[CLASS_SHAMAN] = {87132, 87137, 87142},
		[CLASS_MONK] = {87087, 87091, 87097},
	},
	--]]
	
	--[[ TIER 15 (ToT) 
	-- Raid Finder
	[95879] = { -- Helm of the Crackling Vanquisher [Twin Consorts LFR]
		[REDEEM] = REDEEM_T15,
		[CLASS_ROGUE] = 95937,
		[CLASS_DEATHKNIGHT] = {95827, 95832},
		[CLASS_MAGE] = 95891,
		[CLASS_DRUID] = {95837, 95841, 95846, 95852},
	},
	[95955] = { -- Shoulders of the Crackling Vanquisher [Iron Qon LFR]
		[REDEEM] = REDEEM_T15,
		[CLASS_ROGUE] = 95939,
		[CLASS_DEATHKNIGHT] = {95834, 95829},
		[CLASS_MAGE] = 95894,
		[CLASS_DRUID] = {95839, 95844, 95849, 95854},
	},
	[95822] = { -- Chest of the Crackling Vanquisher [Dark Animus LFR]
		[REDEEM] = REDEEM_T15,
		[CLASS_ROGUE] = 95935,
		[CLASS_DEATHKNIGHT] = {95825, 95830},
		[CLASS_MAGE] = 95893,
		[CLASS_DRUID] = {95843, 95848, 95850, 95835},
	},
	[95855] = { -- Gauntlets of the Crackling Vanquisher [Council of Elders LFR]
		[REDEEM] = REDEEM_T15,
		[CLASS_ROGUE] = 95936,
		[CLASS_DEATHKNIGHT] = {95826, 95831},
		[CLASS_MAGE] = 95890,
		[CLASS_DRUID] = {95836, 95840, 95845, 95851},
	},
	[95887] = { -- Leggings of the Crackling Vanquisher [Ji-Kun LFR]
		[REDEEM] = REDEEM_T15,
		[CLASS_ROGUE] = 95938,
		[CLASS_DEATHKNIGHT] = {95828, 95833},
		[CLASS_MAGE] = 95892,
		[CLASS_DRUID] = {95838, 95842, 95847, 95853},
	},
	
	[95880] = { -- Helm of the Crackling Conqueror [Twin Consorts LFR]
		[REDEEM] = REDEEM_T15,
		[CLASS_PALADIN] = {95912, 95917, 95922},
		[CLASS_PRIEST] = {95926, 95931},
		[CLASS_WARLOCK] = 95982,
	},
	[95956] = { -- Shoulders of the Crackling Conqueror [Iron Qon LFR]
		[REDEEM] = REDEEM_T15,
		[CLASS_PALADIN] = {95924, 95914, 95919},
		[CLASS_PRIEST] = {95929, 95934},
		[CLASS_WARLOCK] = 95985,
	},
	[95823] = { -- Chest of the Crackling Conqueror [Dark Animus LFR]
		[REDEEM] = REDEEM_T15,
		[CLASS_PALADIN] = {95910, 95915, 95920},
		[CLASS_PRIEST] = {95928, 95933},
		[CLASS_WARLOCK] = 95984,
	},
	[95856] = { -- Gauntlets of the Crackling Conqueror [Council of Elders LFR]
		[REDEEM] = REDEEM_T15,
		[CLASS_PALADIN] = {95911, 95916, 95921},
		[CLASS_PRIEST] = {95925, 95930},
		[CLASS_WARLOCK] = 95981,
	},
	[95888] = { -- Leggings of the Crackling Conqueror [Ji-Kun LFR]
		[REDEEM] = REDEEM_T15,
		[CLASS_PALADIN] = {95913, 95918, 95923},
		[CLASS_PRIEST] = {95927, 95932},
		[CLASS_WARLOCK] = 95983,
	},
	
	[95881] = { -- Helm of the Crackling Protector [Twin Consorts LFR]
		[REDEEM] = REDEEM_T15,
		[CLASS_WARRIOR] = {95986, 95993},
		[CLASS_HUNTER] = 95884,
		[CLASS_SHAMAN] = {95942, 95947, 95952},
		[CLASS_MONK] = {95897, 95901, 95907},
	},
	[95957] = { -- Shoulders of the Crackling Protector [Iron Qon LFR]
		[REDEEM] = REDEEM_T15,
		[CLASS_WARRIOR] = {95990, 95995},
		[CLASS_HUNTER] = 95886,
		[CLASS_SHAMAN] = {95944, 95949, 95954},
		[CLASS_MONK] = {95899, 95904, 95909},
	},
	[95824] = { -- Chest of the Crackling Protector [Dark Animus LFR]
		[REDEEM] = REDEEM_T15,
		[CLASS_WARRIOR] = {95987, 95991},
		[CLASS_HUNTER] = 95882,
		[CLASS_SHAMAN] = {95940, 95945, 95950},
		[CLASS_MONK] = {95895, 95903, 95905},
	},
	[95857] = { -- Gauntlets of the Crackling Protector [Council of Elders LFR]
		[REDEEM] = REDEEM_T15,
		[CLASS_WARRIOR] = {95988, 95992},
		[CLASS_HUNTER] = 95883,
		[CLASS_SHAMAN] = {95941, 95946, 95951},
		[CLASS_MONK] = {95896, 95900, 95906},
	},
	[95889] = { -- Leggings of the Crackling Protector [Ji-Kun LFR]
		[REDEEM] = REDEEM_T15,
		[CLASS_WARRIOR] = {95989, 95994},
		[CLASS_HUNTER] = 95885,
		[CLASS_SHAMAN] = {95943, 95948, 95953},
		[CLASS_MONK] = {95898, 95902, 95908},
	},
	
	-- Normal
	[95571] = { -- Helm of the Crackling Vanquisher [Twin Consorts NM]
		[REDEEM] = REDEEM_T15,
		[CLASS_ROGUE] = 95307,
		[CLASS_DEATHKNIGHT] = {95227, 95232},
		[CLASS_MAGE] = 95261,
		[CLASS_DRUID] = {95237, 95241, 95246, 95252},
	},
	[95573] = { -- Shoulders of the Crackling Vanquisher [Iron Qon NM]
		[REDEEM] = REDEEM_T15,
		[CLASS_ROGUE] = 95309,
		[CLASS_DEATHKNIGHT] = {95229, 95234},
		[CLASS_MAGE] = 95264,
		[CLASS_DRUID] = {95239, 95244, 95249, 95254},
	},
	[95569] = { -- Chest of the Crackling Vanquisher [Dark Animus NM]
		[REDEEM] = REDEEM_T15,
		[CLASS_ROGUE] = 95305,
		[CLASS_DEATHKNIGHT] = {95225, 95230},
		[CLASS_MAGE] = 95263,
		[CLASS_DRUID] = {95235, 95243, 95248, 95250},
	},
	[95570] = { -- Gauntlets of the Crackling Vanquisher [Council of Elders NM]
		[REDEEM] = REDEEM_T15,
		[CLASS_ROGUE] = 95306,
		[CLASS_DEATHKNIGHT] = {95226, 95231},
		[CLASS_MAGE] = 95260,
		[CLASS_DRUID] = {95236, 95240, 95245, 95251},
	},
	[95572] = { -- Leggings of the Crackling Vanquisher [Ji-Kun NM]
		[REDEEM] = REDEEM_T15,
		[CLASS_ROGUE] = 95308,
		[CLASS_DEATHKNIGHT] = {95228, 95233},
		[CLASS_MAGE] = 95262,
		[CLASS_DRUID] = {95238, 95242, 95247, 95253},
	},
	
	[95577] = { -- Helm of the Crackling Conqueror [Twin Consorts NM]
		[REDEEM] = REDEEM_T15,
		[CLASS_PALADIN] = {95282, 95287, 95292},
		[CLASS_PRIEST] = {95296, 95301},
		[CLASS_WARLOCK] = 95326,
	},
	[95578] = { -- Shoulders of the Crackling Conqueror [Iron Qon NM]
		[REDEEM] = REDEEM_T15,
		[CLASS_PALADIN] = {95284, 95289, 95294},
		[CLASS_PRIEST] = {95299, 95304},
		[CLASS_WARLOCK] = 95329,
	},
	[95574] = { -- Chest of the Crackling Conqueror [Dark Animus NM]
		[REDEEM] = REDEEM_T15,
		[CLASS_PALADIN] = {95280, 95285, 95290},
		[CLASS_PRIEST] = {95298, 95303},
		[CLASS_WARLOCK] = 95328,
	},
	[95575] = { -- Gauntlets of the Crackling Conqueror [Council of Elders NM]
		[REDEEM] = REDEEM_T15,
		[CLASS_PALADIN] = {95281, 95286, 95291},
		[CLASS_PRIEST] = {95295, 95300},
		[CLASS_WARLOCK] = 95325,
	},
	[95576] = { -- Leggings of the Crackling Conqueror [Ji-Kun NM]
		[REDEEM] = REDEEM_T15,
		[CLASS_PALADIN] = {95283, 95288, 95293},
		[CLASS_PRIEST] = {95297, 95302},
		[CLASS_WARLOCK] = 95327,
	},
	
	[95582] = { -- Helm of the Crackling Protector [Twin Consorts NM]
		[REDEEM] = REDEEM_T15,
		[CLASS_WARRIOR] = {95330, 95337},
		[CLASS_HUNTER] = 95257,
		[CLASS_SHAMAN] = {95312, 95317, 95322},
		[CLASS_MONK] = {95267, 95271, 95277},
	},
	[95583] = { -- Shoulders of the Crackling Protector [Iron Qon NM]
		[REDEEM] = REDEEM_T15,
		[CLASS_WARRIOR] = {95334, 95339},
		[CLASS_HUNTER] = 95259,
		[CLASS_SHAMAN] = {95314, 95319, 95324},
		[CLASS_MONK] = {95269, 95274, 95279},
	},
	[95579] = { -- Chest of the Crackling Protector [Dark Animus NM]
		[REDEEM] = REDEEM_T15,
		[CLASS_WARRIOR] = {95331, 95335},
		[CLASS_HUNTER] = 95255,
		[CLASS_SHAMAN] = {95310, 95315, 95320},
		[CLASS_MONK] = {95265, 95273, 95275},
	},
	[95580] = { -- Gauntlets of the Crackling Protector [Council of Elders NM]
		[REDEEM] = REDEEM_T15,
		[CLASS_WARRIOR] = {95332, 95336},
		[CLASS_HUNTER] = 95256,
		[CLASS_SHAMAN] = {95311, 95316, 95321},
		[CLASS_MONK] = {95266, 95270, 95276},
	},
	[95581] = { -- Leggings of the Crackling Protector [Ji-Kun NM]
		[REDEEM] = REDEEM_T15,
		[CLASS_WARRIOR] = {95333, 95338},
		[CLASS_HUNTER] = 95258,
		[CLASS_SHAMAN] = {95313, 95318, 95323},
		[CLASS_MONK] = {95268, 95272, 95278},
	},
	
	-- Heroic
	[96623] = { -- Helm of the Crackling Vanquisher [Twin Consorts HM]
		[REDEEM] = REDEEM_T15,
		[CLASS_ROGUE] = 96681,
		[CLASS_DEATHKNIGHT] = {96571, 96576},
		[CLASS_MAGE] = 96635,
		[CLASS_DRUID] = {96581, 96585, 96590, 96596},
	},
	[96699] = { -- Shoulders of the Crackling Vanquisher [Iron Qon HM]
		[REDEEM] = REDEEM_T15,
		[CLASS_ROGUE] = 96683,
		[CLASS_DEATHKNIGHT] = {96573, 96578},
		[CLASS_MAGE] = 96638,
		[CLASS_DRUID] = {96583, 96588, 96593, 96598},
	},
	[96566] = { -- Chest of the Crackling Vanquisher [Dark Animus HM]
		[REDEEM] = REDEEM_T15,
		[CLASS_ROGUE] = 96679,
		[CLASS_DEATHKNIGHT] = {96569, 96574},
		[CLASS_MAGE] = 96637,
		[CLASS_DRUID] = {96579, 96587, 96592, 96594},
	},
	[96599] = { -- Gauntlets of the Crackling Vanquisher [Council of Elders HM]
		[REDEEM] = REDEEM_T15,
		[CLASS_ROGUE] = 96680,
		[CLASS_DEATHKNIGHT] = {96570, 96575},
		[CLASS_MAGE] = 96634,
		[CLASS_DRUID] = {96580, 96584, 96589, 96595},
	},
	[96631] = { -- Leggings of the Crackling Vanquisher [Ji-Kun HM]
		[REDEEM] = REDEEM_T15,
		[CLASS_ROGUE] = 96682,
		[CLASS_DEATHKNIGHT] = {96572, 96577},
		[CLASS_MAGE] = 96636,
		[CLASS_DRUID] = {96582, 96586, 96591, 96597},
	},
	
	[96624] = { -- Helm of the Crackling Conqueror [Twin Consorts HM]
		[REDEEM] = REDEEM_T15,
		[CLASS_PALADIN] = {96656, 96661, 96666},
		[CLASS_PRIEST] = {96670, 96675},
		[CLASS_WARLOCK] = 96726,
	},
	[96700] = { -- Shoulders of the Crackling Conqueror [Iron Qon HM]
		[REDEEM] = REDEEM_T15,
		[CLASS_PALADIN] = {96658, 96663, 96668},
		[CLASS_PRIEST] = {96673, 96678},
		[CLASS_WARLOCK] = 96729,
	},
	[96567] = { -- Chest of the Crackling Conqueror [Dark Animus HM]
		[REDEEM] = REDEEM_T15,
		[CLASS_PALADIN] = {96654, 96659, 96664},
		[CLASS_PRIEST] = {96672, 96677},
		[CLASS_WARLOCK] = 96728,
	},
	[96600] = { -- Gauntlets of the Crackling Conqueror [Council of Elders HM] ***
		[REDEEM] = REDEEM_T15,
		[CLASS_PALADIN] = {96655, 96660, 96665},
		[CLASS_PRIEST] = {96669, 96674},
		[CLASS_WARLOCK] = 96725,
	},
	[96632] = { -- Leggings of the Crackling Conqueror [Ji-Kun HM]
		[REDEEM] = REDEEM_T15,
		[CLASS_PALADIN] = {96657, 96662, 96667},
		[CLASS_PRIEST] = {96671, 96676},
		[CLASS_WARLOCK] = 96727,
	},
	
	[96625] = { -- Helm of the Crackling Protector [Twin Consorts HM]
		[REDEEM] = REDEEM_T15,
		[CLASS_WARRIOR] = {96730, 96737},
		[CLASS_HUNTER] = 96628,
		[CLASS_SHAMAN] = {96686, 96691, 96696},
		[CLASS_MONK] = {96641, 96645, 96651},
	},
	[96701] = { -- Shoulders of the Crackling Protector [Iron Qon HM]
		[REDEEM] = REDEEM_T15,
		[CLASS_WARRIOR] = {96734, 96739},
		[CLASS_HUNTER] = 96630,
		[CLASS_SHAMAN] = {96688, 96693, 96698},
		[CLASS_MONK] = {96643, 96648, 96653},
	},
	[96568] = { -- Chest of the Crackling Protector [Dark Animus HM]
		[REDEEM] = REDEEM_T15,
		[CLASS_WARRIOR] = {96731, 96735},
		[CLASS_HUNTER] = 96626,
		[CLASS_SHAMAN] = {96694, 96684, 96689},
		[CLASS_MONK] = {96639, 96647, 96649},
	},
	[96601] = { -- Gauntlets of the Crackling Protector [Council of Elders HM]
		[REDEEM] = REDEEM_T15,
		[CLASS_WARRIOR] = {96732, 96736},
		[CLASS_HUNTER] = 96627,
		[CLASS_SHAMAN] = {96695, 96685, 96690},
		[CLASS_MONK] = {96640, 96644, 96650},
	},
	[96633] = { -- Leggings of the Crackling Protector [Ji-Kun HM]
		[REDEEM] = REDEEM_T15,
		[CLASS_WARRIOR] = {96733, 96738},
		[CLASS_HUNTER] = 96629,
		[CLASS_SHAMAN] = {96687, 96692, 96697},
		[CLASS_MONK] = {96642, 96646, 96652},
	},
	--]]
	
	--[[ TIER 16 (SoO) 
	-- Raid Finder
	[99671] = { -- Helm of the Cursed Vanquisher [Thok LFR]
		[CLASS_ROGUE] = 99008,
		[CLASS_DEATHKNIGHT] = {99049, 99057},
		[CLASS_MAGE] = 99084,
		[CLASS_DRUID] = {98995, 99001, 99013, 99043},
	},
	[99668] = { -- Shoulders of the Cursed Vanquisher [Blackfuse LFR]
		[CLASS_ROGUE] = 99010,
		[CLASS_DEATHKNIGHT] = {99040, 99059},
		[CLASS_MAGE] = 99079,
		[CLASS_DRUID] = {98978, 98998, 99016, 99022},
	},
	[99677] = { -- Chest of the Cursed Vanquisher [Sha of Pride LFR]
		[CLASS_ROGUE] = 99006,
		[CLASS_DEATHKNIGHT] = {99060, 99066},
		[CLASS_MAGE] = 99078,
		[CLASS_DRUID] = {98997, 98999, 99015, 99041},
	},
	[99680] = { -- Gauntlets of the Cursed Vanquisher [Nazgrim LFR]
		[CLASS_ROGUE] = 99007,
		[CLASS_DEATHKNIGHT] = {99048, 99067},
		[CLASS_MAGE] = 99083,
		[CLASS_DRUID] = {98994, 99000, 99012, 99042},
	},
	[99674] = { -- Leggings of the Cursed Vanquisher [Paragons LFR]
		[CLASS_ROGUE] = 99009,
		[CLASS_DEATHKNIGHT] = {99039, 99058},
		[CLASS_MAGE] = 99077,
		[CLASS_DRUID] = {98981, 98996, 99014, 99044},
	},
	[105862] = { -- Essence of the Cursed Vanquisher [Garrosh LFR]
	},
	
	[99672] = { -- Helm of the Cursed Conqueror [Thok LFR]
		[CLASS_PALADIN] = {98979, 98985, 99029},
		[CLASS_PRIEST] = {99020, 99024},
		[CLASS_WARLOCK] = 99054,
	},
	[99669] = { -- Shoulders of the Cursed Conqueror [Blackfuse LFR]
		[CLASS_PALADIN] = {98987, 99027, 99076},
		[CLASS_PRIEST] = {99005, 99018},
		[CLASS_WARLOCK] = 99045,
	},
	[99678] = { -- Chest of the Cursed Conqueror [Sha of Pride LFR]
		[CLASS_PALADIN] = {99003, 99031, 99052},
		[CLASS_PRIEST] = {99004, 99017},
		[CLASS_WARLOCK] = 99056,
	},
	[99681] = { -- Gauntlets of the Cursed Conqueror [Nazgrim LFR]
		[CLASS_PALADIN] = {98982, 99002, 99028},
		[CLASS_PRIEST] = {99019, 99023},
		[CLASS_WARLOCK] = 99053,
	},
	[99675] = { -- Leggings of the Cursed Conqueror [Paragons LFR]
		[CLASS_PALADIN] = {99026, 98980, 98986},
		[CLASS_PRIEST] = {99025, 99021},
		[CLASS_WARLOCK] = 99055,
	},
	[105861] = { -- Essence of the Cursed Conqueror [Garrosh LFR]
	},
	
	[99673] = { -- Helm of the Cursed Protector [Thok LFR]
		[CLASS_WARRIOR] = {99032, 99046},
		[CLASS_HUNTER] = 99080,
		[CLASS_SHAMAN] = {99089, 98983, 98989},
		[CLASS_MONK] = {99065, 99069, 99073},
	},
	[99670] = { -- Shoulders of the Cursed Protector [Blackfuse LFR]
		[CLASS_WARRIOR] = {99030, 99036},
		[CLASS_HUNTER] = 99082,
		[CLASS_SHAMAN] = {99091, 98977, 98991},
		[CLASS_MONK] = {99051, 99062, 99075},
	},
	[99679] = { -- Chest of the Cursed Protector [Sha of Pride LFR]
		[CLASS_WARRIOR] = {99037, 99047},
		[CLASS_HUNTER] = 99085,
		[CLASS_SHAMAN] = {98992, 99011, 99087},
		[CLASS_MONK] = {99061, 99063, 99071},
	},
	[99667] = { -- Gauntlets of the Cursed Protector [Nazgrim LFR]
		[CLASS_WARRIOR] = {99034, 99038},
		[CLASS_HUNTER] = 99086,
		[CLASS_SHAMAN] = {98993, 99088, 98988},
		[CLASS_MONK] = {99064, 99068, 99072},
	},
	[99676] = { -- Leggings of the Cursed Protector [Paragons LFR]
		[CLASS_WARRIOR] = {99033, 99035},
		[CLASS_HUNTER] = 99081,
		[CLASS_SHAMAN] = {98984, 98990, 99090},
		[CLASS_MONK] = {99050, 99070, 99074},
	},
	[105860] = { -- Essence of the Cursed Protector [Garrosh LFR]
	},
	
	-- Normal
	[99748] = { -- Helm of the Cursed Vanquisher [Thok NM]
		[CLASS_ROGUE] = 99631,
		[CLASS_DEATHKNIGHT] = {99571, 99605},
		[CLASS_MAGE] = 99576,
		[CLASS_DRUID] = {99599, 99618, 99624, 99638},
	},
	[99754] = { -- Shoulders of the Cursed Vanquisher [Blackfuse NM]
		[CLASS_ROGUE] = 99635,
		[CLASS_DEATHKNIGHT] = {99639, 99652},
		[CLASS_MAGE] = 99659,
		[CLASS_DRUID] = {99664, 99583, 99589, 99621},
	},
	[99742] = { -- Chest of the Cursed Vanquisher [Sha of Pride NM]
		[CLASS_ROGUE] = 99629,
		[CLASS_DEATHKNIGHT] = {99608, 99640},
		[CLASS_MAGE] = 99658,
		[CLASS_DRUID] = {99582, 99620, 99622, 99632},
	},
	[99745] = { -- Gauntlets of the Cursed Vanquisher [Nazgrim NM]
		[CLASS_ROGUE] = 99630,
		[CLASS_DEATHKNIGHT] = {99604, 99609},
		[CLASS_MAGE] = 99575,
		[CLASS_DRUID] = {99623, 99633, 99637, 99617},
	},
	[99751] = { -- Leggings of the Cursed Vanquisher [Paragons NM]
		[CLASS_ROGUE] = 99634,
		[CLASS_DEATHKNIGHT] = {99564, 99572},
		[CLASS_MAGE] = 99657,
		[CLASS_DRUID] = {99581, 99600, 99610, 99619},
	},
	
	[99749] = { -- Helm of the Cursed Conqueror [Thok NM]
		[CLASS_PALADIN] = {99596, 99651, 99665},
		[CLASS_PRIEST] = {99587, 99591},
		[CLASS_WARLOCK] = 99568,
	},
	[99755] = { -- Shoulders of the Cursed Conqueror [Blackfuse NM]
		[CLASS_PALADIN] = {99594, 99656, 99662},
		[CLASS_PRIEST] = {99585, 99628},
		[CLASS_WARLOCK] = 99601,
	},
	[99743] = { -- Chest of the Cursed Conqueror [Sha of Pride NM]
		[CLASS_PALADIN] = {99566, 99598, 99626},
		[CLASS_PRIEST] = {99584, 99627},
		[CLASS_WARLOCK] = 99570,
	},
	[99746] = { -- Gauntlets of the Cursed Conqueror [Nazgrim NM]
		[CLASS_PALADIN] = {99595, 99625, 99648},
		[CLASS_PRIEST] = {99586, 99590},
		[CLASS_WARLOCK] = 99567,
	},
	[99752] = { -- Leggings of the Cursed Conqueror [Paragons NM]
		[CLASS_PALADIN] = {99593, 99661, 99666},
		[CLASS_PRIEST] = {99588, 99592},
		[CLASS_WARLOCK] = 99569,
	},
	
	[99750] = { -- Helm of the Cursed Protector [Thok NM]
		[CLASS_WARRIOR] = {99557, 99602},
		[CLASS_HUNTER] = 99660,
		[CLASS_SHAMAN] = {99612, 99645, 99649},
		[CLASS_MONK] = {99553, 99607, 99653},
	},
	[99756] = { -- Shoulders of the Cursed Protector [Blackfuse NM]
		[CLASS_WARRIOR] = {99561, 99597},
		[CLASS_HUNTER] = 99574,
		[CLASS_SHAMAN] = {99614, 99647, 99663},
		[CLASS_MONK] = {99565, 99642, 99655},
	},
	[99744] = { -- Chest of the Cursed Protector [Sha of Pride NM]
		[CLASS_WARRIOR] = {99562, 99603},
		[CLASS_HUNTER] = 99577,
		[CLASS_SHAMAN] = {99636, 99579, 99615},
		[CLASS_MONK] = {99641, 99643, 99555},
	},
	[99747] = { -- Gauntlets of the Cursed Protector [Nazgrim NM]
		[CLASS_WARRIOR] = {99559, 99563},
		[CLASS_HUNTER] = 99578,
		[CLASS_SHAMAN] = {99616, 99580, 99611},
		[CLASS_MONK] = {99644, 99552, 99556},
	},
	[99753] = { -- Leggings of the Cursed Protector [Paragons NM]
		[CLASS_WARRIOR] = {99558, 99560},
		[CLASS_HUNTER] = 99573,
		[CLASS_SHAMAN] = {99613, 99646, 99650},
		[CLASS_MONK] = {99554, 99606, 99654},
	},
	
	-- Heroic
	[99683] = { -- Helm of the Cursed Vanquisher [Thok HM]
		[CLASS_ROGUE] = 99114,
		[CLASS_DEATHKNIGHT] = {99190, 99194},
		[CLASS_MAGE] = 99161,
		[CLASS_DRUID] = {99164, 99175, 99178, 99182},
	},
	[99685] = { -- Shoulders of the Cursed Vanquisher [Blackfuse HM]
		[CLASS_ROGUE] = 99116,
		[CLASS_DEATHKNIGHT] = {99179, 99187},
		[CLASS_MAGE] = 99153,
		[CLASS_DRUID] = {99166, 99169, 99173, 99184},
	},
	[99696] = { -- Chest of the Cursed Vanquisher [Sha of Pride HM]
		[CLASS_ROGUE] = 99112,
		[CLASS_DEATHKNIGHT] = {99188, 99192},
		[CLASS_MAGE] = 99152,
		[CLASS_DRUID] = {99170, 99172, 99177, 99180},
	},
	[99682] = { -- Gauntlets of the Cursed Vanquisher [Nazgrim HM]
		[CLASS_ROGUE] = 99113,
		[CLASS_DEATHKNIGHT] = {99189, 99193},
		[CLASS_MAGE] = 99160,
		[CLASS_DRUID] = {99163, 99174, 99181, 99185},
	},
	[99684] = { -- Leggings of the Cursed Vanquisher [Paragons HM]
		[CLASS_ROGUE] = 99115,
		[CLASS_DEATHKNIGHT] = {99186, 99191},
		[CLASS_MAGE] = 99162,
		[CLASS_DRUID] = {99165, 99171, 99176, 99183},
	},
	
	[99689] = { -- Helm of the Cursed Conqueror [Thok HM]
		[CLASS_PALADIN] = {99128, 99135, 99138},
		[CLASS_PRIEST] = {99117, 99122},
		[CLASS_WARLOCK] = 99097,
	},
	[99690] = { -- Shoulders of the Cursed Conqueror [Blackfuse HM]
		[CLASS_PALADIN] = {99125, 99130, 99132},
		[CLASS_PRIEST] = {99111, 99120},
		[CLASS_WARLOCK] = 99205,
	},
	[99686] = { -- Chest of the Cursed Conqueror [Sha of Pride HM]
		[CLASS_PALADIN] = {99126, 99133, 99136},
		[CLASS_PRIEST] = {99110, 99119},
		[CLASS_WARLOCK] = 99204,
	},
	[99687] = { -- Gauntlets of the Cursed Conqueror [Nazgrim HM]
		[CLASS_PALADIN] = {99127, 99134, 99137},
		[CLASS_PRIEST] = {99121, 99131},
		[CLASS_WARLOCK] = 99096,
	},
	[99688] = { -- Leggings of the Cursed Conqueror [Paragons HM]
		[CLASS_PALADIN] = {99124, 99129, 99139},
		[CLASS_PRIEST] = {99118, 99123},
		[CLASS_WARLOCK] = 99098,
	},
	
	[99694] = { -- Helm of the Cursed Protector [Thok HM]
		[CLASS_WARRIOR] = {99203, 99206},
		[CLASS_HUNTER] = 99157,
		[CLASS_SHAMAN] = {99093, 99103, 99109},
		[CLASS_MONK] = {99142, 99148, 99156},
	},
	[99695] = { -- Shoulders of the Cursed Protector [Blackfuse HM]
		[CLASS_WARRIOR] = {99196, 99200},
		[CLASS_HUNTER] = 99159,
		[CLASS_SHAMAN] = {99095, 99100, 99105},
		[CLASS_MONK] = {99144, 99146, 99151},
	},
	[99691] = { -- Chest of the Cursed Protector [Sha of Pride HM]
		[CLASS_WARRIOR] = {99197, 99201},
		[CLASS_HUNTER] = 99167,
		[CLASS_SHAMAN] = {99101, 99106, 99107},
		[CLASS_MONK] = {99140, 99150, 99154},
	},
	[99692] = { -- Gauntlets of the Cursed Protector [Nazgrim HM]
		[CLASS_WARRIOR] = {99198, 99202},
		[CLASS_HUNTER] = 99168,
		[CLASS_SHAMAN] = {99092, 99102, 99108},
		[CLASS_MONK] = {99141, 99147, 99155},
	},
	[99693] = { -- Leggings of the Cursed Protector [Paragons HM]
		[CLASS_WARRIOR] = {99195, 99199},
		[CLASS_HUNTER] = 99158,
		[CLASS_SHAMAN] = {99094, 99099, 99104},
		[CLASS_MONK] = {99143, 99145, 99149},
	},
	
	-- Mythic
	[99723] = { -- Helm of the Cursed Vanquisher [Thok MM]
		[CLASS_ROGUE] = 99348,
		[CLASS_DEATHKNIGHT] = {99323, 99337},
		[CLASS_MAGE] = 99398,
		[CLASS_DRUID] = {99328, 99421, 99433, 99436},
	},
	[99717] = { -- Shoulders of the Cursed Vanquisher [Blackfuse MM]
		[CLASS_ROGUE] = 99350,
		[CLASS_DEATHKNIGHT] = {99325, 99339},
		[CLASS_MAGE] = 99401,
		[CLASS_DRUID] = {99322, 99423, 99428, 99431},
	},
	[99714] = { -- Chest of the Cursed Vanquisher [Sha of Pride MM]
		[CLASS_ROGUE] = 99356,
		[CLASS_DEATHKNIGHT] = {99330, 99335},
		[CLASS_MAGE] = 99400,
		[CLASS_DRUID] = {99326, 99419, 99427, 99430},
	},
	[99720] = { -- Gauntlets of the Cursed Vanquisher [Nazgrim MM]
		[CLASS_ROGUE] = 99355,
		[CLASS_DEATHKNIGHT] = {99331, 99336},
		[CLASS_MAGE] = 99397,
		[CLASS_DRUID] = {99327, 99420, 99432, 99435},
	},
	[99726] = { -- Leggings of the Cursed Vanquisher [Paragons MM]
		[CLASS_ROGUE] = 99349,
		[CLASS_DEATHKNIGHT] = {99324, 99338},
		[CLASS_MAGE] = 99399,
		[CLASS_DRUID] = {99329, 99422, 99429, 99434},
	},
	
	[99724] = { -- Helm of the Cursed Conqueror [Thok MM]
		[CLASS_PALADIN] = {99370, 99376, 99379},
		[CLASS_PRIEST] = {99360, 99366},
		[CLASS_WARLOCK] = 99425,
	},
	[99718] = { -- Shoulders of the Cursed Conqueror [Blackfuse MM]
		[CLASS_PALADIN] = {99364, 99373, 99378},
		[CLASS_PRIEST] = {99358, 99363},
		[CLASS_WARLOCK] = 99417,
	},
	[99715] = { -- Chest of the Cursed Conqueror [Sha of Pride MM]
		[CLASS_PALADIN] = {99368, 99374, 99387},
		[CLASS_PRIEST] = {99357, 99362},
		[CLASS_WARLOCK] = 99416,
	},
	[99721] = { -- Gauntlets of the Cursed Conqueror [Nazgrim MM]
		[CLASS_PALADIN] = {99369, 99375, 99380},
		[CLASS_PRIEST] = {99359, 99365},
		[CLASS_WARLOCK] = 99424,
	},
	[99712] = { -- Leggings of the Cursed Conqueror [Paragons MM]
		[CLASS_PALADIN] = {99371, 99372, 99377},
		[CLASS_PRIEST] = {99361, 99367},
		[CLASS_WARLOCK] = 99426,
	},
	
	[99725] = { -- Helm of the Cursed Protector [Thok MM]
		[CLASS_WARRIOR] = {99409, 99418},
		[CLASS_HUNTER] = 99402,
		[CLASS_SHAMAN] = {99332, 99341, 99353},
		[CLASS_MONK] = {99393, 99384, 99389},
	},
	[99719] = { -- Shoulders of the Cursed Protector [Blackfuse MM]
		[CLASS_WARRIOR] = {99407, 99414},
		[CLASS_HUNTER] = 99404,
		[CLASS_SHAMAN] = {99334, 99343, 99346},
		[CLASS_MONK] = {99381, 99386, 99395},
	},
	[99716] = { -- Chest of the Cursed Protector [Sha of Pride MM]
		[CLASS_WARRIOR] = {99411, 99415},
		[CLASS_HUNTER] = 99405,
		[CLASS_SHAMAN] = {99344, 99347, 99351},
		[CLASS_MONK] = {99382, 99391, 99396},
	},
	[99722] = { -- Gauntlets of the Cursed Protector [Nazgrim MM]
		[CLASS_WARRIOR] = {99408, 99412},
		[CLASS_HUNTER] = 99406,
		[CLASS_SHAMAN] = {99340, 99345, 99352},
		[CLASS_MONK] = {99383, 99388, 99392},
	},
	[99713] = { -- Leggings of the Cursed Protector [Paragons MM]
		[CLASS_WARRIOR] = {99410, 99413},
		[CLASS_HUNTER] = 99403,
		[CLASS_SHAMAN] = {99333, 99342, 99354},
		[CLASS_MONK] = {99385, 99390, 99394},
	},
	
	
	--]]
	
	--[[ TIER 17 (HM, BRF) 
	[119308] = { -- Helm of the Iron Conqueror [Kromog]
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120245] = TIER_17_MYTHIC, [120230] = 0, [120215] = TIER_17_HEROIC},
		[CLASS_PALADIN] = 115568, [CLASS_PRIEST] = 115563, [CLASS_WARLOCK] = 115586, 
	},
	[119309] = { -- Shoulders of the Iron Conqueror [Thogar]
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120246] = TIER_17_MYTHIC, [120231] = 0, [120216] = TIER_17_HEROIC},
		[CLASS_PALADIN] = 115565, [CLASS_PRIEST] = 115561, [CLASS_WARLOCK] = 115589, 
	},
	[119305] = { -- Chest of the Iron Conqueror [Ka'graz]
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120242] = TIER_17_MYTHIC, [120227] = 0, [120121] = TIER_17_HEROIC},
		[CLASS_PALADIN] = 115566, [CLASS_PRIEST] = 115560, [CLASS_WARLOCK] = 115588, 
	},
	[119306] = { -- Gauntlets of the Iron Conqueror [Iron Maidens]
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120243] = TIER_17_MYTHIC, [120228] = 0, [120213] = TIER_17_HEROIC},
		[CLASS_PALADIN] = 115567, [CLASS_PRIEST] = 115562, [CLASS_WARLOCK] = 115585, 
	},
	[119307] = { -- Leggings of the Iron Conqueror [Blast Furnace]
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120244] = TIER_17_MYTHIC, [120229] = 0, [120214] = TIER_17_HEROIC},
		[CLASS_PALADIN] = 115569, [CLASS_PRIEST] = 115564, [CLASS_WARLOCK] = 115587, 
	},
	
	[119312] = { -- Helm of the Iron Vanquisher [Kromog]
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120248] = TIER_17_MYTHIC, [120233] = 0, [120218] = TIER_17_HEROIC},
		[CLASS_DEATHKNIGHT] = 115539, [CLASS_DRUID] = 115542, [CLASS_MAGE] = 115553, [CLASS_ROGUE] = 115572, 
	},
	[119314] = { -- Shoulders of the Iron Vanquisher [Thogar]
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120250] = TIER_17_MYTHIC, [120235] = 0, [120220] = TIER_17_HEROIC},
		[CLASS_DEATHKNIGHT] = 115536, [CLASS_DRUID] = 115544, [CLASS_MAGE] = 115551, [CLASS_ROGUE] = 115574, 
	},
	[119315] = { -- Chest of the Iron Vanquisher [Ka'graz]
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120251] = TIER_17_MYTHIC, [120236] = 0, [120221] = TIER_17_HEROIC},
		[CLASS_DEATHKNIGHT] = 115537, [CLASS_DRUID] = 115540, [CLASS_MAGE] = 115550, [CLASS_ROGUE] = 115570, 
	},
	[119311] = { -- Gauntlets of the Iron Vanquisher [Iron Maidens]
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120247] = TIER_17_MYTHIC, [120232] = 0, [120217] = TIER_17_HEROIC},
		[CLASS_DEATHKNIGHT] = 115538, [CLASS_DRUID] = 115541, [CLASS_MAGE] = 115552, [CLASS_ROGUE] = 115571, 
	},
	[119313] = { -- Leggings of the Iron Vanquisher [Blast Furnace]
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120249] = TIER_17_MYTHIC, [120234] = 0, [120219] = TIER_17_HEROIC},
		[CLASS_DEATHKNIGHT] = 115535, [CLASS_DRUID] = 115543, [CLASS_MAGE] = 115554, [CLASS_ROGUE] = 115573, 
	},
	
	[119321] = { -- Helm of the Iron Protector [Kromog]
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120255] = TIER_17_MYTHIC, [120225] = 0, [120240] = TIER_17_HEROIC},
		[CLASS_WARRIOR] = 115584, [CLASS_MONK] = 115556, [CLASS_HUNTER] = 115545, [CLASS_SHAMAN] = 115579, 
	},
	[119322] = { -- Shoulders of the Iron Protector [Thogar]
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120256] = TIER_17_MYTHIC, [120226] = TIER_17_HEROIC, [120241] = 0},
		[CLASS_WARRIOR] = 115581, [CLASS_MONK] = 115559, [CLASS_HUNTER] = 115547, [CLASS_SHAMAN] = 115576, 
	},
	[119318] = { -- Chest of the Iron Protector [Ka'graz]
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120252] = TIER_17_MYTHIC, [120237] = TIER_17_HEROIC, [120222] = 0},
		[CLASS_WARRIOR] = 115582, [CLASS_MONK] = 115558, [CLASS_HUNTER] = 115548, [CLASS_SHAMAN] = 115577, 
	},
	[119319] = { -- Gauntlets of the Iron Protector [Iron Maidens]
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120253] = TIER_17_MYTHIC, [120238] = TIER_17_HEROIC, [120223] = 0},
		[CLASS_WARRIOR] = 115583, [CLASS_MONK] = 115555, [CLASS_HUNTER] = 115549, [CLASS_SHAMAN] = 115578, 
	},
	[119320] = { -- Leggings of the Iron Protector [Blast Furnace]
		[BONUS] = TIER_17_BONUS_LOOKUP,
		[DUPLICATE_BONUS] = {[120254] = TIER_17_MYTHIC, [120239] = TIER_17_HEROIC, [120224] = 0},
		[CLASS_WARRIOR] = 115580, [CLASS_MONK] = 115557, [CLASS_HUNTER] = 115546, [CLASS_SHAMAN] = 115575, 
	},
	--]]
	
	--[[ TIER 18 (HFC) 
	[127956] = { -- Helm of Hellfire's Conqueror [Kormrok]
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 139627, [CLASS_PALADIN] = 124333, [CLASS_PRIEST] = 124161, [CLASS_WARLOCK] = 124162, 
	},
	[127957] = { -- Shoulders of Hellfire's Conqueror [Xhul'horac]
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 139629, [CLASS_PALADIN] = 124345, [CLASS_PRIEST] = 124178, [CLASS_WARLOCK] = 124179, 
	},
	[127953] = { -- Chest of Hellfire's Conqueror [Mannoroth]
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 139625, [CLASS_PALADIN] = 124318, [CLASS_PRIEST] = 124172, [CLASS_WARLOCK] = 124173, 
	},
	[127954] = { -- Gauntlets of Hellfire's Conqueror [Socrethar]
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 139626, [CLASS_PALADIN] = 124328, [CLASS_PRIEST] = 124155, [CLASS_WARLOCK] = 124156, 
	},
	[127955] = { -- Leggings of Hellfire's Conqueror [Gorefiend]
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 139628, [CLASS_PALADIN] = 124339, [CLASS_PRIEST] = 124166, [CLASS_WARLOCK] = 124167, 
	},
	
	[127959] = { -- Helm of Hellfire's Vanquisher [Kormrok]
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 124332, [CLASS_DRUID] = 124261, [CLASS_MAGE] = 124160, [CLASS_ROGUE] = 124263, 
	},
	[127961] = { -- Shoulders of Hellfire's Vanquisher [Xhul'horac]
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 124344, [CLASS_DRUID] = 124272, [CLASS_MAGE] = 124177, [CLASS_ROGUE] = 124274, 
	},
	[127962] = { -- Chest of Hellfire's Vanquisher [Mannoroth]
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 124317, [CLASS_DRUID] = 124246, [CLASS_MAGE] = 124171, [CLASS_ROGUE] = 124248, 
	},
	[127958] = { -- Gauntlets of Hellfire's Vanquisher [Socrethar]
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 124327, [CLASS_DRUID] = 124255, [CLASS_MAGE] = 124154, [CLASS_ROGUE] = 124257, 
	},
	[127960] = { -- Leggings of Hellfire's Vanquisher [Gorefiend]
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 124338, [CLASS_DRUID] = 124267, [CLASS_MAGE] = 124165, [CLASS_ROGUE] = 124269, 
	},
	
	[127966] = { -- Helm of Hellfire's Protector [Kormrok]
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 124334, [CLASS_MONK] = 124262, [CLASS_HUNTER] = 124296, [CLASS_SHAMAN] = 124297, 
	},
	[127967] = { -- Shoulders of Hellfire's Protector [Xhul'horac]
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 124346, [CLASS_MONK] = 124273, [CLASS_HUNTER] = 124307, [CLASS_SHAMAN] = 124308, 
	},
	[127963] = { -- Chest of Hellfire's Protector [Mannoroth]
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 124319, [CLASS_MONK] = 124247, [CLASS_HUNTER] = 124284, [CLASS_SHAMAN] = 124303, 
	},
	[127964] = { -- Gauntlets of Hellfire's Protector [Socrethar]
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 124329, [CLASS_MONK] = 124256, [CLASS_HUNTER] = 124292, [CLASS_SHAMAN] = 124293, 
	},
	[127965] = { -- Leggings of Hellfire's Protector [Gorefiend]
		[BONUS] = TIER_18_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 124340, [CLASS_MONK] = 124268, [CLASS_HUNTER] = 124301, [CLASS_SHAMAN] = 124302, 
	},
	--]]
	
	--[[ TIER 19 (NH) 
	[143565] = { -- Helm of the Foreseen Conqueror [Elisande]
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 138378, [CLASS_PALADIN] = 138356, [CLASS_PRIEST] = 138313, [CLASS_WARLOCK] = 138314, 
	},
	[143566] = { -- Shoulders of the Foreseen Conqueror [Tichondrius]
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 138380, [CLASS_PALADIN] = 138362, [CLASS_PRIEST] = 138322, [CLASS_WARLOCK] = 138323, 
	},
	[143577] = { -- Cloak of the Foreseen Conqueror [Trilliax]
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 138375, [CLASS_PALADIN] = 138369, [CLASS_PRIEST] = 138370, [CLASS_WARLOCK] = 138373, 
	},
	[143562] = { -- Chest of the Foreseen Conqueror [Krosus]
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 138376, [CLASS_PALADIN] = 138350, [CLASS_PRIEST] = 138319, [CLASS_WARLOCK] = 138320, 
	},
	[143563] = { -- Gauntlets of the Foreseen Conqueror [Etraeus]
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 138377, [CLASS_PALADIN] = 138353, [CLASS_PRIEST] = 138310, [CLASS_WARLOCK] = 138311, 
	},
	[143564] = { -- Leggings of the Foreseen Conqueror [Gul'dan]
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 138379, [CLASS_PALADIN] = 138359, [CLASS_PRIEST] = 138316, [CLASS_WARLOCK] = 138317, 
	},
	
	[143568] = { -- Helm of the Foreseen Vanquisher [Elisande]
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 138355, [CLASS_DRUID] = 138330, [CLASS_MAGE] = 138312, [CLASS_ROGUE] = 138332, 
	},
	[143570] = { -- Shoulders of the Foreseen Vanquisher [Tichondrius]
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 138361, [CLASS_DRUID] = 138336, [CLASS_MAGE] = 138321, [CLASS_ROGUE] = 138338, 
	},
	[143578] = { -- Cloak of the Foreseen Vanquisher [Trilliax]
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 138364, [CLASS_DRUID] = 138366, [CLASS_MAGE] = 138365, [CLASS_ROGUE] = 138371, 
	},
	[143571] = { -- Chest of the Foreseen Vanquisher [Krosus]
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 138349, [CLASS_DRUID] = 138324, [CLASS_MAGE] = 138318, [CLASS_ROGUE] = 138326, 
	},
	[143567] = { -- Gauntlets of the Foreseen Vanquisher [Etraeus]
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 138352, [CLASS_DRUID] = 138327, [CLASS_MAGE] = 138309, [CLASS_ROGUE] = 138329, 
	},
	[143569] = { -- Leggings of the Foreseen Vanquisher [Gul'dan]
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 138358, [CLASS_DRUID] = 138333, [CLASS_MAGE] = 138315, [CLASS_ROGUE] = 138335, 
	},
	
	[143575] = { -- Helm of the Foreseen Protector [Elisande]
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 138357, [CLASS_MONK] = 138331, [CLASS_HUNTER] = 138342, [CLASS_SHAMAN] = 138343, 
	},
	[143576] = { -- Shoulders of the Foreseen Protector [Tichondrius]
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 138363, [CLASS_MONK] = 138337, [CLASS_HUNTER] = 138347, [CLASS_SHAMAN] = 138348, 
	},
	[143579] = { -- Cloak of the Foreseen Protector [Trilliax]
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 138374, [CLASS_MONK] = 138367, [CLASS_HUNTER] = 138368, [CLASS_SHAMAN] = 138372, 
	},
	[143572] = { -- Chest of the Foreseen Protector [Krosus]
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 138351, [CLASS_MONK] = 138325, [CLASS_HUNTER] = 138339, [CLASS_SHAMAN] = 138341, 
	},
	[143573] = { -- Gauntlets of the Foreseen Protector [Etraeus]
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 138354, [CLASS_MONK] = 138328, [CLASS_HUNTER] = 138340, [CLASS_SHAMAN] = 138341, 
	},
	[143574] = { -- Leggings of the Foreseen Protector [Gul'dan]
		[BONUS] = TIER_19_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 138360, [CLASS_MONK] = 138334, [CLASS_HUNTER] = 138344, [CLASS_SHAMAN] = 138345, 
	},
	--]]
	
	--[[ TIER 20 (ToS) 
	[147322] = { -- Helm of the Foregone Vanquisher [Demonic Inquisition]
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 147124, [CLASS_DRUID] = 147136, [CLASS_MAGE] = 147147, [CLASS_ROGUE] = 147172, 
	},
	[147328] = { -- Shoulders of the Foregone Vanquisher [Fallen Avatar]
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 147126, [CLASS_DRUID] = 147138, [CLASS_MAGE] = 147150, [CLASS_ROGUE] = 147174, 
	},
	[147331] = { -- Cloak of the Foregone Vanquisher [Desolate Host]
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 147122, [CLASS_DRUID] = 147134, [CLASS_MAGE] = 147145, [CLASS_ROGUE] = 147170, 
	},
	[147316] = { -- Chest of the Foregone Vanquisher [Maiden of Vigilance]
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 147121, [CLASS_DRUID] = 147133, [CLASS_MAGE] = 147149, [CLASS_ROGUE] = 147169, 
	},
	[147319] = { -- Gauntlets of the Foregone Vanquisher [Harjatan]
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 147123, [CLASS_DRUID] = 147135, [CLASS_MAGE] = 147146, [CLASS_ROGUE] = 147171, 
	},
	[147325] = { -- Leggings of the Foregone Vanquisher [Sassz'ine]
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 147125, [CLASS_DRUID] = 147137, [CLASS_MAGE] = 147148, [CLASS_ROGUE] = 147173, 
	},
	
	[147323] = { -- Helm of the Foregone Conqueror [Demonic Inquisition]
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 147130, [CLASS_PALADIN] = 147160, [CLASS_PRIEST] = 147165, [CLASS_WARLOCK] = 147183, 
	},
	[147329] = { -- Shoulders of the Foregone Conqueror [Fallen Avatar]
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 147132, [CLASS_PALADIN] = 147162, [CLASS_PRIEST] = 147168, [CLASS_WARLOCK] = 147186, 
	},
	[147332] = { -- Cloak of the Foregone Conqueror [Desolate Host]
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 147128, [CLASS_PALADIN] = 147158, [CLASS_PRIEST] = 147163, [CLASS_WARLOCK] = 147181, 
	},
	[147317] = { -- Chest of the Foregone Conqueror [Maiden of Vigilance]
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 147127, [CLASS_PALADIN] = 147157, [CLASS_PRIEST] = 147167, [CLASS_WARLOCK] = 147185, 
	},
	[147320] = { -- Gauntlets of the Foregone Conqueror [Harjatan]
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 147129, [CLASS_PALADIN] = 147159, [CLASS_PRIEST] = 147164, [CLASS_WARLOCK] = 147182, 
	},
	[147326] = { -- Leggings of the Foregone Conqueror [Sassz'ine]
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 147131, [CLASS_PALADIN] = 147161, [CLASS_PRIEST] = 147166, [CLASS_WARLOCK] = 147184, 
	},
	
	[147324] = { -- Helm of the Foregone Protector [Demonic Inquisition]
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 147190, [CLASS_MONK] = 147154, [CLASS_HUNTER] = 147142, [CLASS_SHAMAN] = 147178, 
	},
	[147330] = { -- Shoulders of the Foregone Protector [Fallen Avatar]
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 147192, [CLASS_MONK] = 147156, [CLASS_HUNTER] = 147144, [CLASS_SHAMAN] = 147180, 
	},
	[147333] = { -- Cloak of the Foregone Protector [Desolate Host]
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 147188, [CLASS_MONK] = 147152, [CLASS_HUNTER] = 147140, [CLASS_SHAMAN] = 147176, 
	},
	[147318] = { -- Chest of the Foregone Protector [Maiden of Vigilance]
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 147187, [CLASS_MONK] = 147151, [CLASS_HUNTER] = 147139, [CLASS_SHAMAN] = 147175, 
	},
	[147321] = { -- Gauntlets of the Foregone Protector [Harjatan]
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 147189, [CLASS_MONK] = 147153, [CLASS_HUNTER] = 147141, [CLASS_SHAMAN] = 147177, 
	},
	[147327] = { -- Leggings of the Foregone Protector [Sassz'ine]
		[BONUS] = TIER_20_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 147191, [CLASS_MONK] = 147155, [CLASS_HUNTER] = 147143, [CLASS_SHAMAN] = 147179, 
	},
	--]]
	
	--[[ TIER 21 (Antorus) 
	[152526] = { -- Helm of the Antoran Protector [Aggramar]
		[BONUS] = TIER_21_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 152181, [CLASS_MONK] = 152145, [CLASS_HUNTER] = 152133, [CLASS_SHAMAN] = 152169, 
	},
	[152532] = { -- Shoulders of the Antoran Protector [Coven of Shivarra]
		[BONUS] = TIER_21_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 152183, [CLASS_MONK] = 152147, [CLASS_HUNTER] = 152135, [CLASS_SHAMAN] = 152171, 
	},
	[152515] = { -- Cloak of the Antoran Protector [Antoran High Command]
		[BONUS] = TIER_21_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 152179, [CLASS_MONK] = 152143, [CLASS_HUNTER] = 152131, [CLASS_SHAMAN] = 152167, 
	},
	[152520] = { -- Chest of the Antoran Protector [Eonar]
		[BONUS] = TIER_21_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 152178, [CLASS_MONK] = 152142, [CLASS_HUNTER] = 152130, [CLASS_SHAMAN] = 152166, 
	},
	[152523] = { -- Gauntlets of the Antoran Protector [Kin'garoth]
		[BONUS] = TIER_21_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 152180, [CLASS_MONK] = 152144, [CLASS_HUNTER] = 152132, [CLASS_SHAMAN] = 152168, 
	},
	[152529] = { -- Leggings of the Antoran Protector [Imonar]
		[BONUS] = TIER_21_BONUS_LOOKUP,
		[CLASS_WARRIOR] = 152182, [CLASS_MONK] = 152146, [CLASS_HUNTER] = 152134, [CLASS_SHAMAN] = 152170, 
	},
	
	[152525] = { -- Helm of the Antoran Conqueror [Aggramar]
		[BONUS] = TIER_21_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 152121, [CLASS_PALADIN] = 152151, [CLASS_PRIEST] = 152156, [CLASS_WARLOCK] = 152174, 
	},
	[152531] = { -- Shoulders of the Antoran Conqueror [Coven of Shivarra]
		[BONUS] = TIER_21_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 152123, [CLASS_PALADIN] = 152153, [CLASS_PRIEST] = 152159, [CLASS_WARLOCK] = 152177, 
	},
	[152516] = { -- Cloak of the Antoran Conqueror [Antoran High Command]
		[BONUS] = TIER_21_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 152119, [CLASS_PALADIN] = 152149, [CLASS_PRIEST] = 152154, [CLASS_WARLOCK] = 152172, 
	},
	[152519] = { -- Chest of the Antoran Conqueror [Eonar]
		[BONUS] = TIER_21_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 152118, [CLASS_PALADIN] = 152148, [CLASS_PRIEST] = 152158, [CLASS_WARLOCK] = 152176, 
	},
	[152522] = { -- Gauntlets of the Antoran Conqueror [Kin'garoth]
		[BONUS] = TIER_21_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 152120, [CLASS_PALADIN] = 152150, [CLASS_PRIEST] = 152155, [CLASS_WARLOCK] = 152173, 
	},
	[152528] = { -- Leggings of the Antoran Conqueror [Imonar]
		[BONUS] = TIER_21_BONUS_LOOKUP,
		[CLASS_DEMONHUNTER] = 152122, [CLASS_PALADIN] = 152152, [CLASS_PRIEST] = 152157, [CLASS_WARLOCK] = 152175, 
	},
	
	[152524] = { -- Helm of the Antoran Vanquisher [Aggramar]
		[BONUS] = TIER_21_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 152115, [CLASS_DRUID] = 152127, [CLASS_MAGE] = 152138, [CLASS_ROGUE] = 152163, 
	},
	[152530] = { -- Shoulders of the Antoran Vanquisher [Coven of Shivarra]
		[BONUS] = TIER_21_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 152117, [CLASS_DRUID] = 152129, [CLASS_MAGE] = 152141, [CLASS_ROGUE] = 152165, 
	},
	[152517] = { -- Cloak of the Antoran Vanquisher [Antoran High Command]
		[BONUS] = TIER_21_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 152113, [CLASS_DRUID] = 152125, [CLASS_MAGE] = 152136, [CLASS_ROGUE] = 152161, 
	},
	[152518] = { -- Chest of the Antoran Vanquisher [Eonar]
		[BONUS] = TIER_21_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 152112, [CLASS_DRUID] = 152124, [CLASS_MAGE] = 152140, [CLASS_ROGUE] = 152160, 
	},
	[152521] = { -- Gauntlets of the Antoran Vanquisher [Kin'garoth]
		[BONUS] = TIER_21_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 152114, [CLASS_DRUID] = 152126, [CLASS_MAGE] = 152137, [CLASS_ROGUE] = 152162, 
	},
	[152527] = { -- Leggings of the Antoran Vanquisher [Imonar]
		[BONUS] = TIER_21_BONUS_LOOKUP,
		[CLASS_DEATHKNIGHT] = 152116, [CLASS_DRUID] = 152128, [CLASS_MAGE] = 152139, [CLASS_ROGUE] = 152164, 
	},
	--]]
	
	--[[ TIMELESS TOKENS (5.4.0) 
	[102263] = { -- Timeless Plate Chestpiece
		[PLATE] = {101789, 101851, 101819},
	},
	[102264] = { -- Timeless Plate Boots
		[PLATE] = {101797, 101859, 101825},
	},
	[102265] = { -- Timeless Plate Gloves
		[PLATE] = {101791, 101853, 101820},
	},
	[102266] = { -- Timeless Plate Helm
		[PLATE] = {101793, 101855, 101822},
	},
	[102267] = { -- Timeless Plate Leggings
		[PLATE] = {101794, 101856, 101823},
	},
	[102268] = { -- Timeless Plate Spaulders
		[PLATE] = {101796, 101858, 101824},
	},
	[102269] = { -- Timeless Plate Belt
		[PLATE] = {101792, 101854, 101821},
	},
	[102320] = { -- Timeless Plate Bracers
		[PLATE] = {101799, 101861, 101826},
	},
	[104009] = { -- Timeless Plate Armor Cache
		[PLATE] = {101799, 101861, 101826, 101789, 101851, 101819, 101797, 101859, 101825, 101791, 101853, 101820, 101793, 101855, 101822, 101794, 101856, 101823, 101796, 101858, 101824, 101792, 101854, 101821},
	},
	
	[102270] = { -- Timeless Mail Chestpiece
		[MAIL] = {101845, 101837},
	},
	[102271] = { -- Timeless Mail Boots
		[MAIL] = {101841, 101833},
	},
	[102272] = { -- Timeless Mail Gloves
		[MAIL] = {101840, 101832},
	},
	[102273] = { -- Timeless Mail Helm
		[MAIL] = {101842, 101834},
	},
	[102274] = { -- Timeless Mail Leggings
		[MAIL] = {101843, 101835},
	},
	[102275] = { -- Timeless Mail Spaulders
		[MAIL] = {101844, 101836},
	},
	[102276] = { -- Timeless Mail Belt
		[MAIL] = {101838, 101830},
	},
	[104010] = { -- Timeless Mail Armor Cache
		[MAIL] = {101845, 101837, 101841, 101833, 101840, 101832, 101842, 101834, 101843, 101835, 101844, 101836, 101838, 101830, 101839, 101831},
	},
	
	[102277] = { -- Timeless Leather Chestpiece
		[LEATHER] = {101867, 101786},
	},
	[102278] = { -- Timeless Leather Boots
		[LEATHER] = {101863, 101782},
	},
	[102279] = { -- Timeless Leather Gloves
		[LEATHER] = {101865, 101784},
	},
	[102280] = { -- Timeless Leather Helm
		[LEATHER] = {101866, 101785},
	},
	[102281] = { -- Timeless Leather Leggings
		[LEATHER] = {101864, 101783},
	},
	[102282] = { -- Timeless Leather Spaulders
		[LEATHER] = {101868, 101787},
	},
	[102283] = { -- Timeless Leather Belt
		[LEATHER] = {101869, 101788},
	},
	[102322] = { -- Timeless Leather Bracers
		[LEATHER] = {101862, 101781},
	},
	[104012] = { -- Timeless Leather Armor Cache
		[LEATHER] = {101862, 101781, 101869, 101788, 101868, 101787, 101864, 101783, 101866, 101785, 101865, 101784, 101863, 101782, 101867, 101786},
	},
	
	[102284] = { -- Timeless Cloth Robes
		[CLOTH] = {101806, 101815},
	},
	[102285] = { -- Timeless Cloth Boots
		[CLOTH] = {101807, 101816},
	},
	[102286] = { -- Timeless Cloth Gloves
		[CLOTH] = {101803, 101813},
	},
	[102287] = { -- Timeless Cloth Helm
		[CLOTH] = {101802, 101812},
	},
	[102288] = { -- Timeless Cloth Leggings
		[CLOTH] = {101804, 101814},
	},
	[102289] = { -- Timeless Cloth Spaulders
		[CLOTH] = {101808, 101817},
	},
	[102290] = { -- Timeless Cloth Belt
		[CLOTH] = {101801, 101811},
	},
	[102321] = { -- Timeless Cloth Bracers
		[CLOTH] = {101810, 101818},
	},
	[104013] = { -- Timeless Cloth Armor Cache 
		[CLOTH] = {101806, 101815, 101807, 101816, 101803, 101813, 101802, 101812, 101804, 101814, 101808, 101817, 101801, 101811, 101810, 101818},
	},
	
	[102318] = { -- Timeless Cloak
		["DEPENDANT_WARNING"] = true,
		[PLATE] = {101800, 101790, 101852, 101848, 101828},
		[MAIL] = {101800, 101790, 101852, 101848, 101828},
		[LEATHER] = {101800, 101790, 101852, 101848, 101828},
		[CLOTH] = {101800, 101790, 101852, 101848, 101828},
	},
	--]]
	
	--[[ BALEFUL TOKENS (6.2.0) 
	-- BoP
	[124550] = { -- Baleful Bracers
		[PLATE] = 124566, [MAIL] = 124565, [LEATHER] = 124564, [CLOTH] = 124563,
	},
	[124551] = { -- Baleful Tunic
		[PLATE] = 124569, [MAIL] = 124568, [LEATHER] = 124567, [CLOTH] = 124570,
	},
	[124552] = { -- Baleful Treads
		[PLATE] = 124574, [MAIL] = 124573, [LEATHER] = 124572, [CLOTH] = 124571,
	},
	[124553] = { -- Baleful Gauntlets
		[PLATE] = 124578, [MAIL] = 124577, [LEATHER] = 124576, [CLOTH] = 124575,
	},
	[124554] = { -- Baleful Hood
		[PLATE] = 124582, [MAIL] = 124581, [LEATHER] = 124580, [CLOTH] = 124579,
	},
	[124555] = { -- Baleful Leggings
		[PLATE] = 124586, [MAIL] = 124585, [LEATHER] = 124584, [CLOTH] = 124583,
	},
	[124556] = { -- Baleful Spaulders
		[PLATE] = 124590, [MAIL] = 124589, [LEATHER] = 124588, [CLOTH] = 124587,
	},
	[128348] = { -- Baleful Spaulders
		[PLATE] = 124590, [MAIL] = 124589, [LEATHER] = 124588, [CLOTH] = 124587,
	},
	[124557] = { -- Baleful Girdle
		[PLATE] = 124594, [MAIL] = 124593, [LEATHER] = 124592, [CLOTH] = 124591,
	},
	[124560] = { -- Baleful Cloak
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124616, 124617, 124618},
		[CLASS_PALADIN] = {124614, 124615, 124616, 124617, 124618},
		[CLASS_DEATHKNIGHT] = {124616, 124617, 124618},
		[CLASS_HUNTER] = {124613, 124617, 124618},
		[CLASS_SHAMAN] = {124613, 124614, 124615, 124617, 124618},
		[CLASS_MAGE] = {124614, 124615},
		[CLASS_PRIEST] = {124614, 124615},
		[CLASS_WARLOCK] = {124614, 124615},
		[CLASS_DRUID] = {124613, 124614, 124615, 124617, 124618},
		[CLASS_DEMONHUNTER] = {124613, 124617, 124618},
		[CLASS_MONK] = {124613, 124614, 124615, 124617, 124618},
		[CLASS_ROGUE] = {124613, 124617, 124618},
	},
	[124562] = { -- Baleful Armament
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {BALEFUL_WEP_2H_SWORD, BALEFUL_WEP_1H_SWORD},
		[CLASS_PALADIN] = {BALEFUL_WEP_1H_SWORD, BALEFUL_WEP_2H_SWORD, BALEFUL_WEP_1H_MACE},
		[CLASS_DEATHKNIGHT] = {BALEFUL_WEP_2H_SWORD, BALEFUL_WEP_1H_SWORD},
		[CLASS_HUNTER] = {BALEFUL_WEP_POLEARM, BALEFUL_WEP_GUN},
		[CLASS_SHAMAN] = {BALEFUL_WEP_1H_AXE, BALEFUL_WEP_1H_MACE, BALEFUL_WEP_STAFF},
		[CLASS_MAGE] = {BALEFUL_WEP_STAFF},
		[CLASS_PRIEST] = {BALEFUL_WEP_1H_MACE, BALEFUL_WEP_STAFF},
		[CLASS_WARLOCK] = {BALEFUL_WEP_STAFF},
		[CLASS_DRUID] = {BALEFUL_WEP_1H_MACE, BALEFUL_WEP_POLEARM, BALEFUL_WEP_STAFF},
		[CLASS_DEMONHUNTER] = {BALEFUL_WEP_1H_AXE},
		[CLASS_MONK] = {BALEFUL_WEP_1H_AXE, BALEFUL_WEP_1H_MACE, BALEFUL_WEP_POLEARM, BALEFUL_WEP_STAFF},
		[CLASS_ROGUE] = {BALEFUL_WEP_1H_AXE, BALEFUL_WEP_DAGGER},
	},
	
	-- BoA
	[127777] = { -- Baleful Cloth Bracers
		[CLOTH] = 124563,
	},
	[127778] = { -- Baleful Cloth Robe
		[CLOTH] = 124570,
	},
	[127779] = { -- Baleful Cloth Treads
		[CLOTH] = 124571,
	},
	[127780] = { -- Baleful Cloth Gauntlets
		[CLOTH] = 124575,
	},
	[127781] = { -- Baleful Cloth Hood
		[CLOTH] = 124579,
	},
	[127782] = { -- Baleful Cloth Leggings
		[CLOTH] = 124583,
	},
	[127783] = { -- Baleful Cloth Spaulders
		[CLOTH] = 124587,
	},
	[127784] = { -- Baleful Cloth Girdle
		[CLOTH] = 124591,
	},

	[127790] = { -- Baleful Leather Bracers
		[LEATHER] = 124564,
	},
	[127791] = { -- Baleful Leather Tunic
		[LEATHER] = 124567,
	},
	[127792] = { -- Baleful Leather Treads
		[LEATHER] = 124572,
	},
	[127793] = { -- Baleful Leather Gauntlets
		[LEATHER] = 124576,
	},
	[127794] = { -- Baleful Leather Hood
		[LEATHER] = 124580,
	},
	[127795] = { -- Baleful Leather Leggings
		[LEATHER] = 124584,
	},
	[127796] = { -- Baleful Leather Spaulders
		[LEATHER] = 124588,
	},
	[127797] = { -- Baleful Leather Girdle
		[LEATHER] = 124592,
	},

	[127803] = { -- Baleful Mail Bracers
		[MAIL] = 124565,
	},
	[127804] = { -- Baleful Mail Robe
		[MAIL] = 124568,
	},
	[127805] = { -- Baleful Mail Treads
		[MAIL] = 124573,
	},
	[127806] = { -- Baleful Mail Gauntlets
		[MAIL] = 124577,
	},
	[127807] = { -- Baleful Mail Hood
		[MAIL] = 124581,
	},
	[127808] = { -- Baleful Mail Leggings
		[MAIL] = 124585,
	},
	[127809] = { -- Baleful Mail Spaulders
		[MAIL] = 124589,
	},
	[127810] = { -- Baleful Mail Girdle
		[MAIL] = 124593,
	},

	[127816] = { -- Baleful Plate Bracers
		[PLATE] = 124566,
	},
	[127817] = { -- Baleful Plate Chest
		[PLATE] = 124569,
	},
	[127818] = { -- Baleful Plate Treads
		[PLATE] = 124574,
	},
	[127819] = { -- Baleful Plate Gauntlets
		[PLATE] = 124578,
	},
	[127820] = { -- Baleful Plate Hood
		[PLATE] = 124582,
	},
	[127821] = { -- Baleful Plate Leggings
		[PLATE] = 124586,
	},
	[127822] = { -- Baleful Plate Spaulders
		[PLATE] = 124590,
	},
	[127823] = { -- Baleful Plate Girdle
		[PLATE] = 124594,
	},
	
	[127800] = { -- Baleful Cloak
		["DEPENDANT_WARNING"] = true,
		[CLASS_WARRIOR] = {124613, 124614, 124615, 124616, 124617, 124618},
		[CLASS_PALADIN] = {124613, 124614, 124615, 124616, 124617, 124618},
		[CLASS_DEATHKNIGHT] = {124613, 124614, 124615, 124616, 124617, 124618},
		[CLASS_HUNTER] = {124613, 124614, 124615, 124616, 124617, 124618},
		[CLASS_SHAMAN] = {124613, 124614, 124615, 124616, 124617, 124618},
		[CLASS_MAGE] = {124613, 124614, 124615, 124616, 124617, 124618},
		[CLASS_PRIEST] = {124613, 124614, 124615, 124616, 124617, 124618},
		[CLASS_WARLOCK] = {124613, 124614, 124615, 124616, 124617, 124618},
		[CLASS_DRUID] = {124613, 124614, 124615, 124616, 124617, 124618},
		[CLASS_DEMONHUNTER] = {124613, 124614, 124615, 124616, 124617, 124618},
		[CLASS_MONK] = {124613, 124614, 124615, 124616, 124617, 124618},
		[CLASS_ROGUE] = {124613, 124614, 124615, 124616, 124617, 124618},
	},
	--]]
	
	--[[ DAUNTLESS TOKENS (7.2.0) 
	[147212] = { -- Dauntless Bracers
		[PLATE] = 147228, [MAIL] = 147227, [LEATHER] = 147226, [CLOTH] = 147225
	},
	[147213] = { -- Dauntless Tunic
		[PLATE] = 147231, [MAIL] = 147230, [LEATHER] = 147229, [CLOTH] = 147232
	},
	[147214] = { -- Dauntless Treads
		[PLATE] = 147236, [MAIL] = 147235, [LEATHER] = 147234, [CLOTH] = 147233
	},
	[147215] = { -- Dauntless Gauntlets
		[PLATE] = 147240, [MAIL] = 147239, [LEATHER] = 147238, [CLOTH] = 147237
	},
	[147216] = { -- Dauntless Hood
		[PLATE] = 147244, [MAIL] = 147243, [LEATHER] = 147242, [CLOTH] = 147241
	},
	[147217] = { -- Dauntless Leggings
		[PLATE] = 147248, [MAIL] = 147247, [LEATHER] = 147246, [CLOTH] = 147245
	},
	[147218] = { -- Dauntless Spaulders
		[PLATE] = 147252, [MAIL] = 147251, [LEATHER] = 147250, [CLOTH] = 147249
	},
	[147219] = { -- Dauntless Girdle
		[PLATE] = 147256, [MAIL] = 147255, [LEATHER] = 147254, [CLOTH] = 147253
	},
	[147222] = { -- Dauntless Cloak
		[PLATE] = 147269, [MAIL] = 147269, [LEATHER] = 147269, [CLOTH] = 147269
	},
	--]]
	
	--[[ UNSULLIED TOKENS (7.3.0) 
	[152740] = { -- Unsullied Cloak
		[PLATE] = 152778, [MAIL] = 152778, [LEATHER] = 152778, [CLOTH] = 152778
	},
	
	[152734] = { -- Unsullied Cloth Mantle
		[CLOTH] = 152777,
	},
	[152738] = { -- Unsullied Cloth Cap
		[CLOTH] = 152770,
	},
	[152742] = { -- Unsullied Cloth Cuffs 
		[CLOTH] = 152773,
	},
	[153135] = { -- Unsullied Cloth Robes 
		[CLOTH] = 152775,
	},
	[153141] = { -- Unsullied Cloth Mitts
		[CLOTH] = 152771,
	},
	[153144] = { -- Unsullied Cloth Slippers
		[CLOTH] = 152774,
	},
	[153154] = { -- Unsullied Cloth Leggings
		[CLOTH] = 152776,
	},
	[153156] = { -- Unsullied Cloth Sash
		[CLOTH] = 152772,
	},
	
	[152737] = { -- Unsullied Leather Trousers
		[LEATHER] = 152761,
	},
	[152739] = { -- Unsullied Leather Grips
		[LEATHER] = 152755,
	},
	[153136] = { -- Unsullied Leather Treads
		[LEATHER] = 152757,
	},
	[153139] = { -- Unsullied Leather Headgear
		[LEATHER] = 152759,
	},
	[153142] = { -- Unsullied Leather Armbands
		[LEATHER] = 152754,
	},
	[153145] = { -- Unsullied Leather Spaulders
		[LEATHER] = 152760,
	},
	[153148] = { -- Unsullied Leather Belt
		[LEATHER] = 152756,
	},
	[153151] = { -- Unsullied Leather Tunic
		[LEATHER] = 152758,
	},
	
	[152741] = { -- Unsullied Mail Chestguard
		[MAIL] = 152768,
	},
	[152744] = { -- Unsullied Mail Girdle
		[MAIL] = 152767,
	},
	[153137] = { -- Unsullied Mail Spaulders
		[MAIL] = 152769,
	},
	[153138] = { -- Unsullied Mail Legguards
		[MAIL] = 152764,
	},
	[153147] = { -- Unsullied Mail Coif
		[MAIL] = 152765,
	},
	[153149] = { -- Unsullied Mail Gloves
		[MAIL] = 152763,
	},
	[153152] = { -- Unsullied Mail Boots
		[MAIL] = 152766,
	},
	[153158] = { -- Unsullied Mail Bracers
		[MAIL] = 152762,
	},
	
	[152743] = { -- Unsullied Plate Sabatons
		[PLATE] = 152753,
	},
	[153140] = { -- Unsullied Plate Waistplate
		[PLATE] = 152749,
	},
	[153143] = { -- Unsullied Plate Breastplate
		[PLATE] = 152748,
	},
	[153146] = { -- Unsullied Plate Greaves
		[PLATE] = 152746,
	},
	[153150] = { -- Unsullied Plate Vambraces
		[PLATE] = 152752,
	},
	[153153] = { -- Unsullied Plate Pauldrons
		[PLATE] = 152750,
	},
	[153155] = { -- Unsullied Plate Helmet
		[PLATE] = 152747,
	},
	[153157] = { -- Unsullied Plate Gauntlets
		[PLATE] = 152751,
	},
	--]]
	
	--[[ RELINQUISHED TOKENS (7.3.0) 
	[153211] = { -- Relinquished Hood
		[PLATE] = {
			121279, 134138, 134182, 134226, 134270, 134314, 134358, 136728, 139058, 139096, 146761, 146852, 150957,  -- WQ / Drops
			134182, 134358, 139058,  -- WQ / Dungeons
			133629, 134511, 134512, 134513, 137410, 137445, 137451, 137526, 142126, 142304, 144503, 151333,  -- Dungeons
			141424, 141459, 147749,  -- World Bosses
			139231, 139229, 140881, 147063, 152013, 152014,  -- Raids
			147244, 152747,  -- Tokens
		},
		[MAIL] = {
			121319, 134167, 134211, 134255, 134299, 134343, 134387, 136757, 139081, 139119, 146781, 146872, 150975,  -- WQ / Drops
			121319, 134211, 134255, 134387,  -- WQ / Dungeons
			134470, 134471, 134473, 136777, 137443, 137479, 137516, 139244, 142134, 144494, 151324,  -- Dungeons
			141455, 141420,  -- World Bosses
			139214, 140870, 140903, 147049, 147050, 152000, 152001, 152423,  -- Raids
			147243, 152765,  -- Tokens
		},
		[LEATHER] = {
			121296, 134152, 134196, 134240, 134284, 134328, 134372, 136742, 139070, 139108, 146772, 146863, 150969,  -- WQ / Drops
			134152, 134196, 134240, 139070,  -- WQ / Dungeons
			133618, 134440, 134446, 134447, 137415, 137427, 137511, 139281, 142142, 151336,  -- Dungeons [?: 147516, ]
			141418, 141453, 147740,  -- World Bosses
			139204, 139205, 140866, 140901, 147033, 147034, 151985, 152681,  -- Raids
			147242, 152759,  -- Tokens
		},
		[CLOTH] = {
			121324, 134172, 134216, 134260, 134304, 134348, 134392, 136762, 139086, 139124, 146786, 146877, 150980,  -- WQ / Drops
			134216, 134260, 134304, 134392, 139086,  -- WQ / Dungeons
			134424, 134425, 134426, 137341, 137441, 137502, 142150, 142296, 151337,  -- Dungeons [?: 147517, ]
			141414, 141449, 147731,  -- World Bosses
			139188, 139189, 140851, 146990, 146991, 151943, 151944,  -- Raids
			147241, 152770,  -- Tokens
		},
		
		[CLASS_WARRIOR] = {138357, 147190, 152181, }, -- Raids
		[CLASS_PALADIN] = {138356, 147160, 152151, }, -- Raids
		[CLASS_DEATHKNIGHT] = {138355, 147124, 152115, }, -- Raids
		[CLASS_HUNTER] = {138342, 147142, 152133, }, -- Raids
		[CLASS_SHAMAN] = {138343, 147178, 152169, }, -- Raids
		[CLASS_DRUID] = {138330, 147136, 152127, }, -- Raids
		[CLASS_DEMONHUNTER] = {138378, 147130, 152121, }, -- Raids
		[CLASS_MONK] = {138331, 147154, 152145, }, -- Raids
		[CLASS_ROGUE] = {138332, 147172, 152163, }, -- Raids
		[CLASS_MAGE] = {138312, 147147, 152138, }, -- Raids
		[CLASS_PRIEST] = {138313, 147165, 152156, }, -- Raids
		[CLASS_WARLOCK] = {138314, 147183, 152174, }, -- Raids
	},
	
	[153215] = { -- Relinquished Spaulders
		[PLATE] = {
			121281, 134140, 134184, 134228, 134272, 134316, 134360, 136730, 139060, 139098, 146763, 146854, 150960,  -- WQ / Drops
			134184, 134228, 134360,  -- WQ / Dungeons
			133631, 134510, 134517, 134518, 134521, 137322, 137524, 142128, 142201, 144501, 151331,  -- Dungeons
			141426, 147752,  -- World Bosses
			139232, 139233, 140883, 147069, 147070, 152019, 152416,  -- Raids
			147252, 152750,  -- Tokens
		},
		[MAIL] = {
			121321, 134169, 134213, 134257, 134301, 134345, 134389, 136759, 139083, 139121, 146783, 146874, 150979,  -- WQ / Drops
			134213, 134389, 139121,  -- WQ / Dungeons
			133625, 134472, 134478, 134479, 134480, 137321, 137521, 139245, 142136, 144493, 151323,  -- Dungeons
			141422,  -- World Bosses
			139217, 139218, 140872, 140917, 147053, 147054, 152004, 152005,  -- Raids
			147251, 152769,  -- Tokens
		},
		[LEATHER] = {
			121298, 134154, 134198, 134242, 134286, 134330, 134374, 136744, 139072, 139110, 146774, 146865, 150970,  -- WQ / Drops
			134154, 134286, 134374,  -- WQ / Dungeons
			133620, 134452, 134453, 134454, 137332, 137364, 137455, 137510, 142144, 144489, 151319,  -- Dungeons
			141445, 147742,  -- World Bosses
			139206, 140864, 147037, 151988, 151989,  -- Raids
			147250, 152760,  -- Tokens
		},
		[CLOTH] = {
			121329, 134177, 134221, 134265, 134309, 134353, 134397, 136767, 139091, 139129, 146791, 146882, 150987,  -- WQ / Drops
			134177, 134221, 134309,  -- WQ / Dungeons
			134430, 134432, 136775, 137309, 137360, 137447, 137503, 139247, 142152, 144469, 151299,  -- Dungeons
			141416, 147734,  -- World Bosses
			139191, 139192, 140911, 140853, 146996, 146997, 151949, 151950,  -- Raids
			147249, 152777,  -- Tokens
		},
		
		[CLASS_WARRIOR] = {138363, 147192, 152183, }, -- Raids
		[CLASS_PALADIN] = {138362, 147162, 152153, }, -- Raids
		[CLASS_DEATHKNIGHT] = {138361, 147126, 152117, }, -- Raids
		[CLASS_HUNTER] = {138347, 147144, 152135, }, -- Raids
		[CLASS_SHAMAN] = {138348, 147180, 152171, }, -- Raids
		[CLASS_DRUID] = {138336, 147138, 152129, }, -- Raids
		[CLASS_DEMONHUNTER] = {138380, 147132, 152123, }, -- Raids
		[CLASS_MONK] = {138337, 147156, 152147, }, -- Raids
		[CLASS_ROGUE] = {138338, 147174, 152165, }, -- Raids
		[CLASS_MAGE] = {138321, 147150, 152141, }, -- Raids
		[CLASS_PRIEST] = {138322, 147168, 152159, }, -- Raids
		[CLASS_WARLOCK] = {138323, 147186, 152177, }, -- Raids
	},
	
	[153209] = { -- Relinquished Cloak
		[PLATE] = {
			121307, 134158, 134202, 134246, 134290, 134334, 134365, 136748, 139074, 139112, 146766, 150988,  -- WQ / Drops
			134411, 134407, 134404, 134412, 136770, 136977, 137483, 134405, 134406, 133765, 133639, 133771, 134408, 134402, 134410, 137531, 137530, 142170, 142206, 142215, 144468, 144476,  -- Dungeons
			151298,  -- Triumvirate Ensemble
			141540, 141542, 141543, 141538, 141448, 141539, 141541, 147764,  -- World Bosses
			138221, 139248, 142412, 142521, 142540, 140855, 140909, 140910, 144399, 144400, 144401, 144403, 146984, 146985, 147193, 151937, 151938, 152062,  -- Raids
			147269, 152778,  -- Tokens
			146793, 146794, 146795, 146857, 146884, 146885, 146886,  -- ???
		},
		[MAIL] = {
			121307, 134158, 134202, 134246, 134290, 134334, 134365, 136748, 139074, 139112, 146766, 150988,  -- WQ / Drops
			134411, 134407, 134404, 134412, 136770, 136977, 137483, 134405, 134406, 133765, 133639, 133771, 134408, 134402, 134410, 137531, 137530, 142170, 142206, 142215, 144468, 144476,  -- Dungeons
			151634,  -- Triumvirate Ensemble
			141540, 141542, 141543, 141538, 141448, 141539, 141541, 147764,  -- World Bosses
			138221, 139248, 142412, 142521, 142540, 140855, 140909, 140910, 144399, 144400, 144401, 144403, 146984, 146985, 147193, 151937, 151938, 152062,  -- Raids
			147269, 152778,  -- Tokens
			146793, 146794, 146795, 146857, 146884, 146885, 146886,  -- ???
		},
		[LEATHER] = {
			121307, 134158, 134202, 134246, 134290, 134334, 134365, 136748, 139074, 139112, 146766, 150988,  -- WQ / Drops
			134411, 134407, 134404, 134412, 136770, 136977, 137483, 134405, 134406, 133765, 133639, 133771, 134408, 134402, 134410, 137531, 137530, 142170, 142206, 142215, 144468, 144476,  -- Dungeons
			151306,  -- Triumvirate Ensemble
			141540, 141542, 141543, 141538, 141448, 141539, 141541, 147764,  -- World Bosses
			138221, 139248, 142412, 142521, 142540, 140855, 140909, 140910, 144399, 144400, 144401, 144403, 146984, 146985, 147193, 151937, 151938, 152062,  -- Raids
			147269, 152778,  -- Tokens
			146793, 146794, 146795, 146857, 146884, 146885, 146886,  -- ???
		},
		[CLOTH] = {
			121307, 134158, 134202, 134246, 134290, 134334, 134365, 136748, 139074, 139112, 146766, 150988,  -- WQ / Drops
			134411, 134407, 134404, 134412, 136770, 136977, 137483, 134405, 134406, 133765, 133639, 133771, 134408, 134402, 134410, 137531, 137530, 142170, 142206, 142215, 144468, 144476,  -- Dungeons
			151635,  -- Triumvirate Ensemble
			141540, 141542, 141543, 141538, 141448, 141539, 141541, 147764,  -- World Bosses
			138221, 139248, 142412, 142521, 142540, 140855, 140909, 140910, 144399, 144400, 144401, 144403, 146984, 146985, 147193, 151937, 151938, 152062,  -- Raids
			147269, 152778,  -- Tokens
			146793, 146794, 146795, 146857, 146884, 146885, 146886,  -- ???
		},
		
		[CLASS_WARRIOR] = {138374, 147188, 152179, }, -- Raids
		[CLASS_PALADIN] = {138369, 147158, 152149, }, -- Raids
		[CLASS_DEATHKNIGHT] = {138364, 147122, 152113, }, -- Raids
		[CLASS_HUNTER] = {138368, 147140, 152131, }, -- Raids
		[CLASS_SHAMAN] = {138372, 147176, 152167, }, -- Raids
		[CLASS_DRUID] = {138366, 147134, 152125, }, -- Raids
		[CLASS_DEMONHUNTER] = {138375, 147128, 152119, }, -- Raids
		[CLASS_MONK] = {138367, 147152, 152143, }, -- Raids
		[CLASS_ROGUE] = {138371, 147170, 152161, }, -- Raids
		[CLASS_MAGE] = {138365, 147145, 152136, }, -- Raids
		[CLASS_PRIEST] = {138370, 147163, 152154, }, -- Raids
		[CLASS_WARLOCK] = {138373, 147181, 152172, }, -- Raids
	},
	
	[153208] = { -- Relinquished Chestguard
		[PLATE] = {
			121276, 134135, 134176, 134223, 134267, 134311, 134355, 136725, 139055, 139093, 146758, 146849, 150958,  -- WQ / Drops
			121276, 134135, 134179, 134223, 134267,  -- WQ / Dungeons
			134500, 134501, 134503, 136976, 137437, 137457, 137527, 142123, 142303, 144499, 151329,  -- Dungeons
			141481, 141413, 147751,  -- World Bosses
			138216, 139224, 142431, 140877, 140913, 147067, 147068, 152017, 152018,  -- Raids
			147231, 152748,  -- Tokens
		},
		[MAIL] = {
			121322, 134170, 134214, 134258, 134302, 134346, 134390, 136760, 139084, 139122, 146784, 146875, 150978,  -- WQ / Drops
			134214, 134390,  -- WQ / Dungeons
			133622, 134462, 134463, 137354, 137368, 137428, 137460, 137498, 142131, 142301, 144495, 151325,  -- Dungeons
			141423, 141491, 147743,  -- World Bosses
			139221, 142433, 140875, 147043, 151994, 151995,  -- Raids
			147230, 152768,  -- Tokens
		},
		[LEATHER] = {
			121297, 134153, 134197, 134241, 134285, 134329, 134373, 136743, 139071, 139109, 146773, 146864, 150968,  -- WQ / Drops
			134197, 134373, 139071,  -- WQ / Dungeons
			133615, 134438, 134439, 137336, 137449, 137514, 142139, 142203, 144483, 151313,  -- Dungeons
			141487, 141419, 147737,  -- World Bosses
			139208, 139207, 142432, 140865, 147027, 147028, 151979, 151980, 151982,  -- Raids
			147229, 152758,  -- Tokens
		},
		[CLOTH] = {
			121327, 134175, 134219, 134263, 134307, 134351, 134395, 136765, 139089, 139127, 146789, 146880, 150985,  -- WQ / Drops
			134219, 134263, 134395, 139089,  -- WQ / Dungeons
			133611, 134413, 134414, 134415, 137352, 137504, 139246, 142147, 142297, 144473, 151303,  -- Dungeons
			141495, 141427, 147733,  -- World Bosses
			138215, 139193, 140848, 142410, 146994, 146995, 151947, 151948, 152679,  -- Raids
			147232, 152775,  -- Tokens
		},
		
		[CLASS_WARRIOR] = {138351, 147187, 152178, }, -- Raids
		[CLASS_PALADIN] = {138350, 147157, 152148, }, -- Raids
		[CLASS_DEATHKNIGHT] = {138349, 147121, 152112, }, -- Raids
		[CLASS_HUNTER] = {138339, 147139, 152130, }, -- Raids
		[CLASS_SHAMAN] = {138346, 147175, 152166, }, -- Raids
		[CLASS_DRUID] = {138324, 147133, 152124, }, -- Raids
		[CLASS_DEMONHUNTER] = {138376, 147127, 152116, }, -- Raids
		[CLASS_MONK] = {138325, 147151, 152142, }, -- Raids
		[CLASS_ROGUE] = {138326, 147169, 152160, }, -- Raids
		[CLASS_MAGE] = {138318, 147149, 152140, }, -- Raids
		[CLASS_PRIEST] = {138319, 147167, 152158, }, -- Raids
		[CLASS_WARLOCK] = {138320, 147185, 152176, }, -- Raids
	},
	
	[153206] = { -- Relinquished Bracers
		[PLATE] = {
			121283, 134142, 134186, 134230, 134274, 134318, 134362, 136732, 139062, 139100, 146765, 146856, 150962,  -- WQ / Drops
			134186, 134230, 134362,  -- WQ / Dungeons
			133632, 134502, 134520, 134522, 137337, 137431, 139283, 142130, 142198, 144498, 151328,  -- Dungeons
			141439,  -- World Bosses
			138218, 139235, 142427, 140878, 140893, 140902, 147073, 152023, 152281,  -- Raids
			147228, 152752,  -- Tokens
		},
		[MAIL] = {
			121316, 134164, 134208, 134252, 134296, 134340, 134384, 136754, 139078, 139116, 146778, 146869, 150972,  -- WQ / Drops
			121316, 134164, 134296, 134384,  -- WQ / Dungeons
			133626, 134484, 134485, 137305, 137325, 137405, 137522, 139282, 142138, 142302, 144491, 151321,  -- Dungeons
			141433, 147747,  -- World Bosses
			139222, 142423, 140874, 140876, 147057, 152008, 152280,  -- Raids
			147227, 152762,  -- Tokens
		},
		[LEATHER] = {
			121292, 134148, 134192, 134236, 134280, 134324, 134368, 136738, 139066, 139104, 146768, 146859, 150964,  -- WQ / Drops
			134192, 134280, 134368,  -- WQ / Dungeons
			133621, 134458, 134459, 134611, 369791, 374251, 374421, 37512, 142146, 144485, 151315,  -- Dungeons
			141429,  -- World Bosses
			138219, 139209, 142419, 140857, 140889, 147041, 147042, 151992, 152414,  -- Raids
			147226, 152754,  -- Tokens
		},
		[CLOTH] = {
			121330, 134178, 134222, 134266, 134310, 134354, 134398, 136768, 139092, 139130, 146792, 146883, 150983,  -- WQ / Drops
			134222, 134310, 134398, 139130,  -- WQ / Dungeons
			133614, 134435, 134436, 134437, 137314, 137372, 137434, 142154, 144475, 151305,  -- Dungeons
			141428, 147735,  -- World Bosses
			139187, 139196, 142415, 140850, 140886, 147000, 147001, 151953, 151954,  -- Raids
			147225, 152773,  -- Tokens
		},
	},
	
	[153210] = { -- Relinquished Gauntlets
		[PLATE] = {
			121277, 134136, 134180, 134224, 134268, 134312, 134356, 136726, 139056, 139094, 146759, 146850, 150961,  -- WQ / Drops
			134180, 134268, 134356, 139056,  -- WQ / Dungeons
			133628, 134508, 134509, 134519, 137355, 137429, 137525, 142125, 142299, 144502, 151332,  -- Dungeons
			141441, 141476, 147748,  -- World Bosses
			139225, 139226, 142435, 140879, 140907, 147061, 147062, 152012, 152686, 152687,  -- Raids
			147240, 152751,  -- Tokens
		},
		[MAIL] = {
			121317, 134165, 134209, 134253, 134297, 134341, 134385, 136755, 139079, 139117, 146779, 146870, 150973,  -- WQ / Drops
			134209, 134253, 134297, 134385,  -- WQ / Dungeons
			134467, 134468, 134469, 137300, 137333, 137348, 137519, 142133, 144492, 151322,  -- Dungeons
			141431, 141466, 147745,  -- World Bosses
			141694, 139213, 138214, 142434, 140869, 147048, 147047, 151999, 151998,  -- Raids
			147239, 152763,  -- Tokens
		},
		[LEATHER] = {
			121295, 134151, 134195, 134239, 134283, 134327, 134371, 136741, 139069, 139107, 146771, 146862, 150965,  -- WQ / Drops
			134195, 134239, 134371,  -- WQ / Dungeons
			133617, 134443, 134444, 134445, 137320, 137480, 137509, 139242, 142141, 142205, 144488, 151318,  -- Dungeons
			141440, 141475, 147739,  -- World Bosses
			140996, 139202, 142430, 140905, 140863, 147032, 147031, 152086, 151984,  -- Raids
			147238, 152755,  -- Tokens
		},
		[CLOTH] = {
			121325, 134173, 134217, 134261, 134305, 134349, 134393, 136763, 139087, 139125, 146787, 146878, 150981,  -- WQ / Drops
			121325, 134217, 134261, 134393,  -- WQ / Dungeons
			133609, 134418, 134420, 134421, 134422, 134431, 137506, 142149, 144470, 151300,  -- Dungeons
			141435, 141470, 147730,  -- World Bosses
			140993, 138212, 142429, 140888, 146988, 151941, 152680,  -- Raids
			147237, 152771,  -- Tokens
		},
		
		[CLASS_WARRIOR] = {138354, 147189, 152180, }, -- Raids
		[CLASS_PALADIN] = {138353, 147159, 152150, }, -- Raids
		[CLASS_DEATHKNIGHT] = {138352, 147123, 152114, }, -- Raids
		[CLASS_HUNTER] = {138340, 147141, 152132, }, -- Raids
		[CLASS_SHAMAN] = {138341, 147177, 152168, }, -- Raids
		[CLASS_DRUID] = {138327, 147135, 152126, }, -- Raids
		[CLASS_DEMONHUNTER] = {138377, 147129, 152120, }, -- Raids
		[CLASS_MONK] = {138328, 147153, 152144, }, -- Raids
		[CLASS_ROGUE] = {138329, 147171, 152162, }, -- Raids
		[CLASS_MAGE] = {138309, 147146, 152137, }, -- Raids
		[CLASS_PRIEST] = {138310, 147164, 152155, }, -- Raids
		[CLASS_WARLOCK] = {138311, 147182, 152173, }, -- Raids
	},
	
	[153205] = { -- Relinquished Girdle
		[PLATE] = {
			121278, 134137, 134181, 134225, 134269, 134313, 134357, 136727, 139057, 139095, 146760, 146851, 150959,  -- WQ / Drops
			134225, 134269, 134357, 139095,  -- WQ / Dungeons
			133770, 136773, 137310, 137361, 137436, 137499, 137523, 142129, 144497, 151327,  -- Dungeons
			141442, 147753,  -- World Bosses
			139227, 139228, 142424, 140880, 140892, 140912, 147071, 147072, 152020, 152021, 152022,  -- Raids
			147256, 152749,  -- Tokens
		},
		[MAIL] = {
			121315, 134163, 134207, 134251, 134295, 134339, 134383, 136753, 139077, 139115, 146777, 146868, 150977,  -- WQ / Drops
			134207, 134251, 139077,  -- WQ / Dungeons
			133805, 134481, 134482, 136724, 137416, 137456, 137489, 137520, 142137, 144496, 151326,  -- Dungeons
			141436,  -- World Bosses
			139211, 139212, 142420, 140868, 140890, 147055, 147056, 152006, 152007, 152683,  -- Raids
			147255, 152767,  -- Tokens
		},
		[LEATHER] = {
			121299, 134155, 134199, 134243, 134287, 134331, 134375, 136746, 139073, 139111, 146775, 146866, 150966,  -- WQ / Drops
			121299, 134199, 134287,  -- WQ / Dungeons
			134455, 134456, 134457, 136776, 137409, 137435, 137513, 139243, 142145, 142196, 144486, 151316,  -- Dungeons
			141444,  -- World Bosses
			139197, 139198, 142416, 140858, 140859, 140919, 147039, 147040, 147347, 151986, 151990, 151991,  -- Raids
			147254, 152756,  -- Tokens
		},
		[CLOTH] = {
			121323, 134171, 134215, 134259, 134303, 134347, 134391, 136761, 139085, 139123, 146785, 146876, 150982,  -- WQ / Drops
			134171, 134259, 134391,  -- WQ / Dungeons
			133613, 134423, 134433, 134434, 137331, 137413, 137488, 137507, 142153, 144472, 151302,  -- Dungeons
			141434, 147736,  -- World Bosses
			138217, 142411, 140849, 140887, 146998, 146999, 151942, 151951, 151952,  -- Raids
			147253, 152772,  -- Tokens
		},
	},
	
	[153212] = { -- Relinquished Leggings
		[PLATE] = {
			121280, 134139, 134183, 134227, 134271, 134315, 134359, 136729, 139059, 139097, 146762, 146853, 150956,  -- WQ / Drops
			121280, 134183, 134271, 134359,  -- WQ / Dungeons
			133630, 134506, 134514, 134515, 134516, 137342, 137528, 139240, 142127, 151339,  -- Dungeons [?: 147514, ]
			141425, 147750,  -- World Bosses
			139230, 142425, 140882, 147065, 147066, 152015, 152016,  -- Raids
			147248, 152746,  -- Tokens
		},
		[MAIL] = {
			121320, 134168, 134212, 134256, 134300, 134344, 134388, 136758, 139082, 139120, 146782, 146873, 150974,  -- WQ / Drops
			134212, 134256, 139082,  -- WQ / Dungeons
			133769, 134474, 134475, 134476, 134483, 137450, 137518, 142135, 142197, 151338,  -- Dungeons [?: 147515, ]
			141421, 147746,  -- World Bosses
			139215, 139216, 142421, 140871, 147051, 147052, 152002, 152003,  -- Raids
			147247, 152764,  -- Tokens
		},
		[LEATHER] = {
			121294, 134150, 134194, 134238, 134282, 134326, 134370, 136740, 139069, 139106, 146770, 146861, 150971,  -- WQ / Drops
			134194, 134238, 134370,  -- WQ / Dungeons
			133616, 134448, 134449, 134450, 134451, 134460, 137353, 137515, 142143, 142300, 144484, 151314,  -- Dungeons
			141417, 147741,  -- World Bosses
			139201, 139203, 142418, 140862, 140908, 147035, 151987, 152282,  -- Raids
			147246, 152761,  -- Tokens
		},
		[CLOTH] = {
			121326, 134174, 134218, 134262, 134306, 134350, 134394, 136764, 139088, 139126, 146788, 146879, 150986,  -- WQ / Drops
			121326, 134218, 134394,  -- WQ / Dungeons
			133610, 134427, 134428, 137304, 137404, 137424, 137453, 137496, 137505, 142151, 142202, 144474, 151304,  -- Dungeons
			141415, 147732,  -- World Bosses
			139190, 142413, 140852, 146992, 146993, 151946, 152424,  -- Raids
			147245, 152776,  -- Tokens
		},
		
		[CLASS_WARRIOR] = {138360, 147191, 152182, }, -- Raids
		[CLASS_PALADIN] = {138359, 147161, 152152, }, -- Raids
		[CLASS_DEATHKNIGHT] = {138358, 147125, 152116, }, -- Raids
		[CLASS_HUNTER] = {138344, 147143, 152134, }, -- Raids
		[CLASS_SHAMAN] = {138345, 147179, 152170, }, -- Raids
		[CLASS_DRUID] = {138333, 147137, 152128, }, -- Raids
		[CLASS_DEMONHUNTER] = {138379, 147131, 152122, }, -- Raids
		[CLASS_MONK] = {138334, 147155, 152146, }, -- Raids
		[CLASS_ROGUE] = {138335, 147173, 152164, }, -- Raids
		[CLASS_MAGE] = {138315, 147148, 152139, }, -- Raids
		[CLASS_PRIEST] = {138316, 147166, 152157, }, -- Raids
		[CLASS_WARLOCK] = {138317, 147184, 152175, }, -- Raids
	},
	
	[153207] = { -- Relinquished Treads
		[PLATE] = {
			121282, 134141, 134185, 134229, 134273, 134317, 134361, 136731, 139061, 139099, 146764, 146855, 150963,  -- WQ / Drops
			134141,  -- WQ / Dungeons
			134504, 134505, 134507, 134523, 136772, 137334, 137417, 137482, 137529, 139241, 142124, 144500, 151330,  -- Dungeons
			141437,  -- World Bosses
			139234, 142426, 140884, 140891, 140904, 147059, 147060, 152009, 152010, 152011,  -- Raids
			147236, 152753,  -- Tokens
		},
		[MAIL] = {
			121318, 134166, 134210, 134254, 134298, 134342, 134386, 136756, 139080, 139118, 146780, 146871, 150976,  -- WQ / Drops
			134166, 134210, 134298, 134386,  -- WQ / Dungeons
			133623, 134464, 134465, 134466, 134477, 137444, 137517, 142132, 142204, 144490, 151320,  -- Dungeons
			141432, 147744,  -- World Bosses
			138211, 139219, 139220, 142422, 140867, 140873, 147045, 147046, 151996, 151997, 152684,  -- Raids
			147235, 152766,  -- Tokens
		},
		[LEATHER] = {
			121293, 134149, 134193, 134237, 134281, 134325, 134369, 136739, 139067, 139105, 146769, 146860, 150967,  -- WQ / Drops
			121293, 134193, 134237, 134369, 139105,  -- WQ / Dungeons
			134429, 134441, 134442, 137324, 137397, 137448, 137497, 142140, 144487, 151317,  -- Dungeons
			141430, 147738,  -- World Bosses
			139199, 139200, 142417, 140860, 140861, 147029, 147030, 151981, 151983, 152412,  -- Raids
			147234, 152757,  -- Tokens
		},
		[CLOTH] = {
			121328, 134176, 134220, 134264, 134308, 134352, 134396, 136766, 139090, 139128, 146790, 146881, 150984,  -- WQ / Drops
			134308, 134396,  -- WQ / Dungeons
			133608, 134416, 134417, 134419, 136774, 137319, 137454, 137508, 139280, 142148, 142298, 144471, 151301,  -- Dungeons
			141443,  -- World Bosses
			139194, 139195, 142414, 140854, 140885, 140914, 146986, 146987, 151939, 151940, 151945,  -- Raids
			147233, 152774,  -- Tokens
		},
	},
	--]]
	
	--[[ BENTHIC TOKENS (8.2.0) 
	[169477] = { -- Benthic Girdle
		[PLATE] = {167782, 170370},
		[MAIL] = {167773, 170369},
		[LEATHER] = {167765, 170368},
		[CLOTH] = {167757, 170367},
	},
	[169478] = { -- Benthic Bracers
		[PLATE] = {170111, 170106, 170328, 169815, 167783, 170303},
		[MAIL] = {170121, 170105, 170329, 167774, 169814, 170304},
		[LEATHER] = {170104, 170122, 170330, 167766, 169813, 170305},
		[CLOTH] = {167758, 170103, 170331, 170123, 169812, 170306},
	},
	[169479] = { -- Benthic Helm
		[PLATE] = 167778, [MAIL] = 167770, [LEATHER] = 167762, [CLOTH] = 167754,
	},
	[169480] = { -- Benthic Chestguard
		[PLATE] = 167775, [MAIL] = 167767, [LEATHER] = 167759, [CLOTH] = 167779,
	},
	[169481] = { -- Benthic Cloak
		[PLATE] = {169489, 169486, 169488, 169487},
		[MAIL] = {169489, 169486, 169488, 169487},
		[LEATHER] = {169489, 169486, 169488, 169487},
		[CLOTH] = {169489, 169486, 169488, 169487},
	},
	[169482] = { -- Benthic Leggings
		[PLATE] = {170110, 167780, 169811},
		[MAIL] = {170109, 169810, 167771},
		[LEATHER] = {170108, 167763, 169809},
		[CLOTH] = {170107, 167755, 169808},
	},
	[169483] = { -- Benthic Treads
		[PLATE] = {169891, 170374, 167776, 170143},
		[MAIL] = {170373, 169892, 167768, 170142},
		[LEATHER] = {170372, 169893, 167760, 170141},
		[CLOTH] = {169894, 167752, 170371, 170140},
	},
	[169484] = { -- Benthic Spaulders
		[PLATE] = 167781, [MAIL] = 167772, [LEATHER] = 167764, [CLOTH] = 167756,
	},
	[169485] = { -- Benthic Gauntlets
		[PLATE] = {170136, 169793, 170336, 167777, 170378},
		[MAIL] = {169792, 167769, 170335, 170135, 170377},
		[LEATHER] = {169791, 167761, 170334, 170134, 170376},
		[CLOTH] = {170133, 167753, 170333, 169790, 170375},
	},
	--]]
	
	--[[ BLACK EMPIRE TOKENS (8.3.0) 
	[173396] = { -- Black Empire Plate Helm
		[PLATE] = {173836, 173457},
	},
	[173398] = { -- Black Empire Plate Spaulders
		[PLATE] = {173460, 173835},
	},
	[173393] = { -- Black Empire Plate Chestpiece
		[PLATE] = {173837, 173454},
	},
	[173422] = { -- Black Empire Plate Bracers
		[PLATE] = {173462, 173474, 173482, 173487},
	},
	[173395] = { -- Black Empire Plate Gloves
		[PLATE] = {173510, 173494, 173456, 173466},
	},
	[173399] = { -- Black Empire Plate Belt
		[PLATE] = {173821, 173822, 173514, 173461},
	},
	[173397] = { -- Black Empire Plate Leggings
		[PLATE] = {173820, 173486, 173470, 173459},
	},
	[173394] = { -- Black Empire Plate Boots
		[PLATE] = {173455, 173498, 173518, 173475},
	},
	
	[173403] = { -- Black Empire Mail Helm
		[MAIL] = {173839, 173449},
	},
	[173405] = { -- Black Empire Mail Spaulders
		[MAIL] = {173838, 173451},
	},
	[173400] = { -- Black Empire Mail Chestpiece
		[MAIL] = {173840, 173446},
	},
	[173425] = { -- Black Empire Mail Bracers
		[MAIL] = {173453, 173473, 173481, 173488},
	},
	[173402] = { -- Black Empire Mail Gloves
		[MAIL] = {173509, 173493, 173448, 173465},
	},
	[173406] = { -- Black Empire Mail Belt
		[MAIL] = {173818, 173819, 173452, 173513},
	},
	[173404] = { -- Black Empire Mail Leggings
		[MAIL] = {173817, 173469, 173485, 173450},
	},
	[173401] = { -- Black Empire Mail Boots
		[MAIL] = {173447, 173497, 173517, 173476},
	},
	
	[173410] = { -- Black Empire Leather Helm
		[LEATHER] = {173842, 173441},
	},
	[173412] = { -- Black Empire Leather Spaulders
		[LEATHER] = {173841, 173443},
	},
	[173407] = { -- Black Empire Leather Chestpiece
		[LEATHER] = {173843, 173438},
	},
	[173424] = { -- Black Empire Leather Bracers
		[LEATHER] = {173480, 173445, 173472, 173489},
	},
	[173409] = { -- Black Empire Leather Gloves
		[LEATHER] = {173508, 173464, 173492, 173440},
	},
	[173413] = { -- Black Empire Leather Belt
		[LEATHER] = {173815, 173816, 173444, 173512},
	},
	[173411] = { -- Black Empire Leather Leggings
		[LEATHER] = {173484, 173814, 173442, 173468},
	},
	[173408] = { -- Black Empire Leather Boots
		[LEATHER] = {173439, 173496, 173516, 173477},
	},
	
	[173417] = { -- Black Empire Cloth Helm
		[CLOTH] = {173845, 173433},
	},
	[173419] = { -- Black Empire Cloth Spaulders
		[CLOTH] = {173844, 173435},
	},
	[173414] = { -- Black Empire Cloth Chestpiece
		[CLOTH] = {173458, 173846},
	},
	[173423] = { -- Black Empire Cloth Bracers
		[CLOTH] = {173437, 173479, 173471, 173490},
	},
	[173416] = { -- Black Empire Cloth Gloves
		[CLOTH] = {173507, 173463, 173491, 173432},
	},
	[173420] = { -- Black Empire Cloth Belt
		[CLOTH] = {173812, 173813, 173436, 173511},
	},
	[173418] = { -- Black Empire Cloth Leggings
		[CLOTH] = {173483, 173811, 173467, 173434},
	},
	[173415] = { -- Black Empire Cloth Boots
		[CLOTH] = {173431, 173515, 173478, 173495},
	},
	--]]
};

t.HORDE_ONLY_DATA = {
	--[[ TIER 9 (ToC) 
	[47242] = { -- Trophy of the Crusade
		[REDEEM] = REDEEM_T9,
		[CLASS_WARRIOR] = {48465, 48463, 48391, 48461, 48392, 48393, 48462, 48464, 48394, 48395},
		[CLASS_PALADIN] = {48626, 48622, 48657, 48658, 48623, 48659, 48593, 48594, 48592, 48591, 48590, 48660, 48624, 48661, 48625},
		[CLASS_HUNTER] = {48271, 48272, 48273, 48274, 48270},
		[CLASS_ROGUE] = {48240, 48238, 48241, 48242, 48239},
		[CLASS_PRIEST] = {48094, 48062, 48096, 48063, 48064, 48095, 48065, 48066, 48092, 48093},
		[CLASS_DEATHKNIGHT] = {48499, 48500, 48553, 48496, 48554, 48555, 48497, 48556, 48557, 48498},
		[CLASS_SHAMAN] = {48363, 48334, 48364, 48304, 48332, 48365, 48335, 48331, 48300, 48361, 48301, 48333, 48302, 48362, 48303},
		[CLASS_MAGE] = {47771, 47770, 47769, 47772, 47768},
		[CLASS_WARLOCK] = {47807, 47803, 47804, 47805, 47806},
		[CLASS_DRUID] = {48196, 48178, 48149, 48179, 48180, 48150, 48181, 48197, 48182, 48151, 48193, 48148, 48194, 48152, 48195},
	},
	--]]
	
	--[[ TIER 17 (HM, BRF) 
	[119310] = { -- Essence of the Iron Conqueror (Horde) [Blackhand NM]
		[LINK] = {119305, 119306, 119307, 119308, 119309},
		[REDEEM] = REDEEM_T17, [BONUS] = 0,
	},
	[120206] = { -- Essence of the Iron Conqueror (Horde) [Blackhand HM]
		[LINK] = {119305, 119306, 119307, 119308, 119309},
		[REDEEM] = REDEEM_T17, [BONUS] = TIER_17_HEROIC,
	},
	[120209] = { -- Essence of the Iron Conqueror (Horde) [Blackhand MM]
		[LINK] = {119305, 119306, 119307, 119308, 119309},
		[REDEEM] = REDEEM_T17, [BONUS] = TIER_17_MYTHIC,
	},
	
	[119323] = { -- Essence of the Iron Protector (Horde) [Blackhand NM]
		[LINK] = {119318, 119319, 119320, 119321, 119322},
		[REDEEM] = REDEEM_T17, [BONUS] = 0,
	},
	[120207] = { -- Essence of the Iron Protector (Horde) [Blackhand HM]
		[LINK] = {119318, 119319, 119320, 119321, 119322},
		[REDEEM] = REDEEM_T17, [BONUS] = TIER_17_HEROIC,
	},
	[120210] = { -- Essence of the Iron Protector (Horde) [Blackhand MM]
		[LINK] = {119318, 119319, 119320, 119321, 119322},
		[REDEEM] = REDEEM_T17, [BONUS] = TIER_17_MYTHIC,
	},
	
	[119316] = { -- Essence of the Iron Vanquisher (Horde) [Blackhand NM]
		[LINK] = {119311, 119312, 119313, 119314, 119315},
		[REDEEM] = REDEEM_T17, [BONUS] = 0,
	},
	[120208] = { -- Essence of the Iron Vanquisher (Horde) [Blackhand HM]
		[LINK] = {119311, 119312, 119313, 119314, 119315},
		[REDEEM] = REDEEM_T17, [BONUS] = TIER_17_HEROIC,
	},
	[120211] = { -- Essence of the Iron Vanquisher (Horde) [Blackhand MM]
		[LINK] = {119311, 119312, 119313, 119314, 119315},
		[REDEEM] = REDEEM_T17, [BONUS] = TIER_17_MYTHIC,
	},
	--]]
	
	--[[ RELINQUISHED TOKENS (7.3.0) 
	[153211] = { -- Relinquished Hood
		[CLASS_WARRIOR] = {149131, 150239, }, -- PvP
		[CLASS_PALADIN] = {149026, 150135, }, -- PvP
		[CLASS_DEATHKNIGHT] = {148925, 150033, }, -- PvP
		[CLASS_HUNTER] = {148973, 150081, }, -- PvP
		[CLASS_SHAMAN] = {149081, 150189, }, -- PvP
		[CLASS_DRUID] = {148957, 150065, }, -- PvP
		[CLASS_DEMONHUNTER] = {148941, 150049, }, -- PvP
		[CLASS_MONK] = {149003, 150111, }, -- PvP
		[CLASS_ROGUE] = {149065, 150173, }, -- PvP
		[CLASS_MAGE] = {148987, 150095, }, -- PvP
		[CLASS_PRIEST] = {149041, 150149, }, -- PvP
		[CLASS_WARLOCK] = {149113, 150221, }, -- PvP
	},
	[153215] = { -- Relinquished Spaulders
		[CLASS_WARRIOR] = {149135, 150243, }, -- PvP
		[CLASS_PALADIN] = {149031, 150139, }, -- PvP
		[CLASS_DEATHKNIGHT] = {148929, 150037, }, -- PvP
		[CLASS_HUNTER] = {148977, 150085, }, -- PvP
		[CLASS_SHAMAN] = {149085, 150193, }, -- PvP
		[CLASS_DRUID] = {148961, 150069, }, -- PvP
		[CLASS_DEMONHUNTER] = {148945, 150053, }, -- PvP
		[CLASS_MONK] = {149007, 150115, }, -- PvP
		[CLASS_ROGUE] = {149069, 150177, }, -- PvP
		[CLASS_MAGE] = {148993, 150101, }, -- PvP
		[CLASS_PRIEST] = {149047, 150155, }, -- PvP
		[CLASS_WARLOCK] = {149119, 150227, }, -- PvP
	},
	[153209] = { -- Relinquished Cloak
		[CLASS_WARRIOR] = {148917, 150025, }, -- PvP
		[CLASS_PALADIN] = {148907, 150015, }, -- PvP
		[CLASS_DEATHKNIGHT] = {148895, 150003, }, -- PvP
		[CLASS_HUNTER] = {148901, 150009, }, -- PvP
		[CLASS_SHAMAN] = {148913, 150021, }, -- PvP
		[CLASS_MAGE] = {148903, 150011, }, -- PvP
		[CLASS_PRIEST] = {148909, 150017, }, -- PvP
		[CLASS_WARLOCK] = {148915, 150023, }, -- PvP
		[CLASS_DRUID] = {148899, 150007, }, -- PvP
		[CLASS_DEMONHUNTER] = {148897, 150005, }, -- PvP
		[CLASS_MONK] = {148905, 150013, }, -- PvP
		[CLASS_ROGUE] = {148911, 150019, }, -- PvP
	},
	[153208] = { -- Relinquished Chestguard
		[CLASS_WARRIOR] = {149125, 150233, }, -- PvP
		[CLASS_PALADIN] = {149020, 150129, }, -- PvP
		[CLASS_DEATHKNIGHT] = {148919, 150027, }, -- PvP
		[CLASS_HUNTER] = {148967, 150075, }, -- PvP
		[CLASS_SHAMAN] = {149075, 150183, }, -- PvP
		[CLASS_DRUID] = {148951, 150059, }, -- PvP
		[CLASS_DEMONHUNTER] = {148935, 150043, }, -- PvP
		[CLASS_MONK] = {149009, 150117, }, -- PvP
		[CLASS_ROGUE] = {149059, 150167, }, -- PvP
		[CLASS_MAGE] = {148991, 150099, }, -- PvP
		[CLASS_PRIEST] = {149045, 150153, }, -- PvP
		[CLASS_WARLOCK] = {149117, 150225, }, -- PvP
	},
	[153206] = { -- Relinquished Bracers
		[CLASS_WARRIOR] = {149139, 150247, }, -- PvP
		[CLASS_PALADIN] = {149035, 150143, }, -- PvP
		[CLASS_DEATHKNIGHT] = {148933, 150041, }, -- PvP
		[CLASS_HUNTER] = {148981, 150089, }, -- PvP
		[CLASS_SHAMAN] = {149089, 150197, }, -- PvP
		[CLASS_DRUID] = {148965, 150073, }, -- PvP
		[CLASS_DEMONHUNTER] = {148949, 150057, }, -- PvP
		[CLASS_MONK] = {149013, 150121, }, -- PvP
		[CLASS_ROGUE] = {149073, 150181, }, -- PvP
		[CLASS_MAGE] = {148997, 150105, }, -- PvP
		[CLASS_PRIEST] = {149051, 150159, }, -- PvP
		[CLASS_WARLOCK] = {149123, 150231, }, -- PvP
	},
	[153210] = { -- Relinquished Gauntlets
		[CLASS_WARRIOR] = {149129, 150237, }, -- PvP
		[CLASS_PALADIN] = {149024, 150133, }, -- PvP
		[CLASS_DEATHKNIGHT] = {148923, 150031, }, -- PvP
		[CLASS_HUNTER] = {148971, 150079, }, -- PvP
		[CLASS_SHAMAN] = {149079, 150187, }, -- PvP
		[CLASS_DRUID] = {148955, 150063, }, -- PvP
		[CLASS_DEMONHUNTER] = {148939, 150047, }, -- PvP
		[CLASS_MONK] = {149001, 150109, }, -- PvP
		[CLASS_ROGUE] = {149063, 150171, }, -- PvP
		[CLASS_MAGE] = {148985, 150093, }, -- PvP
		[CLASS_PRIEST] = {149039, 150147, }, -- PvP
		[CLASS_WARLOCK] = {149111, 150219, }, -- PvP
	},
	[153205] = { -- Relinquished Girdle
		[CLASS_WARRIOR] = {149137, 150245, }, -- PvP
		[CLASS_PALADIN] = {149033, 150141, }, -- PvP
		[CLASS_DEATHKNIGHT] = {148931, 150039, }, -- PvP
		[CLASS_HUNTER] = {148979, 150087, }, -- PvP
		[CLASS_SHAMAN] = {149087, 150195, }, -- PvP
		[CLASS_DRUID] = {148963, 150071, }, -- PvP
		[CLASS_DEMONHUNTER] = {148947, 150055, }, -- PvP
		[CLASS_MONK] = {149011, 150119, }, -- PvP
		[CLASS_ROGUE] = {149071, 150179, }, -- PvP
		[CLASS_MAGE] = {148995, 150103, }, -- PvP
		[CLASS_PRIEST] = {149049, 150157, }, -- PvP
		[CLASS_WARLOCK] = {149121, 150229, }, -- PvP
	},
	[153212] = { -- Relinquished Leggings
		[CLASS_WARRIOR] = {149133, 150241, }, -- PvP
		[CLASS_PALADIN] = {149028, 150137, }, -- PvP
		[CLASS_DEATHKNIGHT] = {148927, 150035, }, -- PvP
		[CLASS_HUNTER] = {148975, 150083, }, -- PvP
		[CLASS_SHAMAN] = {149083, 150191, }, -- PvP
		[CLASS_DRUID] = {148959, 150067, }, -- PvP
		[CLASS_DEMONHUNTER] = {148943, 150051, }, -- PvP
		[CLASS_MONK] = {149005, 150113, }, -- PvP
		[CLASS_ROGUE] = {149067, 150175, }, -- PvP
		[CLASS_MAGE] = {148989, 150097, }, -- PvP
		[CLASS_PRIEST] = {149043, 150151, }, -- PvP
		[CLASS_WARLOCK] = {149115, 150223, }, -- PvP
	},
	[153207] = { -- Relinquished Treads
		[CLASS_WARRIOR] = {149127, 150235, }, -- PvP
		[CLASS_PALADIN] = {149022, 150131, }, -- PvP
		[CLASS_DEATHKNIGHT] = {148921, 150029, }, -- PvP
		[CLASS_HUNTER] = {148969, 150077, }, -- PvP
		[CLASS_SHAMAN] = {149077, 150185, }, -- PvP
		[CLASS_DRUID] = {148953, 150061, }, -- PvP
		[CLASS_DEMONHUNTER] = {148937, 150045, }, -- PvP
		[CLASS_MONK] = {148999, 150107, }, -- PvP
		[CLASS_ROGUE] = {149061, 150169, }, -- PvP
		[CLASS_MAGE] = {148983, 150091, }, -- PvP
		[CLASS_PRIEST] = {149037, 150145, }, -- PvP
		[CLASS_WARLOCK] = {149109, 150217, }, -- PvP
	},
	--]]
};

t.ALLIANCE_ONLY_DATA = {
	--[[ TIER 9 (ToC) 
	[47242] = { -- Trophy of the Crusade
		[REDEEM] = REDEEM_T9,
		[CLASS_WARRIOR] = {48380, 48430, 48446, 48450, 48452, 48454, 48376, 48377, 48378, 48379},
		[CLASS_PALADIN] = {48575, 48576, 48577, 48578, 48579, 48607, 48608, 48609, 48610, 48611, 48637, 48638, 48639, 48640, 48641},
		[CLASS_HUNTER] = {48255, 48256, 48257, 48258, 48259},
		[CLASS_ROGUE] = {48223, 48224, 48225, 48226, 48227},
		[CLASS_PRIEST] = {48078, 48079, 48080, 48081, 47983, 47984, 47985, 47986, 47987, 48077},
		[CLASS_DEATHKNIGHT] = {48481, 48482, 48483, 48484, 48485, 48538, 48539, 48540, 48541, 48542},
		[CLASS_SHAMAN] = {48288, 48289, 48316, 48317, 48318, 48319, 48320, 48346, 48347, 48348, 48349, 48350, 48285, 48286, 48287},
		[CLASS_MAGE] = {47753, 47754, 47755, 47756, 47757},
		[CLASS_WARLOCK] = {47778, 47779, 47780, 47781, 47782},
		[CLASS_DRUID] = {48211, 48212, 48133, 48134, 48135, 48136, 48210, 48137, 48163, 48164, 48165, 48166, 48167, 48208, 48209},
	},
	--]]
	
	--[[ TIER 17 (HM, BRF) 
	[120277] = { -- Essence of the Iron Conqueror (Alliance) [Blackhand NM]
		[LINK] = {119305, 119306, 119307, 119308, 119309},
		[REDEEM] = REDEEM_T17, [BONUS] = 0,
	},
	[120280] = { -- Essence of the Iron Conqueror (Alliance) [Blackhand HM]
		[LINK] = {119305, 119306, 119307, 119308, 119309},
		[REDEEM] = REDEEM_T17, [BONUS] = TIER_17_HEROIC,
	},
	[120283] = { -- Essence of the Iron Conqueror (Alliance) [Blackhand MM]
		[LINK] = {119305, 119306, 119307, 119308, 119309},
		[REDEEM] = REDEEM_T17, [BONUS] = TIER_17_MYTHIC,
	},
	
	[120279] = { -- Essence of the Iron Protector (Alliance) [Blackhand NM]
		[LINK] = {119318, 119319, 119320, 119321, 119322},
		[REDEEM] = REDEEM_T17, [BONUS] = 0,
	},
	[120281] = { -- Essence of the Iron Protector (Alliance) [Blackhand HM]
		[LINK] = {119318, 119319, 119320, 119321, 119322},
		[REDEEM] = REDEEM_T17, [BONUS] = TIER_17_HEROIC,
	},
	[120284] = { -- Essence of the Iron Protector (Alliance) [Blackhand MM]
		[LINK] = {119318, 119319, 119320, 119321, 119322},
		[REDEEM] = REDEEM_T17, [BONUS] = TIER_17_MYTHIC,
	},
	
	[120278] = { -- Essence of the Iron Vanquisher (Alliance) [Blackhand NM]
		[LINK] = {119311, 119312, 119313, 119314, 119315},
		[REDEEM] = REDEEM_T17, [BONUS] = 0,
	},
	[120282] = { -- Essence of the Iron Vanquisher (Alliance) [Blackhand HM]
		[LINK] = {119311, 119312, 119313, 119314, 119315},
		[REDEEM] = REDEEM_T17, [BONUS] = TIER_17_HEROIC,
	},
	[120285] = { -- Essence of the Iron Vanquisher (Alliance) [Blackhand MM]
		[LINK] = {119311, 119312, 119313, 119314, 119315},
		[REDEEM] = REDEEM_T17, [BONUS] = TIER_17_MYTHIC,
	},
	--]]
	
	--[[ RELINQUISHED TOKENS (7.3.0) 
	[153211] = { -- Relinquished Hood
		[CLASS_WARRIOR] = {149130, 150238, }, -- PvP
		[CLASS_PALADIN] = {149025, 150134, }, -- PvP
		[CLASS_DEATHKNIGHT] = {148924, 150032, }, -- PvP
		[CLASS_HUNTER] = {148972, 150080, }, -- PvP
		[CLASS_SHAMAN] = {149080, 150188, }, -- PvP
		[CLASS_DRUID] = {148956, 150064, }, -- PvP
		[CLASS_DEMONHUNTER] = {148940, 150048, }, -- PvP
		[CLASS_MONK] = {149002, 150110, }, -- PvP
		[CLASS_ROGUE] = {149064, 150172, }, -- PvP
		[CLASS_MAGE] = {148986, 150094, }, -- PvP
		[CLASS_PRIEST] = {149040, 150148, }, -- PvP
		[CLASS_WARLOCK] = {149112, 150220, }, -- PvP
	},
	[153215] = { -- Relinquished Spaulders
		[CLASS_WARRIOR] = {149134, 150242, }, -- PvP
		[CLASS_PALADIN] = {149030, 150138, }, -- PvP
		[CLASS_DEATHKNIGHT] = {148928, 150036, }, -- PvP
		[CLASS_HUNTER] = {148976, 150084, }, -- PvP
		[CLASS_SHAMAN] = {149084, 150192, }, -- PvP
		[CLASS_DRUID] = {148960, 150068, }, -- PvP
		[CLASS_DEMONHUNTER] = {148944, 150052, }, -- PvP
		[CLASS_MONK] = {149006, 150114, }, -- PvP
		[CLASS_ROGUE] = {149068, 150176, }, -- PvP
		[CLASS_MAGE] = {148992, 150100, }, -- PvP
		[CLASS_PRIEST] = {149046, 150154, }, -- PvP
		[CLASS_WARLOCK] = {149118, 150226, }, -- PvP
	},
	[153209] = { -- Relinquished Cloak
		[CLASS_WARRIOR] = {148916, 150024, }, -- PvP
		[CLASS_PALADIN] = {148906, 150014, }, -- PvP
		[CLASS_DEATHKNIGHT] = {148894, 150002, }, -- PvP
		[CLASS_HUNTER] = {148900, 150008, }, -- PvP
		[CLASS_SHAMAN] = {148912, 150020, }, -- PvP
		[CLASS_MAGE] = {148902, 150010, }, -- PvP
		[CLASS_PRIEST] = {148908, 150016, }, -- PvP
		[CLASS_WARLOCK] = {148914, 150022, }, -- PvP
		[CLASS_DRUID] = {148898, 150006, }, -- PvP
		[CLASS_DEMONHUNTER] = {148896, 150004, }, -- PvP
		[CLASS_MONK] = {148904, 150012, }, -- PvP
		[CLASS_ROGUE] = {148910, 150018, }, -- PvP
	},
	[153208] = { -- Relinquished Chestguard
		[CLASS_WARRIOR] = {149124, 150232, }, -- PvP
		[CLASS_PALADIN] = {149029, 150128, }, -- PvP
		[CLASS_DEATHKNIGHT] = {148918, 150026, }, -- PvP
		[CLASS_HUNTER] = {148966, 150074, }, -- PvP
		[CLASS_SHAMAN] = {149074, 150182, }, -- PvP
		[CLASS_DRUID] = {148950, 150058, }, -- PvP
		[CLASS_DEMONHUNTER] = {148934, 150042, }, -- PvP
		[CLASS_MONK] = {149008, 150116, }, -- PvP
		[CLASS_ROGUE] = {149058, 150166, }, -- PvP
		[CLASS_MAGE] = {148990, 150098, }, -- PvP
		[CLASS_PRIEST] = {149044, 150152, }, -- PvP
		[CLASS_WARLOCK] = {149116, 150224, }, -- PvP
	},
	[153206] = { -- Relinquished Bracers
		[CLASS_WARRIOR] = {149138, 150246, }, -- PvP
		[CLASS_PALADIN] = {149034, 150142, }, -- PvP
		[CLASS_DEATHKNIGHT] = {148932, 150040, }, -- PvP
		[CLASS_HUNTER] = {148980, 150088, }, -- PvP
		[CLASS_SHAMAN] = {149088, 150196, }, -- PvP
		[CLASS_DRUID] = {148964, 150072, }, -- PvP
		[CLASS_DEMONHUNTER] = {148948, 150056, }, -- PvP
		[CLASS_MONK] = {149012, 150120, }, -- PvP
		[CLASS_ROGUE] = {149072, 15018, }, -- PvP
		[CLASS_MAGE] = {148996, 150104, }, -- PvP
		[CLASS_PRIEST] = {149050, 150158, }, -- PvP
		[CLASS_WARLOCK] = {149122, 150230, }, -- PvP
	},
	[153210] = { -- Relinquished Gauntlets
		[CLASS_WARRIOR] = {149128, 150236, }, -- PvP
		[CLASS_PALADIN] = {149023, 150132, }, -- PvP
		[CLASS_DEATHKNIGHT] = {148922, 150030, }, -- PvP
		[CLASS_HUNTER] = {148970, 150078, }, -- PvP
		[CLASS_SHAMAN] = {149078, 150186, }, -- PvP
		[CLASS_DRUID] = {148954, 150062, }, -- PvP
		[CLASS_DEMONHUNTER] = {148938, 150046, }, -- PvP
		[CLASS_MONK] = {149000, 150108, }, -- PvP
		[CLASS_ROGUE] = {149062, 150170, }, -- PvP
		[CLASS_MAGE] = {148984, 150092, }, -- PvP
		[CLASS_PRIEST] = {149038, 150146, }, -- PvP
		[CLASS_WARLOCK] = {149110, 150218, }, -- PvP
	},
	[153205] = { -- Relinquished Girdle
		[CLASS_WARRIOR] = {149136, 150244, }, -- PvP
		[CLASS_PALADIN] = {149032, 150140, }, -- PvP
		[CLASS_DEATHKNIGHT] = {148930, 150038, }, -- PvP
		[CLASS_HUNTER] = {148978, 150086, }, -- PvP
		[CLASS_SHAMAN] = {149086, 150194, }, -- PvP
		[CLASS_DRUID] = {148962, 150070, }, -- PvP
		[CLASS_DEMONHUNTER] = {148946, 150054, }, -- PvP
		[CLASS_MONK] = {149010, 150118, }, -- PvP
		[CLASS_ROGUE] = {149070, 150178, }, -- PvP
		[CLASS_MAGE] = {148994, 150102, }, -- PvP
		[CLASS_PRIEST] = {149048, 150156, }, -- PvP
		[CLASS_WARLOCK] = {149120, 150228, }, -- PvP
	},
	[153212] = { -- Relinquished Leggings
		[CLASS_WARRIOR] = {149132, 150240, }, -- PvP
		[CLASS_PALADIN] = {149027, 150136, }, -- PvP
		[CLASS_DEATHKNIGHT] = {148926, 150034, }, -- PvP
		[CLASS_HUNTER] = {148974, 150082, }, -- PvP
		[CLASS_SHAMAN] = {149082, 150190, }, -- PvP
		[CLASS_DRUID] = {148958, 150066, }, -- PvP
		[CLASS_DEMONHUNTER] = {148942, 150050, }, -- PvP
		[CLASS_MONK] = {149004, 150112, }, -- PvP
		[CLASS_ROGUE] = {149066, 150174, }, -- PvP
		[CLASS_MAGE] = {148988, 150096, }, -- PvP
		[CLASS_PRIEST] = {149042, 150150, }, -- PvP
		[CLASS_WARLOCK] = {149114, 150222, }, -- PvP
	},
	[153207] = { -- Relinquished Treads
		[CLASS_WARRIOR] = {149126, 150234, }, -- PvP
		[CLASS_PALADIN] = {149021, 150130, }, -- PvP
		[CLASS_DEATHKNIGHT] = {148920, 150028, }, -- PvP
		[CLASS_HUNTER] = {148968, 150076, }, -- PvP
		[CLASS_SHAMAN] = {149076, 150184, }, -- PvP
		[CLASS_DRUID] = {148952, 150060, }, -- PvP
		[CLASS_DEMONHUNTER] = {148936, 150044, }, -- PvP
		[CLASS_MONK] = {148998, 150106, }, -- PvP
		[CLASS_ROGUE] = {149060, 150168, }, -- PvP
		[CLASS_MAGE] = {148982, 150090, }, -- PvP
		[CLASS_PRIEST] = {149036, 150144, }, -- PvP
		[CLASS_WARLOCK] = {149108, 150216, }, -- PvP
	},
	--]]
};
