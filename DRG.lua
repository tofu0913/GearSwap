
mylib = require('mylib')
res = require('resources')

function get_sets()
    set_language('japanese')
    
    sets.ws = {}
    sets.mode = {}
    sets.tp = {}

    pdt = false
    announce = false
    th = false
    rp = false
    blow = false
    mode = ''
	default_style = 24
    
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
    sets.mode['Gungnir'] = {
        main="グングニル",
        sub="ウトゥグリップ",
		style=24,
    }
    sets.mode['Shine'] = {
        main="シャイニングワン",
        sub="ウトゥグリップ",
		style=24,
    }
    sets.mode['Stuff'] = {
		main="マリグナスポール",
        sub="ウトゥグリップ",
		style=22,
    }
    
    sets.tp={
        ammo={ name="コイストボダー", augments={'Path: A',}},
		-- head="フラマツッケット+2",
		head="フロプトヘルム",
		-- body={ name="グレティキュイラス", augments={'Path: A',}},
        body="ＰＥプラカート+2",
        -- body="デーゴンブレスト",
		hands="ＰＥバンブレス+2",
		-- hands={ name="ニャメガントレ", augments={'Path: B',}},
		legs="グレティブリーチズ",
		-- legs="ニャメフランチャ",
		feet="フラマガンビエラ+2",
		neck="無の喉輪",
		-- waist="ウィンバフベルト+1",
        waist={ name="セールフィベルト+1", augments={'Path: A',}},
		left_ear="スローダピアス",
		right_ear="シェリダピアス",
		left_ring="シーリチリング+1",
		right_ring="ニックマドゥリング",
		back="無の外装",
    }
    sets.tp['Club']={
		ammo={ name="コイストボダー", augments={'Path: A',}},
		head="ＰＥメザイユ+3",
		body="フロプトブレスト",
		hands={ name="ニャメガントレ", augments={'Path: B',}},
		legs="ニャメフランチャ",
		feet={ name="ニャメソルレット", augments={'Path: B',}},
		neck="無の喉輪",
		waist={ name="ケンタークベルト+1", augments={'Path: A',}},
		left_ear="素破の耳",
		right_ear={ name="ペルタスピアス+2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+16','Mag. Acc.+16','Crit.hit rate+6','STR+7 VIT+7',}},
		left_ring="シーリチリング+1",
		right_ring="イフラマドリング",
		back="無の外装",
		-- back={ name="ブリガンチアマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}

    sets.ws={
        ammo="ノブキエリ",
        head="ＰＥメザイユ+3",
        body="ＰＥプラカート+2",--"ＰＥプラカート+3",
		-- body="グレティキュイラス",
        -- hands={ name="ニャメガントレ", augments={'Path: B',}},
        hands="ＰＴフィンガー+4",
        legs="ニャメフランチャ",
        feet={ name="ニャメソルレット", augments={'Path: B',}},
		neck={ name="竜騎士の首輪+2", augments={'Path: A',}},
        waist={ name="セールフィベルト+1", augments={'Path: A',}},
        left_ring="イフラマドリング",
        right_ring="王将の指輪",
        left_ear="スラッドピアス",
        right_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
		back={ name="ブリガンチアマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
    }
    sets.ws.fulltp={
		right_ear={ name="ペルタスピアス+2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+16','Mag. Acc.+16','Crit.hit rate+6','STR+7 VIT+7',}},
    }
    sets.ws["Savage Blade"]=set_combine(sets.ws, {
    })
    sets.ws["Drakesbane"]=set_combine(sets.ws, {
		hands="グレティガントレ",
		legs="グレティブリーチズ",
		feet="グレティブーツ",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear={ name="ペルタスピアス+2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+16','Mag. Acc.+16','Crit.hit rate+6','STR+7 VIT+7',}},
		back={ name="ブリガンチアマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Crit.hit rate+10',}},
    })
	sets.ws["Geirskogul"]=set_combine(sets.ws, {
		legs="グレティブリーチズ",
        -- waist="フォシャベルト",
		neck="フォシャゴルゲット",
        waist="ケンタークベルト+1",
        left_ear="シェリダピアス",
		right_ear={ name="ペルタスピアス+2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+16','Mag. Acc.+16','Crit.hit rate+6','STR+7 VIT+7',}},
		back={ name="ブリガンチアマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
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
		waist="チャークベルト",
    }
    
    sets.ja = {}
    sets.ja.Angon = {
        ammo="アンゴン",
        hands="ＰＴフィンガー+4",
    }
	sets.ja['Spirit Surge'] = {
		-- body="テロスレメイル",
	}
	sets.ja['Spirit Link'] = {
		head="ＶＳアーメット+2",
		hands="ＰＥバンブレス+2",
		left_ear="プラティクピアス",
	}
	sets.ja['Call Wyvern'] = {
		neck={ name="竜騎士の首輪+2", augments={'Path: A',}},
		right_ear={ name="ペルタスピアス+2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+16','Mag. Acc.+16','Crit.hit rate+6','STR+7 VIT+7',}},
	}
	sets.ja['Ancient Circle'] = {
		legs="ＶＳブレー+2",
	}
	sets.ja.Jump = {
		head="フロプトヘルム",
		body="ＶＳメイル+2",
		hands="ＶＳフィンガー+2",
		feet="オストログリーヴ",
		neck={ name="ヴィムトルク+1", augments={'Path: A',}},
		left_ear="デディションピアス",
		back={ name="ブリガンチアマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}},
	}
	sets.ja['High Jump'] = set_combine(sets.ja.Jump, {
		legs="ＶＳブレー+2",
	})
    
    sets.ra = {
        range="ラミアベーン",
    }

    -- Common equipments
    sets.fc = {
		ammo="サピエンスオーブ",
		-- head="サクパタヘルム",
		body="サクロブレスト",
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
    elseif spell.english == "Angon" then
        set_equip = sets.ja.Angon
    elseif spell.action_type == 'Ranged Attack' then
         set_equip = sets.ra
	elseif string.find(spell.name,'ジャンプ') then
		set_equip = sets.ja.Jump
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
        if windower.ffxi.get_player().vitals.tp >= 2700 then
            set_equip = set_combine(set_equip, sets.ws.fulltp)
        end
	elseif string.find(spell.name,'ジャンプ') then
		set_equip = sets.ja.Jump
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
		
    elseif command == 'rp' then
        rp = not rp
        windower.add_to_chat('RP: '..tostring(rp))
		if rp then
			send_command('gs disable main neck')
		else
			send_command('gs enable main neck')
		end
		setIdle()
		
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
        send_command('input //ws war_sw on')
		lockstyle()
    elseif command == 'cb' then
        mode = 'Club'
        send_command('input //ws war_sw on')
		lockstyle()
    elseif command == 'sh' then
        mode = 'Shine'
        send_command('input //ws war_po on')
		lockstyle()
    elseif command == 'gg' then
        mode = 'Gungnir'
        send_command('input //ws gg on')
		lockstyle()
    elseif command == 'st' then
        mode = 'Stuff'
        send_command('input //ws drg_st on')
		lockstyle()
        
    elseif command == 'help' then
        windower.add_to_chat('==============================')
        windower.add_to_chat('Mode: '..tostring(mode))
        windower.add_to_chat('Available modes: [sw, cb, sh, gg, st]')
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