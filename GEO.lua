
mylib = require('mylib')
require('mylibs/caster_lite')

function get_sets()
    set_language('japanese')
    
	skillup = false
	default_style = 10
	
	sets.idle = {
		main="イドリス",
		sub="玄武盾",
		range={ name="デュンナ", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="ＡＺフード+2",--"ＡＺフード+3",
        body="ＡＺコート+3",
		hands="ＧＯミテーヌ+3",
		legs="ＢＡパンツ+3",
		feet="ＡＺゲートル+3",
		neck="バグアチャーム+2",
		waist="プラチナモグベルト",
		left_ear="インフューズピアス",
		right_ear={ name="アジムスピアス+1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
		left_ring="守りの指輪",
		right_ring="シュネデックリング",
		back={ name="ナントセルタケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Acc.+10','Pet: "Regen"+10','Pet: "Regen"+5',}},
	}
	sets.idle.geo = {
		body={ name="テルキネシャジュブ", augments={'Mag. Evasion+25','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		hands={ name="テルキネグローブ", augments={'Mag. Evasion+25','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+25','Pet: "Regen"+3','Pet: Damage taken -4%',}},
		feet="ＢＡサンダル+3",
		left_ear="ハンドラーピアス+1",
	}
	
    sets.fc = {
		main={ name="ガーダ", augments={'"Fast Cast"+6','Mag. Acc.+13','DMG:+5',}},
        sub="チャンターシールド",
        head={ name="マーリンフード", augments={'Mag. Acc.+11 "Mag.Atk.Bns."+11','"Fast Cast"+7',}},
		body="アグゥローブ",
        hands={ name="アグゥゲージ", augments={'Path: A',}},
        legs="ＧＯパンツ+1",
		feet={ name="マーリンクラッコー", augments={'"Mag.Atk.Bns."+2','"Fast Cast"+6','INT+6',}},
        waist="エンブラサッシュ",
        neck="ボルトサージトルク",
        left_ring="キシャールリング",
        right_ring="プロリクスリング",
        right_ear="マリグナスピアス",
        left_ear="ロケイシャスピアス",--"エンチャンピアス+1",
		back="龍脈の外套",
    }
	sets.fc.Impact = set_combine(sets.fc, {
		head="",
		body="クレパスクラプリス",
	})
	
	sets.ja = {}
	sets.ja.Bolster = {
		body="バグアチュニック",--"ＢＡチュニック+1",
	}
	sets.ja.Entrust = {
	}
	sets.ja['Mending Halation'] = {
		legs="ＢＡパンツ+3",
	}
	sets.ja['Radial Arcana'] = {
		feet="ＢＡサンダル+3",
	}
	sets.ja['Life Cycle'] = {
		feet="ＧＯチュニック+1",
	}

    sets.mb = {
		main={ name="ブンジロッド", augments={'Path: A',}},
		sub="カルミナス",
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
		head="エアハット+1",
        body="ＡＺコート+3",
        hands={ name="アグゥゲージ", augments={'Path: A',}},
        legs="ＡＺタイツ+3",
        feet="ＡＺゲートル+3",
        neck="水影の首飾り",
        waist="八輪の帯",
        -- waist="オルペウスサッシュ",
        -- waist="アキュイテベルト+1",
		left_ear="王将の耳飾り",
        right_ear="マリグナスピアス",
		-- right_ear={ name="アジムスピアス+1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
        left_ring="フレキリング",
        right_ring="メタモルリング+1",--{ name="メタモルリング+1", augments={'Path: A',}},
		back={ name="ナントセルタケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10',}},
    }
	
	sets.ma = {}
	sets.ma.indi = set_combine(sets.idle, {
		main="イドリス",
		sub="玄武盾",
		range={ name="デュンナ", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		legs="ＢＡパンツ+3",
		feet="ＡＺゲートル+3",
		neck="インカンタートルク",
		right_ear={ name="アジムスピアス+1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
		back="龍脈の外套",
	})
	sets.ma.indi_duo = {
		sub={ name="ソールスティス", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}},
	}
	
	sets.ma.geo = set_combine(sets.idle, {
		main="イドリス",
		sub="玄武盾",
		range={ name="デュンナ", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		neck="バグアチャーム+2",
		right_ear={ name="アジムスピアス+1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
	})
	sets.ma.Impact = set_combine(sets.mb, {
		head="",
		body="クレパスクラプリス",
	})
	sets.ma.Cure = {
		main={ name="ブンジロッド", augments={'Path: A',}},
		-- sub="玄武盾",
		-- range={ name="デュンナ", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head={ name="テルキネキャップ", augments={'Mag. Evasion+25','"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		body={ name="テルキネシャジュブ", augments={'"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		hands={ name="テルキネグローブ", augments={'"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		legs="ギーヴトラウザ",
		feet={ name="ヴァニヤクロッグ", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
		neck="インカンタートルク",
		waist="オステリベルト+1",
		left_ear="メンデカントピアス",
		right_ear="カラミタスピアス",
		left_ring="レベッチェリング",
		right_ring="ナジの包帯",
		-- back={ name="ナントセルタケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Acc.+10','Pet: "Regen"+10','Pet: "Regen"+5',}},
	}
	
	sets.macc = {
		main="イドリス",
		sub="カルミナス",
		head="ＡＺフード+2",
        body="ＡＺコート+3",
        hands="ＧＯミテーヌ+3",
        legs="アグゥスロップス",
        feet="ＢＡサンダル+3",
		waist="無の腰当",
        neck="エーラペンダント",
		left_ear="マリグナスピアス",
		right_ear="アジムスピアス+1",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        left_ring="キシャールリング",
        back="無の外装",
	}
	
    sets.buff = {
		head={ name="テルキネキャップ", augments={'Mag. Evasion+25','"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		body={ name="テルキネシャジュブ", augments={'"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
        -- hands="ＡＢブレーサー+1",--"ＡＢブレーサー+3",
		legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+25','"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		feet={ name="テルキネピガッシュ", augments={'Enh. Mag. eff. dur. +10',}},
        neck="インカンタートルク",
        waist="エンブラサッシュ",
        left_ear="ミミルピアス",
		right_ear="アンドアーピアス",
		-- right_ear={ name="アジムスピアス+1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
    }
	
	sets.engage = {
		-- main="トライアルワンド",
		head="ニャメヘルム",
        body="ニャメメイル",
        hands="ニャメガントレ",
        legs="ニャメフランチャ",
        feet={ name="ニャメソルレット", augments={'Path: B',}},
		neck="クロタリウストルク",
        waist="ウィンバフベルト+1",
        left_ring="シーリチリング+1",
        right_ring="イフラマドリング",
        left_ear="テロスピアス",
        right_ear="セサンスピアス",
	}
	
    send_command('input /macro book 14; wait 2;input /lockstyleset '..default_style)
	send_command('input //lua r autogeo')
end

function precast(spell)
    local set_equip = nil

    if spell.type == 'Trust' or spell.type == 'Geomancy' or string.find(spell.type, 'Magic') then
        set_equip = sets.fc
		
		if spell.english == 'Sneak' and spell.target.name == player.name then
			windower.ffxi.cancel_buff(71)

		elseif spell.english == 'Impact' then
			set_equip = sets.fc.Impact
		end
    elseif sets.ja[spell.english] then
        set_equip = sets.ja[spell.english]
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
        if string.find(spell.name,'ケアル') then
            set_equip = sets.ma.Cure
			
		elseif spell.english:sub(1,4) == 'Geo-' then
			set_equip = sets.ma.geo
		elseif spell.english:sub(1,5) == 'Indi-' then
			if buffactive['エントラスト'] then
				set_equip = set_combine(sets.ma.indi, sets.ja.Entrust)
			else
				set_equip = sets.ma.indi
			end
			if player.sub_job_id == 19 then
				set_equip = set_combine(set_equip, sets.ma.indi_duo)
			end
            
        elseif sets.ma[spell.english] then
            set_equip = sets.ma[spell.english]
			
		elseif spell.skill=='強化魔法' then
			set_equip = sets.buff
				
		elseif spell.skill=='精霊魔法' then
			set_equip = sets.mb
				
		elseif spell.skill=='暗黒魔法' then
			set_equip = sets.macc
		end
	end
	
    if set_equip then
        equip(set_equip)
    end
end

function aftercast(spell)
    setIdle()
	if skillup and spell.english == 'Indi-Poison' then
		send_command(windower.to_shift_jis('wait 3; input /ma インデデック <me>;'..
										   'wait 5; input /ma インデリジェネ <me>;'..
										   'wait 5; input /ma インデフューリー <me>;'..
										   'wait 5; input /ma インデバリア <me>;'..
										   'wait 5; input /ma インデトーパー <me>;'..
										   'wait 12; input /ma インデポイズン <me>;'))
	end
end

function status_change(new,old)
    setIdle()
end

function buff_change(name,gain,buff_details)	
    -- if not gain then
        -- if buff_details.name == "コルセアズロール" then
            -- windower.send_command(string.format('input /ja "%s" <me>', buff_details.name))
        -- end
    -- end
end

function pet_change(pet,gain)
	if not gain then
		windower.add_to_chat('Luopan dead...')
	end
	setIdle()
end

function setIdle()
    local set_equip = sets.idle

    if windower.ffxi.get_player().status == 1 then
        set_equip = set_combine(sets.idle, sets.engage)
        
        -- if  mylib.is_in_adoulin(world.area) then
            -- set_equip = set_combine(set_equip, sets.walk.adoulin)
        -- end
	else
		local luopan = windower.ffxi.get_mob_by_target('pet')
		if luopan then
			set_equip = set_combine(set_equip, sets.idle.geo)
		end
    end

    if set_equip then
        equip(set_equip)
    end
end

function lockstyle()
	-- if mode ~='' and sets.mode[mode] and sets.mode[mode].style then
		-- send_command('input /lockstyleset '..sets.mode[mode].style)
	-- else
		send_command('input /lockstyleset '..default_style)
	-- end
end

function file_unload(file_name)
	send_command('input //lua u autogeo')
end

function self_command(command)
    if command == 'pdt' then
        -- mode = 'pdt'
        -- windower.add_to_chat('Mode is: '..mode)
        
    elseif command == 'skillup' then
        skillup = not skillup
        windower.add_to_chat('Skillup: '..tostring(skillup))
		
    elseif command == 'style' or command == 's' then
		lockstyle()
		
    -- else
        -- mode = 'normal'
        -- windower.add_to_chat('Mode is: '..mode)
    end
    -- setIdle()
end