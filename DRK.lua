
mylib = require('mylib')

function get_sets()
    set_language('japanese')
    
    sets.ws = {}
    sets.mode = {}
    sets.tp = {}

    pdt = false
    uncap = false
    th = false
    blow = false
    lowhate = false
    mode = ''
	default_style = 2
        
    sets.mode['Sword'] = {
        main="ネイグリング",
        sub="ブラーシールド+1",
		style=3,
    }
    sets.mode['Great Sword'] = {
        main={ name="カラドボルグ", augments={'Path: A',}},
        sub="ウトゥグリップ",
		style=2,
    }
    sets.mode['Scythe'] = {
        main={ name="アポカリプス", augments={'Path: A',}},
        sub="ウトゥグリップ",
		style=23,
    }
    sets.mode['Club'] = {
        main={ name="ロクソテクメイス+1", augments={'Path: A',}},
        sub="ブラーシールド+1",
		style=21,
    }
    sets.mode['Great Axe'] = {
        main="ライカーゴス",
        sub="ウトゥグリップ",
		style=25,
    }
    sets.tp={
        -- ammo="銀銭",
        -- ammo={ name="シーズボムレット+1", augments={'Path: A',}},
        ammo="コイストボダー",
        
        head="ＨＴバゴネット+3",
        -- body="デーゴンブレスト",
        body="フロプトブレスト",
        legs="ＩＧフランチャ+3",
        
        -- ### Ambuscade set ###
        -- head="フラマツッケット+2",
        -- body="フラマコラジン+2",
        -- hands="スレビアガントレ+2",
        -- legs="スレビアクウィス+2",
        feet="フラマガンビエラ+2",
        
        -- ### Sakpata set ###
        -- body="サクパタブレスト",
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
        -- right_ear="ヒーズンピアス+2",
        left_ring="シーリチリング+1",
        right_ring="ニックマドゥリング",
        -- right_ring="王将の指輪",
        -- right_ring="フラマリング",
		back="無の外装",
    }
    sets.tp['Great Sword']=set_combine(sets.tp, {
    })

    sets.ws={
        -- ammo={ name="シーズボムレット+1", augments={'Path: A',}},
        ammo="ノブキエリ",
        head="ＨＴバゴネット+3",
        body="ＩＧキュイラス+3",
        hands={ name="ニャメガントレ", augments={'Path: B',}},
        -- hands="サクパタガントレ",
        legs={ name="ＦＬフランチャー+3", augments={'Enhances "Muted Soul" effect',}},
        feet="ＨＴソルレット+3",
        neck={ name="暗黒の数珠+2", augments={'Path: A',}},
        -- left_ring="シーリチリング+1",
        left_ring="イフラマドリング",
        right_ring="王将の指輪",
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        -- right_ear="スラッドピアス",
        right_ear="ヒーズンピアス+2",
        back={ name="アンコウマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}},
    }
    sets.ws.fulltp={
        left_ear="スラッドピアス",
    }
    sets.ws.Catastrophe = set_combine(sets.ws, {
        -- head="ラトリサリット",
        -- body="ラトリブレスト",
        waist="フォシャベルト",
        hands="ラトリガドリング",
    })
    sets.ws.Resolution = set_combine(sets.ws, {
        waist="フォシャベルト",
	})
    sets.ws.Torcleaver = set_combine(sets.ws, {
        -- head="サクパタヘルム",
        -- head={ name="オディシアヘルム", augments={'Attack+15','Weapon skill damage +1%','VIT+13','Accuracy+9',}},
        -- body="サクパタブレスト",
        -- hands={ name="オディシアガントレ", augments={'Accuracy+13 Attack+13','Weapon skill damage +4%','Accuracy+15','Attack+14',}},
        -- legs="サクパタクウィス",
        -- feet="スレビアレギンス+2",
        -- waist="フォシャベルト",
        back={ name="アンコウマント", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
    })
    sets.ws['Savage Blade'] = set_combine(sets.ws, {
        -- hands={ name="オディシアガントレ", augments={'Accuracy+13 Attack+13','Weapon skill damage +4%','Accuracy+15','Attack+14',}},
    })
    sets.ws.Judgment = set_combine(sets.ws, {
        -- hands={ name="オディシアガントレ", augments={'Accuracy+13 Attack+13','Weapon skill damage +4%','Accuracy+15','Attack+14',}},
        back={ name="アンコウマント", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%'}},
    })
    
	sets.buff = {}
    sets.buff.Phalanx = {
        legs="サクパタクウィス",
	}
	
    sets.blow = {
        head="サクパタヘルム",
        body="デーゴンブレスト",
        hands="サクパタガントレ",
        legs="サクパタクウィス",
		feet="サクパタレギンス",
		neck="バーシチョーカー+1",
    }
    sets.blow['Last Resort'] = {
		feet="ＦＬソルレット+3",
	}
	sets.lowhate = {
		right_ear="シェレピアス",
	}
    sets.pdt = {
        -- head="ニャメヘルム",
        head="サクパタヘルム",
        -- body="ニャメメイル",
        body="フロプトブレスト",
        -- hands="ニャメガントレ",
        hands="サクパタガントレ",
        -- legs="ニャメフランチャ",
        legs="サクパタクウィス",
		feet="サクパタレギンス",
        -- feet={ name="ニャメソルレット", augments={'Path: B',}},
        back={ name="アンコウマント", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }
    sets.uncap = {
        body="サクパタブレスト",
        hands="サクパタガントレ",
        legs="サクパタクウィス",
    }
    sets.th = {
        ammo="完璧な幸運の卵",
		waist="チャークベルト",
        -- legs={ name="オディシアクウィス", augments={'"Dbl.Atk."+3','Pet: Haste+3','"Treasure Hunter"+1','Accuracy+9 Attack+9',}},
    }

    sets.ja = {}
    sets.ja['Last Resort'] = {
		feet="ＦＬソルレット+3",
        back={ name="アンコウマント", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
    sets.ja['Diabolic Eye'] = {
        hands="ＦＬガントレット+1",
    }
    sets.ja['Blood Weapon'] = {
        hands="ＦＬキュイラス+1",
    }
    sets.ja['Weapon Bash'] = {
        hands="ＩＧガントレ+2",--+3
    }
	sets.ja.Jump = {
		head="フロプトヘルム",
		legs={ name="オディシアクウィス", augments={'Attack+15','"Fast Cast"+5','Accuracy+11',}},
		feet="オストログリーヴ",
		neck={ name="ヴィムトルク+1", augments={'Path: A',}},
		left_ear="デディションピアス",
        right_ear="セサンスピアス",
		back="無の外装",
	}
    
    sets.ma = {}
    sets.ma.drk_magic = {
        head="ＦＬバーゴネット+3",
        -- legs="ＨＴフランチャ+1",
        
        body="ニャメメイル",
        hands="ニャメガントレ",
        legs="ニャメフランチャ",
        feet="ＨＴソルレット+3",
        neck="エーラペンダント",
		waist="無の腰当",
		right_ear="マリグナスピアス",
        right_ear="ヒーズンピアス+2",
        right_ring="エバネセンスリング",
        left_ring="アルコンリング",
		back="無の外装",
    }
    sets.ma.drk_magic['Dark Seal'] = {
        head="ＦＬバーゴネット+3",
    }
    sets.ma.endark = set_combine(sets.ma.drk_magic, {
		neck="インカンタートルク",
        hands="ＦＬガントレット+1",
        legs="ＨＴフランチャ+1",
    })
    sets.ma.drain = set_combine(sets.ma.drk_magic, {
        right_ear="ヒルディネアピアス",
        waist="オステリベルト+1",
        hands="ＦＬガントレット+1",
        back={ name="デオルクネスマント", augments={'Attack+7','"Drain" and "Aspir" potency +25',}},
    })
	sets.ma.Impact = set_combine(sets.ma.drk_magic, {
		head="",
		body="クレパスクラプリス",
		neck="無の喉輪",
		waist="無の腰当",
		right_ear="ヒーズンピアス+2",
		right_ring={ name="メタモルリング+1", augments={'Path: A',}},
	})
    
    sets.ra = {
        range="ラミアベーン",
    }

    sets.fc = {
		ammo="サピエンスオーブ",
		head="サクパタヘルム",
		body="サクロブレスト",
		legs={ name="オディシアクウィス", augments={'Attack+15','"Fast Cast"+5','Accuracy+11',}},
		feet={ name="オディシアグリーヴ", augments={'Accuracy+13 Attack+13','"Fast Cast"+5','Attack+8',}},
        neck="ボルトサージトルク",
        left_ear="マリグナスピアス",
        right_ear="ロケイシャスピアス",
        left_ring="キシャールリング",
        right_ring="プロリクスリング",
        back={ name="アンコウマント", augments={'"Fast Cast"+10',}},
    }
    sets.fc.drk = set_combine(sets.fc, {
        head="ＦＬバーゴネット+3",
	})
	sets.fc.Impact = set_combine(sets.fc, {
		head="",
		body="トワイライトプリス",
	})
	
    -- Common equipments
    sets.walk = {
        right_ring="シュネデックリング",
    }
    sets.walk.adoulin = set_combine(sets.walk, {
        body="カウンセラーガーブ",
    })
    
    sets.HolyWater = {
        neck="ニカンダネックレス",
        -- left_ring="Purity Ring",
    }

    send_command('input /macro book 3; wait 2;input /lockstyleset '..default_style)
end

function buff_change(buff,gain,buff_details)
    if buff == 'ブラッドウェポン' and not gain then
        windower.ffxi.cancel_buff(63)--暗黒
    
    elseif buff == 'ラストリゾート' then
		if blow and gain then
			equip(set_combine(sets.blow, sets.blow['Last Resort']))
		elseif blow and not gain then
			equip(sets.blow)
		end
	
    elseif buff == '死の宣告' then
        if gain then
            send_command(windower.to_shift_jis('input /p 死の宣告！！！Doom!!!!!!!!!!!!!<call>'))
        else
            windower.add_to_chat("死の宣告から回復した、Doom gone....")
        end
    end
end

function precast(spell)
    local set_equip = nil

    if spell.type == 'Trust' or string.find(spell.type, 'Magic') then
        set_equip = sets.fc
        if spell.skill=='暗黒魔法' then
			set_equip = sets.fc.drk
		end
		if spell.english == 'Impact' then
			set_equip = sets.fc.Impact
		end
    elseif spell.english == 'Spectral Jig' and windower.ffxi.get_ability_recasts()[218] == 0 then
        windower.ffxi.cancel_buff(71)
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

    if spell.type == 'WeaponSkill' and not buffactive['アムネジア'] then
        if sets.ws[spell.english] then
            set_equip = sets.ws[spell.english]
        else
            set_equip = sets.ws
        end
        if lowhate then
            set_equip = set_combine(set_equip, sets.lowhate)
        end
        if uncap then
            set_equip = set_combine(set_equip, sets.uncap)
        end
        if windower.ffxi.get_player().vitals.tp >= 2700 then
            set_equip = set_combine(set_equip, sets.ws.fulltp)
        end
    elseif string.find(spell.name, 'ドレイン') or string.find(spell.name, 'アスピル') then
        set_equip = sets.ma.drain
    elseif string.find(spell.name, 'アブゾ') then
        set_equip = sets.ma.drk_magic
    elseif string.find(spell.name, 'エンダーク') then
        set_equip = sets.ma.endark
    elseif sets.ja[spell.english] then
        set_equip = sets.ja[spell.english]
    elseif sets.ma[spell.english] then
        set_equip = sets.ma[spell.english]
    elseif sets.buff[spell.english] then
        set_equip = sets.buff[spell.english]
    end
	if buffactive['ダークシール'] and spell.skill=='暗黒魔法' then
		set_equip = set_combine(set_equip, sets.ma.drk_magic['Dark Seal'])
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
	elseif blow then
        set_equip = set_combine(sets.tp, sets.blow)
		if buffactive['ラストリゾート'] then
			set_equip = set_combine(set_equip, sets.blow['Last Resort'])
		end
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

function lockstyle()
	if mode ~='' and sets.mode[mode] and sets.mode[mode].style then
		send_command('input /lockstyleset '..sets.mode[mode].style)
	else
		send_command('input /lockstyleset '..default_style)
	end
end

function self_command(command)
    if command == 'pdt' then
        pdt = not pdt
        windower.add_to_chat('PDT- is: '..tostring(pdt))
		
    elseif command == 'blow' then
        blow = not blow
        windower.add_to_chat('Blow- is: '..tostring(blow))
		
    elseif command == 'lowhate' then
        lowhate = not lowhate
        windower.add_to_chat('Hate-: '..tostring(lowhate))
		
    elseif command == 'style' or command == 's' then
		lockstyle()
		
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
    elseif command == 'pha1' then
        windower.add_to_chat('Phalanx ON')
        local spell = {}
        spell.name = 'ファランクス'
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
		lockstyle()
        send_command('input //ws war_sw')
    elseif command == 'cb' then
        mode = 'Club'
		lockstyle()
        send_command('input //ws war_cb')
    elseif command == 'gsw' then
        mode = 'Great Sword'
		lockstyle()
        send_command('input //ws drk_gsw')
    elseif command == 'gax' then
        mode = 'Great Axe'
		lockstyle()
        send_command('input //ws drk_gax')
    elseif command == 'sc' then
        mode = 'Scythe'
		lockstyle()
    elseif command == 'help' then
        windower.add_to_chat('==============================')
        windower.add_to_chat('Mode: '..tostring(mode))
        windower.add_to_chat('Available modes: [sw, gsw, cb, sc]')
        windower.add_to_chat('PDT: '..tostring(pdt))
        windower.add_to_chat('uncap: '..tostring(uncap))
        windower.add_to_chat('TH: '..tostring(th))
    end
    
    if command ~= 'pha1' then
        setIdle()
    end
end