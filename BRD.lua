
mylib = require('mylib')

function get_sets()
    set_language('japanese')
    
    dummy = false
    mode = nil
    weapon = nil--nil, sw, aby, flee
	default_style = 4
    
    sets.instrument = {}
    sets.instrument.horn = {
        range="ギャッラルホルン",
        ammo=empty,
    }
    sets.instrument.HonorMarch = {
        range="マルシュアス",
        ammo=empty,
    }
    sets.instrument.Loughnashade = {
        range="ラックナシェード",
        ammo=empty,
    }
    sets.instrument.dummy = {
        range="ダウルダヴラ",
        ammo=empty,
    }
	
	sets.weapon = {}
	sets.weapon.buff = {
        main="カルンウェナン",
		sub="カーリ",
	}
	sets.weapon.sw = {
        main="ネイグリング",
        sub={ name="フセット+2", augments={'TP Bonus +1000',}},
		style=29,
	}
	sets.weapon.swryu = {
        main="ネイグリング",
        sub="クレパスクラナイフ",
		style=29,
	}
	sets.weapon.aby = {
        main={ name="トゥワシュトラ", augments={'Path: A',}},
        sub={ name="フセット+2", augments={'TP Bonus +1000',}},
	}
	sets.weapon.p = {
        main="ンプガンドリング",
        sub={ name="フセット+2", augments={'TP Bonus +1000',}},
	}
	sets.weapon.pryu = {
        main="ンプガンドリング",
        sub="クレパスクラナイフ",
		style=31,
	}
	sets.weapon.flee = {
		range={ name="リノス", augments={'Evasion+15','Phys. dmg. taken -5%','AGI+8',}},
        main="カルンウェナン",
		sub={ name="ニビルナイフ", augments={'Accuracy+20','Attack+15','Evasion+20',}},
	}
    
    sets.fc = {
		-- main="カーリ",
        body="インヤガジュバ+2",
        hands={ name="ＧＥゲージ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -3%','Song spellcasting time -5%',}},
        legs="アヤモコッシャレ+2",
        feet="ナヴォンクラッコー",
        waist="エンブラサッシュ",
        neck="ボルトサージトルク",
        left_ear="ロケイシャスピアス",
        -- right_ear="エンチャンピアス+1",
        left_ring="キシャールリング",
        right_ring="プロリクスリング",
        back={ name="インタラアスケープ", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','CHR+10','"Fast Cast"+10',}},
    }
    sets.fc.song = set_combine(sets.fc, {
        head="ＦＬキャロ+2",--"ＦＬキャロ+3",
		feet={ name="テルキネピガッシュ", augments={'Song spellcasting time -7%','Enh. Mag. eff. dur. +9',}},
    })
    sets.fc.Cure = set_combine(sets.fc, {
        feet={ name="ヴァニヤクロッグ", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
        waist="アサビクサッシュ+1",
        right_ear="メンデカントピアス",
    })
    
    sets.buff = {
        -- sub="アムラピシールド",
        body="ＦＬオングルリヌ+3",
        hands="ＦＬマンシェト+3",
        legs="インヤガシャルワ+2",
        feet="ＢＲスリッパー+4",
        neck="月虹の呼び子+1",
        right_ear={ name="フィリピアス+1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Damage taken-3%',}},
    }
    sets.buff.Ballad = {
        -- legs="ＦＬラングラヴ+1",--"ＦＬラングラヴ+3",
    }
    sets.buff.Scherzo = {
        feet	="ＦＬコテュルヌ+2",--"ＦＬコテュルヌ+3",
    }
    sets.buff.Paeon = {
        -- head="ＢＲランドリト+2",
    }
    sets.buff.March = {
        hands="ＦＬマンシェト+3",
    }
    sets.buff.Mazurka = {
        range="ダウルダヴラ",
    }
    sets.buff.Lullaby = {
        range="ダウルダヴラ",
        -- range="ギャッラルホルン",
        hands="ＢＲカフス+2",--"ＢＲカフス+3",
		left_ear="王将の耳飾り",
    }
    sets.macc = {
        main="ンプガンドリング",
    }

    sets.idle = {
		-- range={ name="リノス", augments={'Evasion+15','Phys. dmg. taken -4%','AGI+8',}},
        head="ニャメヘルム",
        body="ニャメメイル",
        hands="ニャメガントレ",
        legs="ニャメフランチャ",
        -- feet="ＦＬコテュルヌ+2",--"ＦＬコテュルヌ+3",
        feet="ＢＲスリッパー+4",
        neck="バーシチョーカー+1",
        waist="無の腰当",
        left_ear="インフューズピアス",
        right_ear="エアバニピアス",
        -- left_ring="シーリチリング+1",
        left_ring="ヴェンジフルリング",
        right_ring="シュネデックリング",
    }
    sets.engage = {
        range={ name="リノス", augments={'Accuracy+20','"Dbl.Atk."+3','Quadruple Attack +3',}},
        head="ニャメヘルム",
		body="アヤモコラッツァ+2",
        hands="ニャメガントレ",
        -- legs="ニャメフランチャ",
        legs="ゾアサブリガ+1",
		feet={ name="ニャメソルレット", augments={'Path: B',}},
        -- neck="クロタリウストルク",
        neck="バードチャーム+2",
        -- neck="無の喉輪",
        -- waist={ name="セールフィベルト+1", augments={'Path: A',}},
        waist="ウィンバフベルト+1",
        left_ear="テロスピアス",
        right_ear="セサンスピアス",
        -- right_ear="素破の耳",
        left_ring="シーリチリング+1",
        right_ring="イフラマドリング",
        -- back={ name="インタラアスケープ", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
		back="無の外装",
    }

    sets.ja = {}
    sets.ja['Nightingale'] = {
        -- feet={ name="ＢＩスリッパー+3", augments={'Enhances "Nightingale" effect',}},
        feet={ name="ビフスリッパー", augments={'Enhances "Nightingale" effect',}},
    }
    sets.ja['Troubadour'] = {
        body={ name="ＢＩジュストコル+4", augments={'Enhances "Troubadour" effect',}},
    }
    sets.ja['Soul Voice'] = {
        legs={ name="ビフキャニオンズ", augments={'Enhances "Soul Voice" effect',}},
    }

    sets.ws = {
        range={ name="リノス", augments={'Attack+20','Weapon skill damage +3%','STR+6 DEX+6',}},
        head="ニャメヘルム",
        body={ name="ＢＩジュストコル+4", augments={'Enhances "Troubadour" effect',}},
        hands={ name="ニャメガントレ", augments={'Path: B',}},
        legs="ニャメフランチャ",
        feet={ name="ニャメソルレット", augments={'Path: B',}},
		-- neck="共和プラチナ章",
        neck="バードチャーム+2",
        waist={ name="セールフィベルト+1", augments={'Path: A',}},
		left_ear="イシュヴァラピアス",
        right_ear="胡蝶のイヤリング",
        left_ring="イラブラットリング",
		right_ring="エパミノダスリング",
        back={ name="インタラアスケープ", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
    }
    sets.ws['Ruthless Stroke'] = set_combine(sets.ws, {
        -- neck="フォシャゴルゲット",
        -- neck="バードチャーム+2",
        -- waist="フォシャベルト",
        waist={ name="ケンタークベルト+1", augments={'Path: A',}},
		back={ name="インタラアスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
    })

    sets.ma = {}
    sets.ma.Cure = {
        neck="ノデンズゴルゲット",
        feet="ヴァニヤクロッグ",
        left_ear="メンデカントピアス",
        right_ear="カラミタスピアス",
        left_ring="ナジの包帯",
    }
    sets.ma.Stoneskin = {
        neck="ノデンズゴルゲット",
        waist="ジーゲルサッシュ",
		right_ear="アースクライピアス",
    }
    
    sets.walk = {
        right_ring="シュネデックリング",
    }
    sets.walk.adoulin = set_combine(sets.walk, {
        body="カウンセラーガーブ",
    })

    send_command('input /macro book 1;')
    send_command('wait 2;input /lockstyleset '..default_style)
	send_command('input //lua r autobrd')
end

function precast(spell)
    local set_equip = nil
    
    if spell.type == 'BardSong' then
        if dummy then
            set_equip = sets.instrument.dummy
            dummy = false
        elseif spell.english == 'Honor March' then
            set_equip = sets.instrument.HonorMarch
        elseif spell.english == 'Aria of Passion' then
            set_equip = sets.instrument.Loughnashade
        else
            if string.find(spell.english, 'Paeon') or mode == 'HARP' then
                set_equip = sets.instrument.dummy
            else
                set_equip = sets.instrument.horn
            end
        end
    
        set_equip = set_combine(set_equip, sets.fc.song)
        
    elseif spell.action_type == 'Magic' then
        if string.find(spell.english,'Cur') then
            set_equip = sets.fc.Cure
        else
            set_equip = sets.fc
        end
		if spell.english == 'Sneak' and spell.target.name == player.name then
			windower.ffxi.cancel_buff(71)
		end
        
    elseif spell.english == 'Spectral Jig' and windower.ffxi.get_ability_recasts()[218] == 0 then
        windower.ffxi.cancel_buff(71)
    elseif sets.ja[spell.english] then
        set_equip = sets.ja[spell.english]
    end

    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil

    if spell.type == 'BardSong' then
        set_equip = sets.buff
        if string.find(spell.english, 'Ballad') then set_equip = set_combine(set_equip, sets.buff.Ballad)
        elseif string.find(spell.english, 'Scherzo') then set_equip = set_combine(set_equip, sets.buff.Scherzo)
        elseif string.find(spell.english, 'Paeon') then set_equip = set_combine(set_equip, sets.buff.Paeon)
        elseif string.find(spell.english, 'March') then set_equip = set_combine(set_equip, sets.buff.March)
        elseif string.find(spell.english, 'Mazurka') then set_equip = set_combine(set_equip, sets.buff.Mazurka)
        elseif string.find(spell.english, 'Lullaby') then 
            set_equip = set_combine(set_equip, sets.buff.Lullaby)
        end
		if weapon ~= nil then
			set_equip = set_combine(set_equip, sets.weapon.buff)
		end
    elseif sets.ja[spell.english] then
        set_equip = sets.ja[spell.english]
        
    elseif spell.type == 'WeaponSkill' then
        if sets.ws[spell.english] then
            set_equip = sets.ws[spell.english]
        else
            set_equip = sets.ws
        end
    
    elseif spell.action_type == 'Magic' then
        if string.find(spell.name,'ケアル') then
            set_equip = sets.ma.Cure
        elseif sets.ma[spell.english] then
            set_equip = sets.ma[spell.english]
        end
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function aftercast(spell)
    -- windower.add_to_chat(spell.english)
    setIdle()
end

function status_change(new,old)

    setIdle()
end

function setIdle()
    local set_equip = sets.idle

    if windower.ffxi.get_player().status == 1 then
        set_equip = set_combine(sets.idle, sets.engage)
		if weapon and sets.weapon[weapon] then
			set_equip = set_combine(set_equip, sets.weapon[weapon])
		end
	else
		if weapon == 'flee' then
			set_equip = set_combine(set_equip, sets.weapon.flee)
		end
        if  mylib.is_in_adoulin(world.area) then
            set_equip = set_combine(set_equip, sets.walk.adoulin)
        end
    end

    if set_equip then
        equip(set_equip)
    end
end

function file_unload(file_name)
	send_command('input //lua u autobrd')
end

function lockstyle()
	if weapon ~='' and sets.weapon[weapon] and sets.weapon[weapon].style then
		send_command('input /lockstyleset '..sets.weapon[weapon].style)
	else
		send_command('input /lockstyleset '..default_style)
	end
end

function self_command(command)
    command = command:lower()
    if command == 'free' then
        mode = nil
        weapon = nil
        windower.add_to_chat('Weapon: Non')
        windower.add_to_chat('Mode: '..tostring(mode))
        setIdle()
    elseif command == 'ho' then
        mode = 'HORN'
        windower.add_to_chat('Mode is: '..mode)
        setIdle()
    elseif command == 'ha' then
        mode = 'HARP'
        windower.add_to_chat('Mode is: '..mode)
        setIdle()
    -- elseif command == 'ma' then
        -- mode = 'MARS'
        -- windower.add_to_chat('Mode is: '..mode)
		
    elseif command == 'style' or command == 's' then
		lockstyle()
        
    elseif command == 'sw' then
        weapon = 'sw'
        windower.add_to_chat('Weapon: '..tostring(weapon))
		lockstyle()
    elseif command == 'aby' then
        weapon = 'aby'
        windower.add_to_chat('Weapon: '..tostring(weapon))
		lockstyle()
    elseif command == 'flee' then
        weapon = 'flee'
        windower.add_to_chat('Weapon: '..tostring(weapon))
		lockstyle()
    elseif command == 'p' then
        weapon = 'p'
        windower.add_to_chat('Weapon: '..tostring(weapon))
		lockstyle()
    elseif command == 'swryu' then
        weapon = 'swryu'
        windower.add_to_chat('Weapon: '..tostring(weapon))
		lockstyle()
    elseif command == 'pryu' then
        weapon = 'pryu'
        windower.add_to_chat('Weapon: '..tostring(weapon))
		lockstyle()

    elseif command == 'dummy' then
        dummy = true
        -- windower.add_to_chat('Dummy: ON')
        
		
    elseif string.find(command, "sc ") then
	
		_, sc=command:match("^(%S+)%s+(.+)")
		-- if sc ~= '0' then
			-- windower.add_to_chat(sc)
		-- end
    end
end