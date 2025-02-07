
mylib = require('mylib')
require('mylibs/caster_lite')

function get_sets()
    set_language('japanese')
    
	skillup = false
	rp = false
	default_style = 10
	
	sets.idle = {
		main="イドリス",
		sub="玄武盾",
		range={ name="デュンナ", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="ＡＺフード+1",--"ＡＺフード+3",
        body="ＡＺコート+2",
        -- body="ニャメメイル",
		hands="ＧＯミテーヌ+3",
		legs="ＢＡパンツ+2",--"ＢＡパンツ+3",
		feet="ＡＺゲートル+1",
		neck="バグアチャーム+2",
		waist="プラチナモグベルト",
		left_ear="インフューズピアス",
		right_ear={ name="アジムスピアス+1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
		left_ring="シーリチリング+1",
		right_ring="シュネデックリング",
		back={ name="ナントセルタケープ", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Acc.+10','Pet: "Regen"+10','Pet: "Regen"+5',}},
	}
	sets.idle.geo = {
		feet="ＢＡサンダル+1",
		left_ear="ハンドラーピアス+1",
	}
	
    sets.fc = {
        head={ name="マーリンフード", augments={'Mag. Acc.+11 "Mag.Atk.Bns."+11','"Fast Cast"+7',}},
        legs="ＧＯパンツ+1",
		feet={ name="マーリンクラッコー", augments={'"Mag.Atk.Bns."+2','"Fast Cast"+6','INT+6',}},
        waist="エンブラサッシュ",
        neck="ボルトサージトルク",
        left_ring="キシャールリング",
        right_ring="プロリクスリング",
        right_ear="マリグナスピアス",
        left_ear="ロケイシャスピアス",--"エンチャンピアス+1",
        -- back={ name="ルッフケープ", augments={'"Fast Cast"+10',}},
    }
	sets.fc.Impact = set_combine(sets.fc, {
		head="",
		body="トワイライトプリス",
	})
	
	sets.ja = {}
	sets.ja.Bolster = {
		body="バグアチュニック",--"ＢＡチュニック+1",
	}
	sets.ja.Entrust = {
	}

    sets.mb = {
		main={ name="ブンジロッド", augments={'Path: A',}},
		sub="カルミナス",
		
        body={ name="アグゥローブ", augments={'Path: A',}},
        hands={ name="アグゥゲージ", augments={'Path: A',}},
        -- head="ニャメヘルム",
        -- body="ニャメメイル",
        hands="ニャメガントレ",
        -- legs="ニャメフランチャ",
        legs="アグゥスロップス",
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        -- body="ＡＺコート+2",--"+3"
        neck="水影の首飾り",
        waist="八輪の帯",
        -- waist="オルペウスサッシュ",
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
		legs="ＢＡパンツ+2",--"ＢＡパンツ+3",
		feet="ＡＺゲートル+1",
		neck="インカンタートルク",
		right_ear={ name="アジムスピアス+1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
		back="龍脈の外套",
	})
	
	sets.ma.geo = set_combine(sets.idle, {
		main="イドリス",
		sub="玄武盾",
		range={ name="デュンナ", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		neck="バグアチャーム+2",
		right_ear={ name="アジムスピアス+1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
	})
	sets.ma.Impact = set_combine(sets.mb, {
		head="",
		body="トワイライトプリス",
	})
	
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

    if spell.type == 'Trust' or string.find(spell.type, 'Magic') then
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
            
        elseif sets.ma[spell.english] then
            set_equip = sets.ma[spell.english]
			
		elseif spell.skill=='強化魔法' then
			set_equip = sets.buff
				
		elseif spell.skill=='精霊魔法' then
			set_equip = sets.mb
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
		
    elseif command == 'rp' then
        rp = not rp
        windower.add_to_chat('RP: '..tostring(rp))
		if rp then
			send_command('gs disable neck')
		else
			send_command('gs enable neck')
		end
		setIdle()
        
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