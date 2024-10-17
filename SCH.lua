
mylib = require('mylib')
require('mylibs/caster_lite')

function get_sets()
    set_language('japanese')
    
    pdt = false
    
    sets.idle = {
        head="ＡＢボネット+1",
        body="ＡＢガウン+1",
        hands="ＡＢブレーサー+1",
        -- legs="ニャメフランチャ",
        feet="ＡＢローファー+1",
        right_ring="シュネデックリング",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}}
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
        waist="エンブラサッシュ",
    }
    
    sets.mb = {
        head="ニャメヘルム",
        body="ニャメメイル",
        hands="ニャメガントレ",
        legs="ニャメフランチャ",
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        left_ring="夢神の指輪",
        
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        neck={ name="アギュトストール+2", augments={'Path: A',}},
        waist="オルペウスサッシュ",
        left_ear={ name="アバテルピアス", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+8',}},
        right_ear="マリグナスピアス",
        right_ring="メタモルリング+1",--{ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
    }

    sets.fc = {
        ammo="インカントストーン",
        head={ name="マーリンフード", augments={'Mag. Acc.+11 "Mag.Atk.Bns."+11','"Fast Cast"+7',}},
        hands={ name="ＧＥゲージ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -3%','Song spellcasting time -5%',}},
        legs="ギーヴトラウザ",
        feet={ name="マーリンクラッコー", augments={'"Fast Cast"+4','INT+4','Mag. Acc.+8','"Mag.Atk.Bns."+12',}},
        waist="エンブラサッシュ",
        left_ring="キシャールリング",
        right_ring="プロリクスリング",
        right_ear="マリグナスピアス",
        left_ear="ロケイシャスピアス",--"エンチャンピアス+1",
        back={ name="ルッフケープ", augments={'"Fast Cast"+10',}},
    }

    sets.ws = {
        head="ニャメヘルム",
        body="ニャメメイル",
        hands="ニャメガントレ",
        legs="ニャメフランチャ",
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="テロスピアス",
        left_ring="シーリチリング+1",
        right_ring="イフラマドリング",
    }

    -- Common equipments
    sets.walk = {
        right_ring="シュネデックリング",
    }
    sets.walk.adoulin = set_combine(sets.walk, {
        body="カウンセラーガーブ",
    })
    
    -- {
        -- main={name="ブンジロッド", augments={'Path: A',}},    --T3
        -- sub="アムラピシールド",    --Omen Kei
            -- ammo={ name="ガストリタスラム+1", augments={'Path: A',}},    --Unity Specter Worm
            -- head={ name="ＰＤボード+3", augments={'Enh. "Altruism" and "Focalization"',}},    --AF2
            -- body="ＡＢガウン+3",    --AF3
            -- hands="ＡＢブレーサー+3",    --AF3
        -- legs={ name="アグゥスロップス", augments={'Path: A',}},    --T3
            -- feet="ＡＢローファー+3",    --AF3
            -- neck={ name="アギュトストール+2", augments={'Path: A',}},    --AC
            -- waist={ name="アキュイテベルト+1", augments={'Path: A',}},      --缺鱗
        -- left_ear="王将の耳飾り",      --Omen Ou
            -- right_ear="マリグナスピアス",
        -- left_ring="フレキリング",     --Odin
            -- right_ring={ name="メタモルリング+1", augments={'Path: A',}},      --缺鱗
        -- back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}} --Ambuscade
    -- }

    -- FC = {
        -- ammo="オンブルタスラム+1",  --Walk
            -- head={ name="マーリンフード", augments={'"Mag.Atk.Bns."+3','"Fast Cast"+6','Mag. Acc.+11',}},       --DPoint
        -- body="ピンガチュニック",       --Su3
        -- hands={ name="マーリンダスタナ", augments={'Mag. Acc.+9','"Fast Cast"+7','"Mag.Atk.Bns."+15',}},       --DPoint
        -- legs="ピンガズボン",          --Su3
        -- feet={ name="マーリンクラッコー", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','"Fast Cast"+5','Mag. Acc.+10',}},       --DPoint
        -- neck="サンクトネックレス",       --DPoint 
            -- waist="エンブラサッシュ",       --DPoint
        -- left_ear="エンチャンピアス+1",  --Walk
            -- right_ear="マリグナスピアス",
            -- left_ring="キシャールリング",       --Omen GG
            -- right_ring="プロリクスリング",      --VW
            -- back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10',}}
    -- }

    -- Magic = {    
        -- sub="アムラピシールド",    --Omen Kei
            -- ammo="ガストリタスラム",
            -- head="ＡＢボネット+2",    --AF3
            -- body="ＡＢガウン+3",    --AF3    --AF3
            -- hands="ＡＢブレーサー+3",    --AF3
        -- legs="アグゥスロップス",    --T3
        -- feet="アグゥピガッシュ",    --T3
            -- neck={ name="アギュトストール+2", augments={'Path: A',}},
            -- waist="オルペウスサッシュ",
        -- left_ear="王将の耳飾り",
            -- right_ear="マリグナスピアス",
            -- left_ring={ name="メタモルリング+1", augments={'Path: A',}},
        -- right_ring="女王の指輪+1",
            -- back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Fast Cast"+10',}}
    -- }




    send_command('input /macro book 12; wait 2;input /lockstyleset 7')
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

function setIdle()
    local set_equip = sets.idle

    if windower.ffxi.get_player().status == 1 then
        set_equip = set_combine(sets.idle, sets.engage)
        
        if  mylib.is_in_adoulin(world.area) then
            set_equip = set_combine(set_equip, sets.walk.adoulin)
        end
    end

    if set_equip then
        equip(set_equip)
    end
end

function self_command(command)
    if command == 'pdt' then
        pdt = not pdt
        windower.add_to_chat('PDT- is: '..tostring(pdt))
    elseif command == 's' then
        windower.add_to_chat('==============================')
        windower.add_to_chat('PDT- is: '..tostring(pdt))
        
    elseif command == 'suni' then
        cast_init()
        if not buffactive['女神降臨の章'] then
            add_spell('ja', '女神降臨の章')
        end
        add_spell('ma', 'スニーク')
        cast_all()
    elseif command == 'regen' then
        cast_init()
        if not buffactive['女神降臨の章'] then
            add_spell('ja', '女神降臨の章')
        end
        add_spell('ma', 'リジェネV')
        cast_all()
    end
    
    setIdle()
end