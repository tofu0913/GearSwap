
mylib = require('mylib')

function get_sets()
    set_language('japanese')

    sets.ws = {}
    sets.mode = {}
    sets.tp = {}
    
    pdt = false
    th = false
    autoSA = false
	default_style = 12
        
    sets.mode['ABY'] = {
        main={ name="トゥワシュトラ", augments={'Path: A',}},
        sub={ name="フセット+2", augments={'TP Bonus +1000',}},
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
    sets.mode['ABYTH'] = {
        main={ name="トゥワシュトラ", augments={'Path: A',}},
        sub="ガンドリング",
		style=12,
    }
    sets.mode['P'] = {
        main="ンプガンドリング",
        sub={ name="フセット+2", augments={'TP Bonus +1000',}},
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
        neck="クロタリウストルク",--job neck
		
        -- ammo="コイストボダー",
        ammo={ name="シーズボムレット+1", augments={'Path: A',}},
        -- ammo="銀銭",
        head={ name="アデマボンネット+1", augments={'STR+12','DEX+12','Attack+20',}},
        -- body="ムンムジャケット+2",
        -- body="ＨＯカザク+3",
        body="マリグナスタバード",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        -- legs="メガナダショウス+2",
        legs={ name="サムヌータイツ", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
        feet="マリグナスブーツ",
        -- waist="ウィンバフベルト+1",
        waist="ケンタークベルト+1",
        right_ear="スカルカピアス+1",
        left_ear="テロスピアス",
        left_ring="シーリチリング+1",
        -- right_ring="ムンムリング",
        -- right_ring="ペトロフリング",
        -- right_ring="ゲリリング",
		right_ring="イフラマドリング",
		-- back={ name="トゥタティスケープ", augments={'Phys. dmg. taken-10%',}},
    }
    sets.ws={
        ammo="コイストボダー",
        -- head="ニャメヘルム",
        body="メガナダクウィリ+2",
        hands="ニャメガントレ",
        -- legs="ニャメフランチャ",
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        waist="ケンタークベルト+1",
        left_ear="胡蝶のイヤリング",
        right_ear="オドルピアス",
        left_ring="イフラマドリング",
        right_ring="王将の指輪",
		back={ name="トゥタティスケープ", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
    }
    sets.ws.fulltp={
    }
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
    sets.ws['Exenterator'] = set_combine(sets.ws, {
        -- right_ear="オドルピアス",
        -- body="ムンムジャケット+2",
        legs="メガナダショウス+2",
        feet="ムンムゲマッシュ+2",
        -- waist="グルンフェルロープ",
    })
    sets.ws['Rudra\'s Storm'] = set_combine(sets.ws, {
        neck="フォシャゴルゲット",
        -- waist="フォシャベルト",
    })
    sets.ws['Ruthless Stroke'] = set_combine(sets.ws, {
        -- neck="フォシャゴルゲット",
        -- waist="フォシャベルト",
    })
    sets.th = {
        ammo="完璧な幸運の卵",
		head="ヘルクリアヘルム",
		hands="ＰＤアムレット+1",
		feet="ＳＫプーレーヌ+1",
		waist="チャークベルト",
    }
    
    sets.ja = {}
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

    -- Common equipments
    sets.fc = {
		head="ヘルクリアヘルム",
        neck="ボルトサージトルク",
        right_ear="ロケイシャスピアス",
        right_ring="プロリクスリング",
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
				if windower.ffxi.get_ability_recasts()[240] < 1 then
					send_command(windower.to_shift_jis('input /ja "不意打ち" <me>; wait 1; input /ja "まどわす" <t>; wait 2; input /ws "'..spell.name..'" <t>'))
				elseif windower.ffxi.get_ability_recasts()[63] < 1 then
					send_command(windower.to_shift_jis('input /ja "不意打ち" <me>; wait 1; input /ja "かくれる" <me>; wait 2; input /ws "'..spell.name..'" <t>'))
				else
					send_command(windower.to_shift_jis('input /ws "'..spell.name..'" <t>'))
				end
			elseif windower.ffxi.get_ability_recasts()[67] < 1 then
				locked = true
				cancel_spell()
				send_command(windower.to_shift_jis('input /ja "アサシンチャージ" <me>; wait 1; input /ws "'..spell.name..'" <t>'))
			end
		end
    end

    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil

    if sets.ja[spell.english] then
        set_equip = sets.ja[spell.english]
    elseif spell.type == 'WeaponSkill' and not buffactive['アムネジア'] then
        if sets.ws[spell.english] then
            set_equip = sets.ws[spell.english]
        else
            set_equip = sets.ws
        end
        if windower.ffxi.get_player().vitals.tp == 3000 then
            set_equip = set_combine(set_equip, sets.ws.fulltp)
        end
    elseif sets.buff[spell.english] then
        set_equip = sets.buff[spell.english]
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
end

function setIdle()
    set_equip = nil
    
    if pdt then
        set_equip = set_combine(sets.tp, sets.pdt)
    else
        -- if acc then
            -- set_equip = sets.acc
        -- else
            set_equip = sets.tp
        -- end
    end
    if windower.ffxi.get_player().status == 0 then
        -- windower.add_to_chat((world.area))
        set_equip = set_combine(set_equip, sets.walk)
        
        if  mylib.is_in_adoulin(world.area) then
            set_equip = set_combine(set_equip, sets.walk.adoulin)
        end
    end
    if th then
        set_equip = set_combine(set_equip, sets.th)
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
end

function self_command(command)
    command = command:lower()
    if command == 'pdt' then
        pdt = not pdt
        windower.add_to_chat('PDT- is: '..tostring(pdt))
		
    elseif command == 'style' or command == 's' then
		lockstyle()
        
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
    elseif command == 'sa' then
        autoSA = not autoSA
        windower.add_to_chat('SA is: '..tostring(autoSA))
    elseif command == 'free' then
        mode = ''
		lockstyle()
    elseif command == 'aby' then
        mode = 'ABY'
        send_command('input //ws dnc_aby')
		lockstyle()
    elseif command == 'abyp' then
        mode = 'ABYP'
		lockstyle()
    elseif command == 'abyth' then
        mode = 'ABYTH'
        send_command('input //ws dnc_aby')
		lockstyle()
    elseif command == 'amb' then
        mode = 'AMB'
		lockstyle()
    elseif command == 'p' then
        mode = 'P'
		lockstyle()
        send_command('input //ws dnc_p')
    elseif command == 'paby' then
        mode = 'PABY'
		lockstyle()
        send_command('input //ws dnc_p')
    elseif command == 'sw' then
        mode = 'SW'
		lockstyle()
    else
        windower.add_to_chat('Mode: '..tostring(mode))
        windower.add_to_chat('Available modes: [aby, amb, acc, p]')
        windower.add_to_chat('PDT: '..tostring(pdt))
        windower.add_to_chat('TH: '..tostring(th))
        -- windower.add_to_chat('Announce is: '..tostring(announce))
    end
    
    if command ~= 'pha1' then
        setIdle()
    end
    -- updateText()
end