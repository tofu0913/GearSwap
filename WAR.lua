
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
    uncap = false
    acc = false
    th = false
    mode = ''
    
    sets.mode['Sword'] = {
        main="ネイグリング",
        sub="ブラーシールド+1",
    }
    sets.mode['Great Axe'] = {
        main={ name="シャンゴル", augments={'Path: A',}},
        sub="ウトゥグリップ",
    }
    sets.mode['Club'] = {
        main={ name="ロクソテクメイス+1", augments={'Path: A',}},
        sub="ブラーシールド+1",
    }
    sets.mode['Club'] = {
        main={ name="ロクソテクメイス+1", augments={'Path: A',}},
        sub="ブラーシールド+1",
    }
    sets.mode['Polearm'] = {
        main="シャイニングワン",
        sub="ウトゥグリップ",
    }
    
    
    sets.tp={
        ammo="コイストボダー",
        -- ammo="銀銭",
        head="ＢＩマスク+3",
        -- body="フロプトブレスト",
        body="ＢＩロリカ+3",
        -- body="サクパタブレスト",
        -- body="デーゴンブレスト",
        hands="サクパタガントレ",
        legs="ＰＭクウィス+3",
        -- legs="ＢＩクウィス+3",
        -- feet="フラマガンビエラ+2",
        feet="ＰＭカリガ+3",
        neck="戦士の数珠+2",
        waist={ name="セールフィベルト+1", augments={'Path: A',}},
        left_ring="シーリチリング+1",
        -- right_ring="フラマリング",
        right_ring="ニックマドゥリング",
        -- right_ring="イフラマドリング"
        left_ear="テロスピアス",
        -- left_ear="セサンスピアス",
        right_ear={ name="ボイイピアス+1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+13','Mag. Acc.+13','Crit.hit rate+4',}},
        back={ name="シコルマント", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }
    sets.tp['Great Axe']=set_combine(sets.tp, {
        ammo="コイストボダー",
        body="ＢＩロリカ+3"
    })

    sets.ws={
        -- ammo={ name="シーズボムレット+1", augments={'Path: A',}},
        ammo="ノブキエリ",
        head="ＡＧマスク+3",
        body="ＰＭロリカ+3",
        hands="ＢＩマフラ+3",
        legs="ＢＩクウィス+3",
        -- feet="スレビアレギンス+2",
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        left_ring="イフラマドリング",
        right_ring="王将の指輪",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="スラッドピアス",
        back={ name="シコルマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
    }
    sets.ws["Ukko's Fury"]=set_combine(sets.ws, {
        feet="ＢＩカリガ+2",
    })
    sets.ws["Upheaval"]=set_combine(sets.ws, {
        back={ name="シコルマント", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},
    })
    
    sets.acc={
        ammo={ name="シーズボムレット+1", augments={'Path: A',}},
        head="ＢＩマスク+3",
        -- body="サクパタブレスト",
        body="ＰＭロリカ+3",
        hands="ＢＩマフラ+3",
        legs="ＰＭクウィス+3",
        -- feet="ＢＩカリガ+2",
        feet="ＰＭカリガ+3",
        neck={ name="戦士の数珠+2", augments={'Path: A',}},
        waist="ケンタークベルト+1",
        -- left_ring="シーリチリング+1",
        left_ring="イフラマドリング",
        right_ring="王将の指輪",
    }
    sets.pdt = {
        head="ＢＩマスク+3",
        -- body="ニャメメイル",
        body="サクパタブレスト",
        hands="サクパタガントレ",
        -- legs="サクパタクウィス",
        feet="ＢＩカリガ+2",
        -- neck="ホメリクゴルゲット",
        -- left_ring="ジェリーリング",
        waist="プラチナモグベルト",
    }
    sets.uncap = {
        -- head="サクパタヘルム",
        body="サクパタブレスト",
        hands="サクパタガントレ",
        -- feet="サクパタレギンス",
    }
    sets.th = {
        ammo="完璧な幸運の卵",
        legs={ name="オディシアクウィス", augments={'"Dbl.Atk."+3','Pet: Haste+3','"Treasure Hunter"+1','Accuracy+9 Attack+9',}},
    }
    
    sets.ja = {}
    sets.ja.Warcry = {
        head="ＡＧマスク+3",
    }
    sets.ja.Berserk = {
        body="ＰＭロリカ+3",
        feet="ＡＧカリガ+1",
    }
    sets.ja.Aggressor = {
        head="ＰＭマスク+1",
        body="ＡＧロリカ+1",
    }
    sets.ja['Blood Rage'] = {
        body="ＢＩロリカ+3"
    }
    sets.ja['Restraint'] = {
        body="ＢＩマフラ+3"
    }
    sets.ja['Mighty Strikes'] = {
        hands="ＡＧマフラ+1",
    }
    sets.ja.Tomahawk = {
        ammo="Ｔ．トマホーク",
        feet="ＡＧカリガ+1",
    }
    
    sets.ra = {
        range="ラミアベーン",
    }

    -- Common equipments
    sets.fc = {
        neck="ボルトサージトルク",
        right_ear="ロケイシャスピアス",
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

    send_command('input /macro book 9;wait 2;input /lockstyleset 1')
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
    else
        if acc then
            set_equip = sets.acc
        else
            set_equip = tp_set
        end
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

function self_command(command)
    command = command:lower()
    if command == 'pdt' then
        pdt = not pdt
        windower.add_to_chat('PDT- is: '..tostring(pdt))
    elseif command == 'uncap' then
        uncap = not uncap
        windower.add_to_chat('Uncapped is: '..tostring(uncap))
    elseif command == 'acc' then
        acc = not acc
        windower.add_to_chat('Accuracy is: '..tostring(acc))
    elseif command == 'ann' then
        announce = not announce
        windower.add_to_chat('Announce is: '..tostring(announce))
    elseif command == 'th' then
        th = not th
        windower.add_to_chat('TH is: '..tostring(th))
    elseif command == 'free' then
        mode = ''
    elseif command == 'sw' then
        mode = 'Sword'
        send_command('input //ws war_sw')
    elseif command == 'gax' then
        mode = 'Great Axe'
    elseif command == 'cb' then
        mode = 'Club'
        send_command('input //ws war_cb')
    elseif command == 'po' then
        mode = 'Polearm'
        send_command('input //ws war_po')
    else
        windower.add_to_chat('==============================')
        windower.add_to_chat('Mode: '..tostring(mode))
        windower.add_to_chat('Available modes: [sw, gax, cb, po]')
        windower.add_to_chat('PDT: '..tostring(pdt))
        windower.add_to_chat('Accuracy: '..tostring(acc))
        windower.add_to_chat('Uncapped: '..tostring(uncap))
        windower.add_to_chat('TH: '..tostring(th))
        windower.add_to_chat('Announce: '..tostring(announce))
    end
    
    setIdle()
end