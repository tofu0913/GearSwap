
mylib = require('mylib')

-- Widget
local texts = require('texts')
local text_setting = {
    pos = {
        x = 15,
        y = 945
    }
}
function setup_text(text)
    text:bg_alpha(255)
    text:bg_visible(true)
    text:font('ＭＳ ゴシック')
    text:size(12)
    text:color(255,255,255,255)
    text:stroke_alpha(200)
    text:stroke_color(20,20,20)
    text:stroke_width(2)
	text:show()
end
text = texts.new("${flags}", text_setting, {})
setup_text(text)

function updateText()
    local flags = ' '
	if buffactive['白のグリモア'] then
        flags = flags..'白 '
	elseif buffactive['白の補遺'] then
        flags = flags..'白+ '
	elseif buffactive['黒のグリモア'] then
        flags = flags..'黒 '
	elseif buffactive['黒の補遺'] then
        flags = flags..'黒+ '
    end
	if lowsc then
        flags = flags..'弱 '
    end
	if subling then
        flags = flags..'机 '
    end
	if mbmode then
        flags = flags..'MB '
	else
        flags = flags..' '
	end
    -- windower.add_to_chat('Low Haste: '..tostring(lowhaste))
    -- windower.add_to_chat('TH: '..tostring(th))
    text.flags = flags
end

function get_sets()
    set_language('japanese')
    
    lowsc = false
	subling = false
	mbmode = false
	nobook = false
	default_style = 7
    
    sets.idle = {
        main="ムサ",
        -- main="マリグナスポール",
		ammo={ name="ガストリタスラム+1", augments={'Path: A',}},--'pdt',
        sub="コーンスー",
        head="ニャメヘルム",
        body="ＡＢガウン+3",
        hands="ニャメガントレ",
        legs="ニャメフランチャ",
        feet="ニャメソルレット",
        waist="エンブラサッシュ",
        neck={ name="アギュトストール+2", augments={'Path: A',}},
        left_ear="ミミルピアス",
        right_ear="サバントピアス",
        left_ring="シーリチリング+1",--守
        right_ring="シュネデックリング",
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}}
    }
	sets.idle.Sublimation = set_combine(sets.idle, {
        head="ＡＣボード+2",
        body="ＰＤガウン+3",
        right_ear="サバントピアス",
	})
    
    sets.mb = {
		-- main="マクセンチアス",
        head="ＡＢボネット+3",
        body="ＡＢガウン+3",--"アグゥローブ",
        hands="ＡＢブレーサー+3",--"アグゥゲージ",
        legs="ＡＢパンツ+2",--"アグゥスロップス",
        feet="ＡＢローファー+3",
        
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        neck={ name="アギュトストール+2", augments={'Path: A',}},
        waist="八輪の帯",
        -- waist="オルペウスサッシュ",
		left_ear="王将の耳飾り",
        -- left_ear={ name="アバテルピアス", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+8',}},
        right_ear="マリグナスピアス",
        left_ring="フレキリング",
        -- left_ring="夢神の指輪",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        back={ name="ルッフケープ", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
    }
    
    sets.ja = {}
    sets.ja['Tabula Rasa'] = {
		legs="ペダゴギパンツ",
	}

    sets.buff = {
		head={ name="テルキネキャップ", augments={'Mag. Evasion+25','"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		body="ＰＤガウン+3",
        hands="ＡＢブレーサー+3",
		legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+25','"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		feet={ name="テルキネピガッシュ", augments={'Enh. Mag. eff. dur. +10',}},
        neck="インカンタートルク",
        waist="エンブラサッシュ",
        left_ear="ミミルピアス",
		right_ear="アンドアーピアス",
		-- back="フィフォレケープ+1",
    }
    
    sets.ma = {}
	sets.ma.Impact = set_combine(sets.mb, {
		head="",
		body="トワイライトプリス",
	})
    sets.ma.Stoneskin = set_combine(sets.buff,{
        waist="ジーゲルサッシュ",
        neck="ノデンズゴルゲット",
		right_ear="アースクライピアス",
    })
    sets.ma.Cure = {
        neck="ノデンズゴルゲット",
		body="ＡＢガウン+3",
		legs="ギーヴトラウザ",
        feet="ヴァニヤクロッグ",
		waist="オステリベルト+1",
        left_ear="メンデカントピアス",
        right_ear="カラミタスピアス",
        left_ring="ナジの包帯",
    }
    sets.ma.Regen = set_combine(sets.buff, {
		head="ＡＢボネット+3",
	})
	sets.ma.storm = set_combine(sets.buff, {
		feet="ペダゴギローファー",
	})
	sets.ma.Klimaform = set_combine(sets.buff, {
		feet="ＡＢローファー+3",
	})
    
    sets.lowsc = {
        -- main="ハーミットワンド",
        main="コブラスタッフ",
        head={ name="カイロンハット", augments={'Spell interruption rate down -10%','VIT+10',}},
        body="ロゼトジャズラン+1",
        hands={ name="カイロングローブ", augments={'Mag. Acc.+2','Spell interruption rate down -8%','CHR+4','"Mag.Atk.Bns."+4',}},
        legs="クァーケンブレー",
        waist="エンパチコスロープ",
		right_ear="カラミタスピアス",
        back={ name="ルッフケープ", augments={'"Fast Cast"+10',}},
    }

    sets.fc = {
        ammo="インカントストーン",
        head={ name="マーリンフード", augments={'Mag. Acc.+11 "Mag.Atk.Bns."+11','"Fast Cast"+7',}},
        hands={ name="ＧＥゲージ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -3%','Song spellcasting time -5%',}},
        legs="ギーヴトラウザ",
        feet={ name="マーリンクラッコー", augments={'"Fast Cast"+4','INT+4','Mag. Acc.+8','"Mag.Atk.Bns."+12',}},
        waist="エンブラサッシュ",
        neck="ボルトサージトルク",
        left_ring="キシャールリング",
        right_ring="プロリクスリング",
        right_ear="マリグナスピアス",
        left_ear="ロケイシャスピアス",--"エンチャンピアス+1",
        back={ name="ルッフケープ", augments={'"Fast Cast"+10',}},
    }
	sets.fc.Impact = set_combine(sets.fc, {
		head="",
		body="トワイライトプリス",
	})

    sets.ws = {
        head="ニャメヘルム",
        body="ニャメメイル",
        hands={ name="ニャメガントレ", augments={'Path: B',}},
        legs="ニャメフランチャ",
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        left_ear={ name="胡蝶のイヤリング", augments={'Accuracy+4','TP Bonus +250',}},
        right_ear="テロスピアス",
        left_ring="シーリチリング+1",
        right_ring="イフラマドリング",
    }

    sets.engage = {
        head="ニャメヘルム",
        body="ニャメメイル",
        hands={ name="ニャメガントレ", augments={'Path: B',}},
        legs="ニャメフランチャ",
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        right_ear="テロスピアス",
        left_ring="シーリチリング+1",
        right_ring="イフラマドリング",
	}
    -- Common equipments
	sets.walk = {}
    sets.walk.adoulin = set_combine(sets.walk, {
        body="カウンセラーガーブ",
    })
    
    send_command('input /macro book 12; wait 2;input /lockstyleset '..default_style)
	updateText()
	send_command('input //lua r autosch')
end

function precast(spell)
    local set_equip = nil

    if spell.type == 'Trust' or string.find(spell.type, 'Magic') then
        set_equip = sets.fc
		
		if spell.english == 'Sneak' and spell.target.name == player.name then
			windower.ffxi.cancel_buff(71)
		end
		
		if spell.english == 'Impact' then
			set_equip = sets.fc.Impact
		end
        -- if spell.english == 'Firestorm' then
            -- cancel_spell()
            -- send_command(windower.to_shift_jis('input /ma "熱波の陣II" <me>'))
        -- end
        -- if spell.english == 'Adloquium' and (buffactive['白のグリモア']) then
            -- cancel_spell()
            -- send_command(windower.to_shift_jis('input /ja 女神降臨の章 <me>; wait 1; input /ma "'..spell.name..'" <me>'))
        -- end
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
        if string.find(spell.english,'Cur') and spell.name ~= 'Cursna' then
            set_equip = sets.ma.Cure
        elseif string.find(spell.english,'Regen') then
            set_equip = sets.ma.Regen
			
		elseif string.find(spell.english,'storm') then
			set_equip = sets.ma.storm
            
        elseif lowsc then
            set_equip = sets.lowsc
            
        elseif sets.ma[spell.english] then
            set_equip = sets.ma[spell.english]
            
        elseif spell.skill=='強化魔法' then
            set_equip = sets.buff
            
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
	
	elseif subling then
		set_equip = sets.idle.Sublimation
		
	elseif mylib.is_in_adoulin(world.area) then
		set_equip = set_combine(set_equip, sets.walk.adoulin)
	end

    if set_equip then
        equip(set_equip)
    end
end

function buff_change(buff,gain,buff_details)
	-- windower.add_to_chat(buff)
	if buff == '机上演習:蓄積中' then
		subling = gain
		updateText()
		setIdle()
	elseif nobook and gain and string.find(buff, 'の章') then
		local books = getBookCount()
		-- windower.add_to_chat('book: '..books)
		if books <= 1 then
			send_command(windower.to_shift_jis('input /p ====== 戦術魔道書残量：'..books..' ======'))
		end
	end
	
	if T{'白のグリモア','白の補遺','黒のグリモア','黒の補遺'}:contains(buff) then
		updateText()
	end
end

function getBookCount()
	local recast = windower.ffxi.get_ability_recasts()[231]
	if recast == 0 then
		return 5
	elseif recast < 33 then
		return 4
	elseif recast < 66 then
		return 3
	elseif recast < 99 then
		return 2
	elseif recast < 132 then
		return 1
	end
	return 0
end

function lockstyle()
	-- if mode ~='' and sets.mode[mode] and sets.mode[mode].style then
		-- send_command('input /lockstyleset '..sets.mode[mode].style)
	-- else
		send_command('input /lockstyleset '..default_style)
	-- end
end

function file_unload(file_name)
	send_command('input //lua u autosch')
end

function self_command(command)
    command = command:lower()
    if command == 'low1' then
        lowsc = true
        windower.add_to_chat('LowSC is: '..tostring(lowsc))
		updateText()
    elseif command == 'low0' then
        lowsc = false
        windower.add_to_chat('LowSC is: '..tostring(lowsc))
		updateText()
		
    elseif command == 'style' or command == 's' then
		lockstyle()
		
    elseif command == 'nobook' then
        nobook = not nobook
        windower.add_to_chat('No book notify: '..tostring(nobook))
    
    -- elseif string.find(command, "sc ") then
	
		-- local _, scname = command:match("^(%S+)%s+(.+)")
		-- if scname ~= '0' then
			-- mbmode = true
		-- else
			-- mbmode = false
		-- end
		-- updateText()
    end
    
    setIdle()
end