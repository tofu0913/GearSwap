
mylib = require('mylib')
require('mylibs/caster_lite')

function get_sets()
    set_language('japanese')
    
    dummy = false
    mode = nil
    weapon = nil--nil, engage, flee
    
    sets.instrument = {}
    sets.instrument.horn = {
        range="ギャッラルホルン",
        ammo=empty,
    }
    sets.instrument.HonorMarch = {
        range="マルシュアス",
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
	sets.weapon.engage = {
        main="ネイグリング",
        sub={ name="フセット+2", augments={'TP Bonus +1000',}},
	}
	sets.weapon.flee = {
        main="カルンウェナン",
		sub={ name="ニビルナイフ", augments={'Accuracy+20','Attack+15','Evasion+20',}},
	}
    
    sets.fc = {
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
        feet="ＢＲスリッパー+3",
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
    }
    sets.macc = {
        main="ンプガンドリング",
    }

    sets.idle = {
		range={ name="リノス", augments={'Evasion+15','Phys. dmg. taken -4%','AGI+8',}},
        head="ニャメヘルム",
        body="ニャメメイル",
        hands="ニャメガントレ",
        legs="ニャメフランチャ",
        feet="ＦＬコテュルヌ+2",--"ＦＬコテュルヌ+3",
        neck="バーシチョーカー+1",
        waist="プラチナモグベルト",
        left_ear="インフューズピアス",
        right_ear="エアバニピアス",
        left_ring="シーリチリング+1",
        right_ring="シュネデックリング",
    }
    sets.engage = {
        range={ name="リノス", augments={'Accuracy+20','"Dbl.Atk."+2','Quadruple Attack +3',}},
        head="ニャメヘルム",
		body="アヤモコラッツァ+2",
        hands="ニャメガントレ",
        legs="ニャメフランチャ",
		feet={ name="ニャメソルレット", augments={'Path: B',}},
        neck="クロタリウストルク",
        waist={ name="セールフィベルト+1", augments={'Path: A',}},
        left_ear="テロスピアス",
        right_ear="セサンスピアス",
        -- right_ear="素破の耳",
        left_ring="シーリチリング+1",
        right_ring="イフラマドリング",
        back={ name="インタラアスケープ", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
    }

    sets.ja = {}
    sets.ja['Nightingale'] = {
        -- feet={ name="ＢＩスリッパー+3", augments={'Enhances "Nightingale" effect',}},
        feet={ name="ビフスリッパー", augments={'Enhances "Nightingale" effect',}},
    }
    sets.ja['Troubadour'] = {
        body={ name="ＢＩジュストコル+3", augments={'Enhances "Troubadour" effect',}},
    }
    sets.ja['Soul Voice'] = {
        legs={ name="ビフキャニオンズ", augments={'Enhances "Soul Voice" effect',}},
    }

    sets.ws = {
        range={ name="リノス", augments={'Attack+20','Weapon skill damage +3%','STR+6 DEX+6',}},
        body={ name="ＢＩジュストコル+3", augments={'Enhances "Troubadour" effect',}},
        hands={ name="ニャメガントレ", augments={'Path: B',}},
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        right_ear="胡蝶のイヤリング",
        left_ring="イラブラットリング",
        back={ name="インタラアスケープ", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
    }

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
    }
    
    sets.walk = {
        right_ring="シュネデックリング",
    }
    sets.walk.adoulin = set_combine(sets.walk, {
        body="カウンセラーガーブ",
    })

    send_command('input /macro book 1;')
    send_command('wait 2;input /lockstyleset 4')
end

function precast(spell)
    local set_equip = nil
    
    if spell.type == 'BardSong' then
        if dummy then
            set_equip = sets.instrument.dummy
            dummy = false
        elseif spell.english == 'Honor March' then
            set_equip = sets.instrument.HonorMarch
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
        set_equip = sets.ws
    
    elseif spell.action_type == 'Magic' then
        if string.find(spell.english,'Cur') and spell.name ~= 'Cursna' then
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
		if weapon == 'engage' then
			set_equip = set_combine(set_equip, sets.weapon.engage)
		end
        
        if  mylib.is_in_adoulin(world.area) then
            set_equip = set_combine(set_equip, sets.walk.adoulin)
        end
	else
		if weapon == 'flee' then
			set_equip = set_combine(set_equip, sets.weapon.flee)
		end
    end

    if set_equip then
        equip(set_equip)
    end
end

function self_command(command)
    command = command:lower()
    if command == 'free' then
        mode = nil
        windower.add_to_chat('Mode is: '..mode)
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
        
    elseif command == 'engage' then
        weapon = 'engage'
        windower.add_to_chat('Weapon mode: '..tostring(weapon))
    elseif command == 'flee' then
        weapon = 'flee'
        windower.add_to_chat('Weapon mode: '..tostring(weapon))
    elseif command == 'weapon' then
        weapon = nil
        windower.add_to_chat('Weapon mode: Non')

    elseif command == 'dummy' then
        dummy = true
        -- windower.add_to_chat('Dummy mode is ON')
        
    elseif command == 'hp' then
        cast_init()
        add_spell('so', '戦士達のピーアンVI')
        add_spell('so', '戦士達のピーアンV')
        add_spell('so', '戦士達のピーアンIV')
        add_spell('so', '戦士達のピーアンIII')
        if buffactive['クラリオンコール'] then
            add_spell('so', '戦士達のピーアンII')
        end
        cast_all()
    elseif command == 'aamm' then
        cast_init()
        add_spell('so', '栄典の戴冠マーチ')
        add_spell('so', '猛者のメヌエットV')
        add_spell('so', '猛者のメヌエットIV')
        add_spell('so', '栄光の凱旋マーチ')
        -- if buffactive['クラリオンコール'] then
            -- add_spell('so', '猛者のメヌエットIII')
        -- end
        cast_all()
    elseif command == 'mmmm' then
        cast_init()
        add_spell('so', '栄典の戴冠マーチ')
        add_spell('so', '魔道士のバラードIII')
        add_spell('so', '重装騎兵のミンネIV')
        add_spell('so', '重装騎兵のミンネIII')
        -- if buffactive['クラリオンコール'] then
            -- add_spell('so', '猛者のメヌエットIII')
        -- end
        cast_all()
    elseif command == '4' then
        cast_init()
        add_spell('so', '栄典の戴冠マーチ')
        add_spell('so', '栄光の凱旋マーチ')
        add_spell('so', '戦士達のピーアンVI')
        add_spell('so', '戦士達のピーアンV')
        add_spell('so', '猛者のメヌエットV')
        add_spell('so', '猛者のメヌエットIV')
        cast_all()
	
    elseif command == 'sp' then
        cast_init()
        add_spell('ja', 'ナイチンゲール')
        add_spell('ja', 'トルバドゥール')
        add_spell('ja', 'ソウルボイス')
        add_spell('ja', 'クラリオンコール')
        add_spell('so', '栄典の戴冠マーチ')
        add_spell('so', '警戒のスケルツォ')
        add_spell('so', '戦士達のピーアンIII')
        add_spell('so', '戦士達のピーアンII')
        add_spell('so', '戦士達のピーアンI')
        cast_all()
    elseif command == 'a' then
        cast_init()
        add_spell('so', '猛者のメヌエットV')
        add_spell('so', '猛者のメヌエットIV')
        add_spell('so', '猛者のメヌエットIII')
        -- add_spell('so', '耐波カロル第二楽章')
        add_spell('so', '警戒のスケルツォ')
        cast_all()
    elseif command == 'b' then
        cast_init()
        add_spell('so', '冒険者のダージュ')
        add_spell('so', '魔道士のバラードII')
        add_spell('so', '魔道士のバラードIII')
        add_spell('so', '警戒のスケルツォ')
        cast_all()
		
    elseif string.find(command, "sc ") then
	
		_, sc=command:match("^(%S+)%s+(.+)")
		-- if sc ~= '0' then
			-- windower.add_to_chat(sc)
		-- end
    end
end