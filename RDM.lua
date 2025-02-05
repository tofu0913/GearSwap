
mylib = require('mylib')
require('mylibs/caster_lite')

function get_sets()
    set_language('japanese')
    
    pdt = false
    zergling = false
    
    sets.idle = {
        -- head="ＡＢボネット+1",
        body="ＶＩタバード+1",--"ＶＩタバード+3",
        hands="ＶＩグローブ+3",
        legs="ＡＴタイツ+2",--"ＡＴタイツ+3",
        feet="ＬＴウゾー+1",--"ＬＴウゾー+3",
        -- neck={ name="アギュトストール+2", augments={'Path: A',}},
        right_ring="シュネデックリング",
        -- back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}}
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},
    }
    sets.pdt = {
        head="ニャメヘルム",
        body="ニャメメイル",
        hands="ニャメガントレ",
        legs="ニャメフランチャ",
        feet="ニャメソルレット",
    }
    
    sets.ja = {}
    
    sets.ma = {}
    sets.ma.EnhancingDuration = {}
    sets.ma.Stoneskin = set_combine(sets.ma.EnhancingDuration,{
        waist="ジーゲルサッシュ",
        neck="ノデンズゴルゲット",
    })
    sets.ma.Cure = {
        neck="ノデンズゴルゲット",
        feet="ヴァニヤクロッグ",
        left_ear="メンデカントピアス",
        right_ear="カラミタスピアス",
        left_ring="ナジの包帯",
    }

    sets.buff = {
        body="ＶＩタバード+1",--"ＶＩタバード+3",
        hands="ＶＩグローブ+3",
        legs="ＡＴタイツ+2",--"ＡＴタイツ+3",
        feet="ＬＴウゾー+1",--"ＬＴウゾー+3",
        neck="インカンタートルク",
        waist="オリンポスサッシュ",
        left_ear="ミミルピアス",
		right_ear="アンドアーピアス",
        back={ name="ゴストファイケープ", augments={'Enfb.mag. skill +8','Enha.mag. skill +9','Enh. Mag. eff. dur. +17',}},
    }
    sets.buff.weapon = {
        main="プクラトムージュ+1",
        sub="プクラトムージュ",
    }
    
    sets.debuff = {
		ammo="王将の玉",
        head="ニャメヘルム",
        body="ニャメメイル",
        hands="ニャメガントレ",
        legs="カイロンホーズ",
        right_ear={ name="レサジーピアス+1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','"Dbl.Atk."+4',}},
        right_ring="メタモルリング+1",--{ name="メタモルリング+1", augments={'Path: A',}},
        
        feet="ＶＩブーツ+1",--"ＶＩブーツ+3",
        right_ear="スノトラピアス",
        left_ear="マリグナスピアス",
        left_ring="キシャールリング",
        -- right_ring="スティキニリング+1",
    }
    
    sets.mb = {
        head="ニャメヘルム",
        body="ニャメメイル",
        hands="ニャメガントレ",
        legs="ニャメフランチャ",
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        neck="水影の首飾り",
        waist="オルペウスサッシュ",
        -- left_ear="王将の耳飾り",
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        right_ring="夢神の指輪",
        -- back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
    }

    sets.fc = {
        head={ name="マーリンフード", augments={'Mag. Acc.+11 "Mag.Atk.Bns."+11','"Fast Cast"+7',}},
        hands={ name="ＧＥゲージ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -3%','Song spellcasting time -5%',}},
        legs="ギーヴトラウザ",
		feet={ name="マーリンクラッコー", augments={'"Mag.Atk.Bns."+2','"Fast Cast"+6','INT+6',}},
        waist="エンブラサッシュ",
        neck="ボルトサージトルク",
        left_ring="キシャールリング",
        right_ring="プロリクスリング",
        right_ear="マリグナスピアス",
        left_ear="ロケイシャスピアス",--"エンチャンピアス+1",
        -- back={ name="ルッフケープ", augments={'"Fast Cast"+10',}},
    }

    sets.ws = {
        head="ニャメヘルム",
        body="ニャメメイル",
        hands="ニャメガントレ",
        legs="ニャメフランチャ",
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="シェリダピアス",
        left_ring="イラブラットリング",
        right_ring="イフラマドリング",
    }
    
    sets.engage = {
        -- sub="ンプガンドリング",
        ammo="銀銭",
        head="マリグナスシャポー",
        -- body="マリグナスタバード",
        -- hands="マリグナスグローブ",
        -- legs="マリグナスタイツ",
        body="アヤモコラッツァ+2",
        hands="アヤモマノポラ+2",
        legs="ゾアサブリガ+1",
        feet="マリグナスブーツ",
        neck="クロタリウストルク",
        -- waist={ name="セールフィベルト+1", augments={'Path: A',}},
        waist={ name="ケンタークベルト+1", augments={'Path: A',}},
        left_ring="シーリチリング+1",
        right_ring="イフラマドリング",
        left_ear="エアバニピアス",
        right_ear={ name="レサジーピアス+1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','"Dbl.Atk."+4',}},
        back={ name="スセロスケープ", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},
    }
    sets.engage.enspell = set_combine(sets.engage, {
        waist="オルペウスサッシュ",
        left_ear="素破の耳",
    })
    sets.engage.zergling = {
        main="クトゥルブナイフ",
        sub="エソテリックアサメ",
        -- main="クラーケンクラブ",
        -- sub="トーレット",
    }

    -- Common equipments
    sets.walk = {
        right_ring="シュネデックリング",
    }
    sets.walk.adoulin = set_combine(sets.walk, {
        body="カウンセラーガーブ",
    })

    send_command('input /macro book 13; wait 2;input /lockstyleset 9')
end

function precast(spell)
    local set_equip = nil

    if spell.type == 'Trust' or string.find(spell.type, 'Magic') then
        set_equip = sets.fc
    end

    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil

    if sets.ja[spell.english] then
        set_equip = sets.ja[spell.english]
    
    elseif spell.action_type == 'Magic' then
        if string.find(spell.english,'Cur') and spell.name ~= 'Cursna' then
            set_equip = sets.ma.Cure
            
        elseif spell.skill=='強化魔法' then
            set_equip = sets.buff
            if windower.ffxi.get_player().status == 0 or zergling then
                set_equip = set_combine(set_equip, sets.buff.weapon)
            end
            
        elseif spell.skill=='弱体魔法' then
            set_equip = sets.debuff
            
        elseif sets.ma[spell.english] then
            set_equip = sets.ma[spell.english]
            
        elseif spell.skill=='精霊魔法' then
            set_equip = sets.mb
        end
            
    elseif spell.type == 'WeaponSkill' then
        set_equip = sets.ws
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

function isEnspelled()
    if buffactive['エンファイアII'] or buffactive['エンブリザドII'] or buffactive['エンエアロII']
        or buffactive['エンストーンII'] or buffactive['エンサンダーII'] or buffactive['エンウォータII']
        or buffactive['エンファイア'] or buffactive['エンブリザド'] or buffactive['エンエアロ']
        or buffactive['エンストーン'] or buffactive['エンサンダー'] or buffactive['エンウォータ'] then
        return true
    end
end

function setIdle()
    local set_equip = sets.idle

    if windower.ffxi.get_player().status == 1 then
        
        if isEnspelled() then
            set_equip = set_combine(sets.idle, sets.engage.enspell)
        else
            set_equip = set_combine(sets.idle, sets.engage)
        end
        
        if zergling then
            set_equip = set_combine(set_equip, sets.engage.zergling)
        end
        
        if  mylib.is_in_adoulin(world.area) then
            set_equip = set_combine(set_equip, sets.walk.adoulin)
        end
    end

    if set_equip then
        equip(set_equip)
    end
end

function self_command(command)
    command = command:lower()
    if command == 'pdt' then
        pdt = not pdt
        windower.add_to_chat('PDT- is: '..tostring(pdt))
    elseif command == 'zerg' then
        zergling = not zergling
        windower.add_to_chat('Zergling is: '..tostring(zergling))
        
    elseif command == 's' then
        windower.add_to_chat('==============================')
        windower.add_to_chat('PDT- is: '..tostring(pdt))
        windower.add_to_chat('Zergling is: '..tostring(zergling))
    end
    
    setIdle()
end