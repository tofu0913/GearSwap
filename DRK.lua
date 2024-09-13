
mylib = require('mylib')

function get_sets()
    set_language('japanese')
    
    sets.ws = {}
    sets.mode = {}
    sets.tp = {}

    pdt = false
    uncap = false
    th = false
    mode = ''
        
    sets.mode['Sword'] = {
        main="ネイグリング",
        sub="ブラーシールド+1",
    }
    sets.mode['Great Sword'] = {
        main={ name="カラドボルグ", augments={'Path: A',}},
        sub="ポールグリップ",
    }
    sets.mode['Scythe'] = {
        main={ name="アポカリプス", augments={'Path: A',}},
        sub="ポールグリップ",
    }
    sets.mode['Club'] = {
        main={ name="ロクソテクメイス+1", augments={'Path: A',}},
        sub="ブラーシールド+1",
    }
    sets.tp={
        -- ammo="銀銭",
        ammo={ name="シーズボムレット+1", augments={'Path: A',}},
        
        head="ＨＴバゴネット+3",
        -- body="デーゴンブレスト",
        legs="ＩＧフランチャ+3",
        
        -- ### Ambuscade set ###
        -- head="フラマツッケット+2",
        -- body="フラマコラジン+2",
        -- hands="スレビアガントレ+2",
        -- legs="スレビアクウィス+2",
        feet="フラマガンビエラ+2",
        
        -- ### Sakpata set ###
        body="サクパタブレスト",
        hands="サクパタガントレ",
        -- legs="サクパタクウィス",
    
        -- ### Nyame set ###
        -- head="ニャメヘルム",
        -- body="ニャメメイル",
        -- hands="ニャメガントレ",
        -- legs="ニャメフランチャ",
        -- feet="ニャメソルレット",
        
        neck={ name="暗黒の数珠+2", augments={'Path: A',}},
        waist={ name="セールフィベルト+1", augments={'Path: A',}},
        left_ear="セサンスピアス",
        -- right_ear="ブルタルピアス",
        right_ear="テロスピアス",
        -- right_ear="ヒーズンピアス",
        left_ring="シーリチリング+1",
        right_ring="ニックマドゥリング",
        -- right_ring="王将の指輪",
        -- right_ring="フラマリング",
        back={ name="アンコウマント", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }
    sets.tp['Great Sword']=set_combine(sets.tp, {
    })

    sets.ws={
        -- ammo={ name="シーズボムレット+1", augments={'Path: A',}},
        ammo="ノブキエリ",
        head="ＨＴバゴネット+3",
        body="ＩＧキュイラス+3",
        -- hands="ニャメガントレ",
        hands="サクパタガントレ",
        legs={ name="ＦＬフランチャー+3", augments={'Enhances "Muted Soul" effect',}},
        feet="ＨＴソルレット+3",
        -- left_ring="シーリチリング+1",
        left_ring="イフラマドリング",
        right_ring="王将の指輪",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="スラッドピアス",
        -- right_ear="ヒーズンピアス",
        back={ name="アンコウマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
    }
    sets.ws.Catastrophe = set_combine(sets.ws, {
        -- head="ラトリサリット",
        -- body="ラトリブレスト",
        hands="ラトリガドリング",
    })
    sets.ws.Torcleaver = set_combine(sets.ws, {
        -- head="サクパタヘルム",
        -- head={ name="オディシアヘルム", augments={'Attack+15','Weapon skill damage +1%','VIT+13','Accuracy+9',}},
        -- body="サクパタブレスト",
        -- hands={ name="オディシアガントレ", augments={'Accuracy+13 Attack+13','Weapon skill damage +4%','Accuracy+15','Attack+14',}},
        -- legs="サクパタクウィス",
        -- feet="スレビアレギンス+2",
        back={ name="アンコウマント", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%',}},
    })
    
    sets.pdt = {
        head="ニャメヘルム",
        body="ニャメメイル",
        hands="ニャメガントレ",
        legs="ニャメフランチャ",
        feet="ニャメソルレット",
    }
    sets.uncap = {
        body="サクパタブレスト",
        hands="サクパタガントレ",
        legs="サクパタクウィス",
    }
    sets.th = {
        ammo="完璧な幸運の卵",
        legs={ name="オディシアクウィス", augments={'"Dbl.Atk."+3','Pet: Haste+3','"Treasure Hunter"+1','Accuracy+9 Attack+9',}},
    }

    sets.drk_magic = {
        head="ＦＬバーゴネット+1",
        legs="ＨＴフランチャ+1",
        neck="エーラペンダント",
        right_ring="エバネセンスリング",
        left_ring="アルコンリング",
        left_ear="マニピアス",
        right_ear="マリグナスピアス",
        
        body="ニャメメイル",
        hands="ニャメガントレ",
        feet="ニャメソルレット",
        
        back={ name="デオルクネスマント", augments={'Attack+5','Dark magic skill +10',}},
    }
    sets.drain = {
        -- head="ストリガクラウン",
        right_ear="ヒルディネアピアス",
        waist="オステリベルト+1",
        hands="ＦＬガントレット+1",
    }
    
    sets.ra = {
        range="ラミアベーン",
    }

    -- Common equipments
    sets.fc = {
        left_ear="マリグナスピアス",
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

    send_command('input /macro book 3; wait 2;input /lockstyleset 19')
end

function precast(spell)
    local set_equip = nil

    if spell.type == 'Trust' or string.find(spell.type, 'Magic') then
        set_equip = sets.fc
    elseif spell.english == 'Spectral Jig' and windower.ffxi.get_ability_recasts()[218] == 0 then
        windower.ffxi.cancel_buff(71)
    elseif string.find(spell.name, 'ドレイン') or string.find(spell.name, 'アスピル') then
        set_equip = set_combine(sets.drk_magic, sets.drain)
    elseif string.find(spell.name, 'アブゾ') or string.find(spell.name, 'エンダーク') then
        set_equip = sets.drk_magic
    elseif spell.action_type == 'Ranged Attack' then
         set_equip = sets.ra
    end

    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil

    if spell.type == 'WeaponSkill' and not buffactive['アムネジア'] then
        if sets.ws[spell.english] then
            set_equip = sets.ws[spell.english]
        else
            set_equip = sets.ws
        end
        if uncap then
            set_equip = set_combine(set_equip, sets.uncap)
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
    
    if sets.tp[mode] then
        tp_set = sets.tp[mode]
    else
        tp_set = sets.tp
    end
    if pdt then
        set_equip = set_combine(sets.tp, sets.pdt)
    else
        set_equip = sets.tp
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

    if set_equip then
        equip(set_combine(sets.mode[mode], set_equip))
    end
end

function self_command(command)
    if command == 'pdt' then
        pdt = not pdt
        windower.add_to_chat('PDT- is: '..tostring(pdt))
    elseif command == 'uncap' then
        uncap = not uncap
        windower.add_to_chat('Uncapped is: '..tostring(uncap))
    elseif command == 'th' then
        th = not th
        windower.add_to_chat('TH is: '..tostring(th))
        if th then
            equip(sets.th)
            disable('legs', 'ammo')
        else
            enable('legs', 'ammo')
            setIdle()
        end
    elseif command == 'free' then
        mode = ''
        setIdle()
    elseif command == 'sw' then
        mode = 'Sword'
        setIdle()
    elseif command == 'cb' then
        mode = 'Club'
        setIdle()
    elseif command == 'gsw' then
        mode = 'Great Sword'
        setIdle()
    elseif command == 'sc' then
        mode = 'Scythe'
        setIdle()
    else
        windower.add_to_chat('==============================')
        windower.add_to_chat('Mode: '..tostring(mode))
        windower.add_to_chat('Available modes: [sw, gsw, cb, sc]')
        windower.add_to_chat('PDT: '..tostring(pdt))
        windower.add_to_chat('uncap: '..tostring(uncap))
        windower.add_to_chat('TH: '..tostring(th))
    end
    
    setIdle()
end