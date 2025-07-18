
mylib = require('mylib')

function get_sets()
    set_language('japanese')

    sets.ws = {}
    sets.mode = {}
    sets.tp = {}
    
    th = true
    omen = false
    autoSA = false
	rp = false
	default_style = 12
        
    sets.mode['ABY'] = {
        main={ name="トゥワシュトラ", augments={'Path: A',}},
        sub={ name="フセット+2", augments={'TP Bonus +1000',}},
		style=12,
    }
    sets.mode['ABY5'] = {
        main={ name="トゥワシュトラ", augments={'Path: A',}},
		sub={ name="ガンドリング", augments={'Path: C',}},
		style=12,
    }
    sets.mode['AMB'] = {
        main="トーレット",
        sub={ name="フセット+2", augments={'TP Bonus +1000',}},
		style=12,
    }
    sets.mode['ABYP'] = {
        main={ name="トゥワシュトラ", augments={'Path: A',}},
        sub="ンプガンドリング",
		style=12,
    } 
    sets.mode['SU5'] = {
		main={ name="ガンドリング", augments={'Path: C',}},
		sub={ name="マレヴォレンス", augments={'INT+7','Mag. Acc.+3','"Mag.Atk.Bns."+5','"Fast Cast"+2',}},
		style=12,
    }
    sets.mode['P'] = {
        main="ンプガンドリング",
        sub={ name="フセット+2", augments={'TP Bonus +1000',}},
		style=11,
    }
    sets.mode['P5'] = {
        main="ンプガンドリング",
		sub={ name="ガンドリング", augments={'Path: C',}},
		style=11,
    }
    sets.mode['PABY'] = {
        main="ンプガンドリング",
        sub={ name="トゥワシュトラ", augments={'Path: A',}},
		style=11,
    }
    sets.mode['SW'] = {
        main="ネイグリング",
        sub="フセット+2",
		style=13,
    }

    sets.tp={
        -- ammo="コイストボダー",
		ammo="ヤメラング",
        -- ammo="銀銭",
        head="ＳＫボンネット+3",
        -- head={ name="アデマボンネット+1", augments={'STR+12','DEX+12','Attack+20',}},
        -- body="ムンムジャケット+2",
        body="ＰＬベスト+4",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        -- legs="メガナダショウス+2",
        legs={ name="サムヌータイツ", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
        feet="ＰＤプーレーヌ+4",
		neck={ name="アサシンゴルゲ+2", augments={'Path: A',}},
        -- waist="ウィンバフベルト+1",
        waist="ケンタークベルト+1",
        right_ear="スカルカピアス+1",
        left_ear="テロスピアス",
        left_ring="シーリチリング+1",
        -- right_ring="ムンムリング",
        -- right_ring="ペトロフリング",
        -- right_ring="ゲリリング",
		right_ring="イフラマドリング",
		back={ name="トゥタティスケープ", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
    }
	sets.tp.omen={
		head="マリグナスシャポー",
		body="マリグナスタバード",
		hands="ＰＤアムレット+4",
		legs="マリグナスタイツ",
		feet="ＳＫプーレーヌ+3",
		waist="チャークベルト",
		right_ring="イラブラットリング",
	}
	sets.tp.AssassinsCharge={
		feet="ＰＤプーレーヌ+4",
	}
	sets.idle={
		ammo="ヤメラング",
		head="トゥルムキャップ+1",
		-- head="マリグナスシャポー",
		-- body="ＰＬベスト+4",
		body="マリグナスタバード",
		hands="マリグナスグローブ",
		legs="マリグナスタイツ",
		-- feet="マリグナスブーツ",
		feet="ＳＫプーレーヌ+3",
		neck="バーシチョーカー+1",
		-- waist="チャークベルト",
        waist="無の腰当",
		left_ear="テロスピアス",
		right_ear="エアバニピアス",
		left_ring="守りの指輪",
        right_ring="シュネデックリング",
		back="無の外装",
	}
    sets.ws={
        ammo="コイストボダー",
        head="ＳＫボンネット+3",
        body="ＳＫベスト+3",
        hands="ニャメガントレ",
        legs="ＰＤキュロット+4",
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        waist="ケンタークベルト+1",
		neck={ name="アサシンゴルゲ+2", augments={'Path: A',}},
        left_ear="胡蝶のイヤリング",
        right_ear="オドルピアス",
        left_ring="イフラマドリング",
        right_ring="王将の指輪",
		back={ name="トゥタティスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
    }
    sets.ws.fulltp={
		left_ear="イシュヴァラピアス",
        right_ear="オドルピアス",
    }
	sets.ws.sa = {
	}
	sets.ws.ta = {
	}
    sets.ws['Savage Blade'] = set_combine(sets.ws, {
        ammo={ name="シーズボムレット+1", augments={'Path: A',}},
		neck="共和プラチナ章",
        left_ear="胡蝶のイヤリング",
		right_ear="イシュヴァラピアス",
		-- left_ring="エパミノダスリング",
        waist={ name="セールフィベルト+1", augments={'Path: A',}},
	})
    sets.ws['Shark Bite'] = set_combine(sets.ws, {
        -- right_ear="オドルピアス",
        -- waist="グルンフェルロープ",
    })
    sets.ws['Evisceration'] = set_combine(sets.ws, {
        -- right_ear="オドルピアス",
        -- waist="グルンフェルロープ",
        -- neck="フォシャゴルゲット",
        -- waist="フォシャベルト",
        -- right_ear="オドルピアス",
    })
    -- sets.ws['Exenterator'] = set_combine(sets.ws, {
        -- right_ear="オドルピアス",
        -- body="ムンムジャケット+2",
        -- legs="メガナダショウス+2",
        -- feet="ムンムゲマッシュ+2",
        -- waist="グルンフェルロープ",
    -- })
    sets.ws['Rudra\'s Storm'] = set_combine(sets.ws, {
        ammo="パルーグストーン",
        -- neck="フォシャゴルゲット",
        -- waist="フォシャベルト",
    })
    sets.ws['Ruthless Stroke'] = set_combine(sets.ws, {
        ammo="パルーグストーン",
        -- neck="フォシャゴルゲット",
        -- waist="フォシャベルト",
    })
    sets.ws['Aeolian Edge'] = set_combine(sets.ws, {
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        head="ニャメヘルム",
        body="ニャメメイル",
        hands={ name="ニャメガントレ", augments={'Path: B',}},
        legs="ニャメフランチャ",
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        neck="シビルスカーフ",
        waist="オルペウスサッシュ",
		right_ear="フリオミシピアス",
        left_ear="胡蝶のイヤリング",
		-- right_ring="ディンジルリング",
		back={ name="トゥタティスケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Weapon skill damage +10%',}},
    })
    sets.th = {
        ammo="完璧な幸運の卵",
		-- head="ヘルクリアヘルム",
		body={ name="ヘルクリアベスト"},
		hands="ＰＤアムレット+4",
		feet="ＳＫプーレーヌ+3",
		waist="チャークベルト",
    }
    
    sets.ja = {}
	sets.ja['絶対回避'] = {
		hands="ＰＤアムレット+4",
	}
    sets.ja.Steal = {
		ammo="バラスルーム",
		neck="ペンタラグチャーム",
		head="ローグボンネット",
		hands="盗賊の篭手",
        -- waist="キーリングベルト",
		legs="ＡＳキュロット+1",
		feet="ＰＬプーレーヌ+3"
	}
    sets.ja.Flee = {
		feet="ＰＬプーレーヌ+3",
	}
    sets.ja.Feint = {
		legs="ＰＤキュロット+4",
	}
    sets.ja.Despoil = {
		ammo="バラスルーム",
		-- legs="ＳＫキュロット+3",
		feet="ＳＫプーレーヌ+3",
	}
    sets.ja.Accomplice = {
		head="ＳＫボンネット+3",
	}
    sets.ja.Collaborator = sets.ja.Accomplice
    sets.ja.Jump = {
        ammo="コイストボダー",
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
		neck="アヌートルク",
        waist={ name="ケンタークベルト+1", augments={'Path: A',}},--"ゴウドベルト",
        left_ear="シェリダピアス",
        right_ear="デディションピアス",
        left_ring="シーリチリング+1",
        right_ring="イラブラットリング",
		back={ name="トゥタティスケープ", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}
	sets.ja.Waltz = {
		ammo="ヤメラング",
		head="ムンムボンネット+2",
		body="パションジャケット",
		hands="スリザーグローブ+1",
		-- legs="ダッシングサブリガ",
		feet="ローハイドブーツ",
        left_ring="ヴァルスールリング",
		-- right_ring="アスクレピアリング",
	}

    sets.buff = {}
    sets.buff.Phalanx = {
        body={ name="ヘルクリアベスト"},
        hands={ name="ヘルクリアグローブ"},
        legs={ name="ヘルクリアトラウザ"},
        feet={ name="ヘルクリアブーツ", augments={'"Dbl.Atk."+1','"Mag.Atk.Bns."+17','Phalanx +5','Mag. Acc.+9 "Mag.Atk.Bns."+9',}},
    }
    
    sets.ra = {
        range="アルビンベーン",
    }
    
    sets.pdt = {
        -- head="ニャメヘルム",
        -- body="ニャメメイル",
        -- hands="ニャメガントレ",
        -- legs="ニャメフランチャ",
        -- feet="ニャメソルレット",
        
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="マリグナスブーツ",
        
    }
	sets.macc = {
		-- main={ name="ガンドリング", augments={'Path: C',}},
		-- sub="トーレット",
		ammo="完璧な幸運の卵",
		head={ name="ヘルクリアヘルム", augments={'AGI+14','Accuracy+30','"Treasure Hunter"+1','Accuracy+20 Attack+20',}},
		body="マリグナスタバード",
		hands={ name="ＰＤアムレット+4", augments={'Enhances "Perfect Dodge" effect',}},
		legs="マリグナスタイツ",
		feet="ＳＫプーレーヌ+3",
		neck={ name="アサシンゴルゲ+2", augments={'Path: A',}},
		waist="チャークベルト",
		left_ear="カラミタスピアス",
		right_ear={ name="スカルカピアス+1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+15','Mag. Acc.+15','"Store TP"+5',}},
		left_ring={ name="メタモルリング+1", augments={'Path: A',}},
		right_ring="プロリクスリング",
		back="無の外装",
	}

    -- Common equipments
    sets.fc = {
		head="ヘルクリアヘルム",
        neck="ボルトサージトルク",
        right_ear="ロケイシャスピアス",
        right_ring="プロリクスリング",
		left_ring="ナジの包帯",
    }
    sets.walk = {
        right_ring="シュネデックリング",
        -- feet="タンダバクラッコー",
    }
    sets.walk.adoulin = set_combine(sets.walk, {
        body="カウンセラーガーブ",
    })
    
    sets.HolyWater = {
        neck="ニカンダネックレス",
        -- left_ring="Purity Ring",
    }

    send_command('input /macro book 15; ')
    send_command('wait 2;input /lockstyleset '..default_style)
	send_command('input //lua r autothf')
	send_command('input //lua r thtracker')
end

function pretarget(spell,action)
     
end

local locked = false
function precast(spell)
    local set_equip = nil

    if spell.type == 'Trust' or string.find(spell.type, 'Magic') then
        set_equip = sets.fc
    elseif spell.english == 'Spectral Jig' and windower.ffxi.get_ability_recasts()[218] == 0 then
        windower.ffxi.cancel_buff(71)
    elseif spell.action_type == 'Ranged Attack' then
        set_equip = sets.ra
    elseif sets.ja[spell.english] then
        set_equip = sets.ja[spell.english]
    
    elseif spell.type == 'WeaponSkill' and autoSA then
        if not locked then
			if windower.ffxi.get_ability_recasts()[64] < 1 then
				locked = true
				cancel_spell()
				send_command(windower.to_shift_jis('input /ja "不意打ち" <me>; wait 0.8; input /ws "'..spell.name..'" <t>'))

			elseif windower.ffxi.get_ability_recasts()[67] < 1 then
				locked = true
				cancel_spell()
				send_command(windower.to_shift_jis('input /ja "アサシンチャージ" <me>; wait 0.8; input /ws "'..spell.name..'" <t>'))
			end
		end
    end

    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil

    if spell.type == 'Waltz' then
        set_equip = sets.ja.Waltz
    elseif sets.ja[spell.english] then
        set_equip = sets.ja[spell.english]
    elseif spell.type == 'WeaponSkill' and not buffactive['アムネジア'] then
        if sets.ws[spell.english] then
            set_equip = sets.ws[spell.english]
        else
            set_equip = sets.ws
        end
        if windower.ffxi.get_player().vitals.tp >= 2700 then
            set_equip = set_combine(set_equip, sets.ws.fulltp)
        end
		if buffactive['sneak attack'] then
			set_equip = set_combine(set_equip, sets.ws.sa)
		end
		if buffactive['trick attack'] then
			set_equip = set_combine(set_equip, sets.ws.ta)
		end
    elseif sets.buff[spell.english] then
        set_equip = sets.buff[spell.english]
	elseif spell.skill=='精霊魔法' then
		set_equip = sets.macc
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function aftercast(spell)

    if spell.type == 'WeaponSkill' then
		locked = false
	end
    setIdle()
end

function status_change(new,old)
    setIdle()
end

function buff_change(buff,gain,buff_details)
    if buff == '死の宣告' then
        if gain then
            send_command(windower.to_shift_jis('input /p "死の宣告！！！Doom!!!!!!!!!!!!!<call>"'))
        else
            windower.add_to_chat("死の宣告から回復した、Doom gone....")
        end
    end
	if T{"フェイント","アサシンチャージ"}:contains(buff) then
		setIdle()
	end
end

function setIdle()
    set_equip = sets.idle
    
	if windower.ffxi.get_player().status == 1 then
		if omen then
			set_equip = set_combine(set_equip, sets.tp.omen)
		elseif th or buffactive['フェイント'] then
			set_equip = set_combine(sets.tp, sets.th)
		else
			set_equip = sets.tp
		end
	
	else
        if  mylib.is_in_adoulin(world.area) then
            set_equip = set_combine(set_equip, sets.walk.adoulin)
        end
    end
	if buffactive['アサシンチャージ'] then
		set_equip = set_combine(set_equip, sets.tp.AssassinsCharge)
	end

    if set_equip then
        equip(set_combine(sets.mode[mode], set_equip))
    end
end

function lockstyle()
	if mode ~='' and sets.mode[mode] and sets.mode[mode].style then
		send_command('input /lockstyleset '..sets.mode[mode].style)
	else
		send_command('input /lockstyleset '..default_style)
	end
end

function file_unload(file_name)
	send_command('input //lua u thtracker')
	send_command('input //lua u autothf')
end

function self_command(command)
    command = command:lower()
    if command == 'style' or command == 's' then
		lockstyle()
     
    elseif command == 'omen' then
        omen = not omen
        windower.add_to_chat('Omen: '..tostring(omen))
    elseif command == 'omen1' then
        omen = true
        windower.add_to_chat('Omen: '..tostring(omen))
    elseif command == 'omen0' then
        omen = false
        windower.add_to_chat('Omen: '..tostring(omen))
		  
    elseif command == 'pha1' then
        windower.add_to_chat('Phalanx ON')
        local spell = {}
        spell.english = 'Phalanx'
        spell.type = '強化魔法'
        midcast(spell)
    elseif command == 'pha0' then
        windower.add_to_chat('Phalanx OFF')
        setIdle()

    -- elseif command == 'ann' then
        -- announce = not announce
        -- windower.add_to_chat('Announce is: '..tostring(announce))
    elseif command == 'th' then
        th = not th
        windower.add_to_chat('TH is: '..tostring(th))
    elseif command == 'th0' then
        th = false
        windower.add_to_chat('TH is: '..tostring(th))
    elseif command == 'th1' then
        th = true
        windower.add_to_chat('TH is: '..tostring(th))
		
    elseif command == 'sa' then
        autoSA = not autoSA
        windower.add_to_chat('SA is: '..tostring(autoSA))
    elseif command == 'sa0' then
        autoSA = false
        windower.add_to_chat('SA is: '..tostring(autoSA))
    elseif command == 'sa1' then
        autoSA = true
        windower.add_to_chat('SA is: '..tostring(autoSA))
		
    elseif command == 'free' then
        mode = ''
		lockstyle()
    elseif command == 'aby' then
        mode = 'ABY'
        send_command('input //ws dnc_aby on')
		lockstyle()
    elseif command == 'abyp' then
        mode = 'ABYP'
		lockstyle()
    elseif command == 'su5' then
        mode = 'SU5'
        send_command('input //ws s')
		lockstyle()
    elseif command == 'amb' then
        mode = 'AMB'
		lockstyle()
    elseif command == 'p' then
        mode = 'P'
		lockstyle()
        send_command('input //ws dnc_p on')
    elseif command == 'paby' then
        mode = 'PABY'
		lockstyle()
        send_command('input //ws dnc_p on')
    elseif command == 'aby5' then
        mode = 'ABY5'
		lockstyle()
        send_command('input //ws dnc_aby on')
    elseif command == 'p5' then
        mode = 'P5'
		lockstyle()
        -- send_command('input //ws dnc_p')
    elseif command == 'sw' then
        mode = 'SW'
		lockstyle()
    else
        windower.add_to_chat('Mode: '..tostring(mode))
        windower.add_to_chat('Available modes: [aby, abyp, p, paby, amb, sw, su5, p5, aby5]')
        windower.add_to_chat('PDT: '..tostring(pdt))
        windower.add_to_chat('Omen: '..tostring(omen))
        windower.add_to_chat('TH: '..tostring(th))
        windower.add_to_chat('SA: '..tostring(autoSA))
    end
    
    if command ~= 'pha1' then
        setIdle()
    end
    -- updateText()
end