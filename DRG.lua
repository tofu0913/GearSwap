
mylib = require('mylib')
packets = require('packets')
res = require('resources')

function get_sets()
    set_language('japanese')
    
    sets.ws = {}
    sets.mode = {}
    sets.tp = {}

    pdt = false
    announce = false
    th = false
    blow = false
    mode = ''
	default_style = 15
    
    sets.mode['Sword'] = {
        main="ネイグリング",
        sub="ターニオンダガー+1",
		style=15,
    }
    sets.mode['Club'] = {
        main="ネイグリング",
        sub="クラーケンクラブ",
		style=15,
    }
    sets.mode['Shine'] = {
        main="シャイニングワン",
        sub="ウトゥグリップ",
		style=22,
    }
    sets.mode['po'] = {
        main="コッパーヘッド",
        sub="ウトゥグリップ",
		style=15,
    }
    
    sets.tp={
        ammo={ name="コイストボダー", augments={'Path: A',}},
		head="ニャメヘルム",
		body={ name="グレティキュイラス", augments={'Path: A',}},
		hands={ name="ニャメガントレ", augments={'Path: B',}},
		legs="ニャメフランチャ",
		feet="フラマガンビエラ+2",
		neck="無の喉輪",
		waist="ウィンバフベルト+1",
		left_ear="セサンスピアス",
		right_ear="シェリダピアス",
		left_ring="シーリチリング+1",
		right_ring="ニックマドゥリング",
		back="無の外装",
    }
    sets.tp['Club']={
		ammo={ name="コイストボダー", augments={'Path: A',}},
		head="ニャメヘルム",
		body="フロプトブレスト",
		hands={ name="ニャメガントレ", augments={'Path: B',}},
		legs="ニャメフランチャ",
		feet={ name="ニャメソルレット", augments={'Path: B',}},
		neck="無の喉輪",
		waist={ name="ケンタークベルト+1", augments={'Path: A',}},
		left_ear="素破の耳",
		right_ear={ name="ペルタスピアス+1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','Crit.hit rate+3',}},
		left_ring="シーリチリング+1",
		right_ring="イフラマドリング",
		back="無の外装",
		-- back={ name="ブリガンチアマント", augments={'STR+20','Accuracy+20 Attack+20','STR+5','Weapon skill damage +10%',}},
	}

    sets.ws={
        ammo="ノブキエリ",
        -- head="ＡＧマスク+3",
        -- body="ＰＭロリカ+3",
        -- hands="ＢＩマフラ+3",
        -- legs="ＢＩクウィス+3",
        -- feet="スレビアレギンス+2",
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        -- neck="戦士の数珠+2",
        waist={ name="セールフィベルト+1", augments={'Path: A',}},
        left_ring="イフラマドリング",
        right_ring="王将の指輪",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="スラッドピアス",
		back={ name="ブリガンチアマント", augments={'STR+20','Accuracy+20 Attack+20','STR+5','Weapon skill damage +10%',}},
    }
    sets.ws["Ukko's Fury"]=set_combine(sets.ws, {
        feet="ＢＩカリガ+2",
    })
	
	sets.buff = {}
    sets.buff.Phalanx = {
        -- legs="サクパタクウィス",
	}
	
    sets.pdt = {
        -- head="ＢＩマスク+3",
        -- body="ニャメメイル",
        -- body="サクパタブレスト",
        -- hands="サクパタガントレ",
        -- legs="サクパタクウィス",
        -- feet="ＢＩカリガ+2",
        -- neck="ホメリクゴルゲット",
        -- left_ring="ジェリーリング",
        waist="プラチナモグベルト",
    }
    sets.blow = {
        -- head="サクパタヘルム",
        body="デーゴンブレスト",
        -- hands="サクパタガントレ",
        -- legs="サクパタクウィス",
		-- feet="サクパタレギンス",
		neck="バーシチョーカー+1",
    }
    sets.th = {
        ammo="完璧な幸運の卵",
        -- legs={ name="オディシアクウィス", augments={'"Dbl.Atk."+3','Pet: Haste+3','"Treasure Hunter"+1','Accuracy+9 Attack+9',}},
    }
    
    sets.ja = {}
    sets.ja.Angon = {
        -- ammo="Ｔ．トマホーク",
        hands="ＰＴフィンガー+1",--"ＰＴフィンガー+3",
    }
    
    sets.ra = {
        range="ラミアベーン",
    }

    -- Common equipments
    sets.fc = {
		ammo="サピエンスオーブ",
		-- head="サクパタヘルム",
		-- feet={ name="オディシアグリーヴ", augments={'Attack+12','"Fast Cast"+5','Accuracy+5',}},
        neck="ボルトサージトルク",
        right_ear="ロケイシャスピアス",
        left_ring="キシャールリング",
        right_ring="プロリクスリング",
    }
    sets.walk = {
        right_ring="シュネデックリング",
    }
    sets.walk.adoulin = set_combine(sets.walk, {
        body="カウンセラーガーブ",
    })
    sets.walk.windusts = set_combine(sets.walk, {
        -- body="元老院警護リバリ",
    })
    sets.walk.windust = set_combine(sets.walk, {
        -- body="連邦制式礼服",
    })
    
    sets.HolyWater = {
        neck="ニカンダネックレス",
        -- left_ring="Purity Ring",
    }

    send_command('input /macro book 9;wait 2;input /lockstyleset '..default_style)
end

function precast(spell)
    local set_equip = nil

    if spell.type == 'Trust' or spell.action_type == 'Magic' then
        set_equip = sets.fc
    elseif spell.english == 'Spectral Jig' and windower.ffxi.get_ability_recasts()[218] == 0 then
        windower.ffxi.cancel_buff(71)
    elseif spell.english == "Tomahawk" then
        set_equip = sets.ja.Tomahawk
    elseif spell.action_type == 'Ranged Attack' then
         set_equip = sets.ra
    elseif sets.ja[spell.english] then
        set_equip = sets.ja[spell.english]
    end

    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil
    
    if buffactive['睡眠'] or buffactive['石化'] or buffactive['スタン'] or buffactive['魅了'] or buffactive['アムネジア'] or buffactive['テラー'] or buffactive['ララバイ'] or buffactive['インペア'] then
        return
    end

    if spell.type == 'WeaponSkill' then
        if sets.ws[spell.english] then
            set_equip = sets.ws[spell.english]
        else
            set_equip = sets.ws
        end
        if uncap then
            set_equip = set_combine(set_equip, sets.uncap)
        end
    elseif sets.ja[spell.english] then
        set_equip = sets.ja[spell.english]
    elseif sets.buff[spell.english] then
        set_equip = sets.buff[spell.english]
    end

    if set_equip then
        equip(set_equip)
    end
end

function aftercast(spell)
    --- JA announcement
    if announce then
        if spell.english=='Warcry' then
            send_command(windower.to_shift_jis('input /p >> ウォークライ (Warcry)...'))
        elseif spell.english=='Blood Rage' then
            send_command(windower.to_shift_jis('input /p >> ブラッドレイジ (Blood Rage)...'))
        elseif spell.english=='Tomahawk' then
            send_command(windower.to_shift_jis('input /p >> トマホーク (Tomahawk)...'))
        end
    end

    setIdle()
end

function status_change(new,old)
    setIdle()
end

function buff_change(buff,gain,buff_details)
    if buff == '死の宣告' then
        if gain then
            send_command(windower.to_shift_jis('input /p 死の宣告！！！Doom!!!!!!!!!!!!!<call>'))
        else
            windower.add_to_chat("死の宣告から回復した、Doom gone....")
        end
    end
end

windower.register_event('outgoing chunk',function(id,data)
	if id == 0x037 then
		local packet = packets.parse('outgoing', data)
        item_used = res.items[windower.ffxi.get_items(packet.Bag, packet.Slot).id].en
        if item_used == 'Holy Water' then  
          if player.equipment.left_ring == "Purity Ring" and player.equipment.neck == "Nicander's Necklace" then
            -- nothing
          else
            -- windower.add_to_chat(2,"Equipping gear and adding delay")
            windower.send_command("gs equip sets.HolyWater")
            send_command(windower.to_shift_jis('@wait 0.5; input /item "聖水" <me>'))
            return true
          end
        end
	end
end)

function setIdle()
    set_equip = nil
    
    if sets.tp[mode] then
        tp_set = sets.tp[mode]
    else
        tp_set = sets.tp
    end
    if pdt then
        set_equip = set_combine(tp_set, sets.pdt)
	elseif blow then
        set_equip = set_combine(sets.tp, sets.blow)
    else
        set_equip = tp_set
    end
    if windower.ffxi.get_player().status == 0 then
        -- windower.add_to_chat((world.area))
        set_equip = set_combine(set_equip, sets.walk)
        
        if  mylib.is_in_adoulin(world.area) then
            set_equip = set_combine(set_equip, sets.walk.adoulin)
        elseif mylib.is_in_windust(world.area) then
            set_equip = set_combine(set_equip, sets.walk.windust)
        elseif mylib.is_in_windusts(world.area) then
            set_equip = set_combine(set_equip, sets.walk.windusts)
        end
    end
    if th then
        set_equip = set_combine(set_equip, sets.th)
    end

    if set_equip then
        equip(set_combine(sets.mode[mode], set_equip))
    end
end

function sub_job_change(new,old)
    send_command('wait 4;input /lockstyleset 1')
end

function lockstyle()
	if mode ~='' and sets.mode[mode] and sets.mode[mode].style then
		send_command('input /lockstyleset '..sets.mode[mode].style)
	else
		send_command('input /lockstyleset '..default_style)
	end
end

function self_command(command)
    command = command:lower()
    if command == 'pdt' then
        pdt = not pdt
        windower.add_to_chat('PDT- is: '..tostring(pdt))
		
    elseif command == 'style' or command == 's' then
		lockstyle()
		
    elseif command == 'blow' then
        blow = not blow
        windower.add_to_chat('Blow-: '..tostring(blow))
    elseif command == 'ann' then
        announce = not announce
        windower.add_to_chat('Announce is: '..tostring(announce))
    elseif command == 'th1' then
        th = true
    elseif command == 'th0' then
        th = false
    elseif command == 'th' then
        th = not th
        windower.add_to_chat('TH is: '..tostring(th))
    elseif command == 'pha1' then
        windower.add_to_chat('Phalanx ON')
        local spell = {}
        spell.english = 'Phalanx'
        spell.type = '強化魔法'
        midcast(spell)
    elseif command == 'pha0' then
        windower.add_to_chat('Phalanx OFF')
    elseif command == 'free' then
        mode = ''
		lockstyle()
    elseif command == 'sw' then
        mode = 'Sword'
        send_command('input //ws war_sw')
		lockstyle()
    elseif command == 'cb' then
        mode = 'Club'
        send_command('input //ws war_sw')
		lockstyle()
    elseif command == 'shine' then
        mode = 'Shine'
        send_command('input //ws war_po')
		lockstyle()
    elseif command == 'po' then
        mode = 'Polearm'
        send_command('input //ws drg')
		lockstyle()
        
    elseif command == 'help' then
        windower.add_to_chat('==============================')
        windower.add_to_chat('Mode: '..tostring(mode))
        -- windower.add_to_chat('Available modes: [sw, gax, cb, po]')
        -- windower.add_to_chat('PDT: '..tostring(pdt))
        -- windower.add_to_chat('Accuracy: '..tostring(acc))
        -- windower.add_to_chat('Uncapped: '..tostring(uncap))
        -- windower.add_to_chat('TH: '..tostring(th))
        -- windower.add_to_chat('Announce: '..tostring(announce))
    end
    
    if command ~= 'pha1' then
        setIdle()
    end
end