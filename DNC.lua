
mylib = require('mylib')

function get_sets()
    set_language('japanese')

    sets.ws = {}
    sets.mode = {}
    sets.tp = {}
    
    pdt = false
    acc = false
    th = false
    lowhaste = false
    mode = ''
        
    sets.mode['Dagger'] = {
        main="トーレット",
        sub="エミネンダガー",
    }

    sets.tp={
        ammo="コイストボダー",
        head={ name="アデマボンネット+1", augments={'STR+12','DEX+12','Attack+20',}},
        body="ムンムジャケット+2",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs="メガナダショウス+2",
        feet="ムンムゲマッシュ+1",
        neck={ name="エトワールゴルゲ+2", augments={'Path: A',}},
        waist="ケンタークベルト+1",
        left_ear="シェリダピアス",
        right_ear="テロスピアス",
        left_ring="シーリチリング+1",
        right_ring="ムンムリング",
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+5','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }
    sets.tp.lowhaste={
        head="ＭＸティアラ+2",
        right_ring="王将の指輪",
    }
    sets.ws={
        ammo="カリスフェザー",
        hands="ＭＸバングル+2",
        right_ear={ name="マクレレピアス+1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','"Store TP"+3',}},
        left_ear="胡蝶のイヤリング",
        left_ring="イフラマドリング",
        right_ring="王将の指輪",
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
    }
    sets.th = {
        ammo="完璧な幸運の卵",
        -- legs={ name="オディシアクウィス", augments={'"Dbl.Atk."+3','Pet: Haste+3','"Treasure Hunter"+1','Accuracy+9 Attack+9',}},
    }
    
    sets.ja = {}
    sets.ja.Jig = {
        legs="ＨＯタイツ+1",
    }
    sets.ja['Reverse Flourish'] = {
        hands="ＭＣバングル+1",
    }
    sets.ja['Climactic Flourish'] = {
        hands="ＭＣティアラ+1",
    }
    
    sets.ra = {
        range="アルビンベーン",
    }

    -- Common equipments
    sets.fc = {
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
    sets.walk.windusts = set_combine(sets.walk, {
        body="元老院警護リバリ",
    })
    sets.walk.windust = set_combine(sets.walk, {
        body="連邦制式礼服",
    })

    send_command('input /macro book 6; ')
    send_command('wait 2;input /lockstyleset 17')
    -- send_command('wait 2;input /lockstyleset 18')
end

function precast(spell)
    local set_equip = nil

    if spell.type == 'Trust' or string.find(spell.type, 'Magic') then
        set_equip = sets.fc
    elseif spell.english == 'Spectral Jig' then
        windower.ffxi.cancel_buff(71)
    elseif spell.action_type == 'Ranged Attack' then
        set_equip = sets.ra
    elseif spell.type == 'Step' then
        local prestoCooldown = windower.ffxi.get_ability_recasts()[236]
        local under3FMs = not buffactive['フィニシングムーブ3'] and not buffactive['フィニシングムーブ4'] and not buffactive['フィニシングムーブ5'] and not buffactive['フィニシングムーブ(5+)']
        if prestoCooldown < 1 and under3FMs then
            cast_delay(1.1)
            send_command(windower.to_shift_jis('input /ja "プレスト" <me>'))
        end
    -- elseif spell.type == 'WeaponSkill' then
        -- local f3Cooldown = windower.ffxi.get_ability_recasts()[226]
        -- if f3Cooldown < 1 then
            -- cancel_spell()
            -- cast_delay(1.1)
            -- send_command(windower.to_shift_jis('input /ja "C.フラリッシュ" <me>; wait 1; input /ws "'..spell.english..'" <t>'))
        -- end
    end

    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil

    if spell.type=='Jig' then
        set_equip = sets.ja.Jig
    elseif sets.ja[spell.english] then
        set_equip = sets.ja[spell.english]
    elseif spell.type == 'WeaponSkill' and not buffactive['アムネジア'] then
        if sets.ws[spell.english] then
            set_equip = sets.ws[spell.english]
        else
            set_equip = sets.ws
        end
    end
    
    if set_equip then
        equip(set_equip)
    end
end

function aftercast(spell)

    setIdle()
end

function status_change(new,old)
    setIdle()
end

function setIdle()
    set_equip = nil
    
    if pdt then
        set_equip = set_combine(sets.tp, sets.pdt)
    else
        if acc then
            set_equip = sets.acc
        else
            set_equip = sets.tp
        end
        if lowhaste then
            set_equip = set_combine(set_equip, sets.tp.lowhaste)
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
        equip(set_equip)
    end
end


function self_command(command)
    if command == 'pdt' then
        pdt = not pdt
        windower.add_to_chat('PDT- is: '..tostring(pdt))
    -- elseif command == 'uncap' then
        -- uncap = not uncap
        -- windower.add_to_chat('Uncapped is: '..tostring(uncap))
    elseif command == 'lowhaste' then
        lowhaste = not lowhaste
        windower.add_to_chat('Low Haste is: '..tostring(lowhaste))
    elseif command == 'acc' then
        acc = not acc
        windower.add_to_chat('Accuracy is: '..tostring(acc))
    -- elseif command == 'ann' then
        -- announce = not announce
        -- windower.add_to_chat('Announce is: '..tostring(announce))
    elseif command == 'th' then
        th = not th
        windower.add_to_chat('TH is: '..tostring(th))
    elseif command == 'free' then
        mode = ''
    elseif command == 'dg' then
        mode = 'Dagger'
    else
        windower.add_to_chat('==============================')
        windower.add_to_chat('Mode- is: '..tostring(mode))
        windower.add_to_chat('PDT- is: '..tostring(pdt))
        windower.add_to_chat('Accuracy is: '..tostring(acc))
        -- windower.add_to_chat('Uncapped is: '..tostring(uncap))
        windower.add_to_chat('Low Haste is: '..tostring(lowhaste))
        windower.add_to_chat('TH is: '..tostring(th))
        -- windower.add_to_chat('Announce is: '..tostring(announce))
    end
    
    setIdle()
end