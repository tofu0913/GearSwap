
mylib = require('mylib')
res = require('resources')

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
    text:size(11)
    text:color(255,255,255,255)
    text:stroke_alpha(200)
    text:stroke_color(20,20,20)
    text:stroke_width(2)
	text:show()
end
text = texts.new("${flags}", text_setting, {})
setup_text(text)

function updateText()
    local flags = ''
    -- windower.add_to_chat('Mode: '..tostring(mode))
    if mode then
        flags = flags..mode..' '
    end
    if regain then
        flags = flags..'Rg '
    end
    if pdt then
        flags = flags..'PDT '
    end
    if cflo then
        flags = flags..'C '
    end
    -- windower.add_to_chat('Low Haste: '..tostring(lowhaste))
    -- windower.add_to_chat('TH: '..tostring(th))
    text.flags = flags
end

function get_sets()
    set_language('japanese')

    sets.ws = {}
    sets.mode = {}
    sets.tp = {}
    
    pdt = false
    th = false
    lowhaste = false
    regain = false
    cflo = true
    mode = ''
    updateText()
	default_style = 31
        
    sets.mode['ABY'] = {
        main={ name="トゥワシュトラ", augments={'Path: A',}},
        sub={ name="フセット+2", augments={'TP Bonus +1000',}},
		style=5,
    }
    sets.mode['AMB'] = {
        main="トーレット",
        sub={ name="フセット+2", augments={'TP Bonus +1000',}},
    }
    sets.mode['ABYP'] = {
        main={ name="トゥワシュトラ", augments={'Path: A',}},
        sub="ンプガンドリング",
		style=5,
    }
    sets.mode['P'] = {
        main="ンプガンドリング",
        sub={ name="フセット+2", augments={'TP Bonus +1000',}},
		style=31,
    }
    sets.mode['PABY'] = {
        main="ンプガンドリング",
        sub={ name="トゥワシュトラ", augments={'Path: A',}},
		style=31,
    }
    sets.mode['SW'] = {
        main="デマサルデーゲン+1",
        sub="トーレット",
    }
    sets.mode['HH'] = {
        main="カランビット",
        sub="",
    }

    sets.tp={
        ammo="コイストボダー",
        -- ammo="銀銭",
        head="ＭＣティアラ+3",
        -- head={ name="アデマボンネット+1", augments={'STR+12','DEX+12','Attack+20',}},
        -- body="ムンムジャケット+2",
        -- body="ＨＯカザク+3",
        body="マリグナスタバード",
        hands={ name="アデマリスト+1", augments={'DEX+12','AGI+12','Accuracy+20',}},
        legs={ name="サムヌータイツ", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
        -- feet="ムンムゲマッシュ+2",
        -- feet={ name="ＨＯトーシュー+3", augments={'Enhances "Closed Position" effect',}},
        feet="ＭＣトーシュー+3",
        neck={ name="エトワールゴルゲ+2", augments={'Path: A',}},
        waist="ウィンバフベルト+1",
        left_ear="シェリダピアス",
        right_ear="テロスピアス",
        left_ring="シーリチリング+1",
        -- right_ring="ムンムリング",
        -- right_ring="ペトロフリング",
        right_ring="ゲリリング",
        -- back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
    }
    sets.tp.lowhaste={
        head="ＭＸティアラ+2",
        right_ring="王将の指輪",
    }
    sets.tp.pdt = {
        head="マリグナスシャポー",
        body="グレティキュイラス",
        -- body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="ＭＣトーシュー+3",
		left_ring="守りの指輪",
    }
	sets.idle = set_combine(sets.tp, {
		ammo="昏黄の礫",
		head="トゥルムキャップ+1",
		body={ name="グレティキュイラス", augments={'Path: A',}},
		hands="グレティガントレ",
		legs="グレティブリーチズ",
		feet="グレティブーツ",
		neck="共和プラチナ章",
		waist="プラチナモグベルト",
		left_ring="守りの指輪",
		right_ring="ローラーリング",
	})

    sets.ws={
        ammo="カリスフェザー",
        head="ＭＣティアラ+3",
		-- body={ name="グレティキュイラス", augments={'Path: A',}},
        body="メガナダクウィリ+2",
		-- body={ name="ヘルクリアベスト"},
        hands="ＭＸバングル+3",
        -- hands={ name="ニャメガントレ", augments={'Path: B',}},
        legs="ＨＯタイツ+3",
        feet={ name="ニャメソルレット", augments={'Path: B',}},
		neck={ name="エトワールゴルゲ+2", augments={'Path: A',}},
        waist="ケンタークベルト+1",
        left_ear="胡蝶のイヤリング",
        right_ear={ name="マクレレピアス+1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+13','Mag. Acc.+13','"Store TP"+4',}},
        left_ring="イフラマドリング",
        right_ring="王将の指輪",
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
    }
    sets.ws.fulltp={
        left_ear="オドルピアス",
    }
    sets.ws['Shark Bite'] = set_combine(sets.ws, {
        -- right_ear="オドルピアス",
        -- waist="グルンフェルロープ",
    })
    sets.ws['Evisceration'] = set_combine(sets.ws, {
        -- right_ear="オドルピアス",
        -- waist="グルンフェルロープ",
        -- neck="フォシャゴルゲット",
        -- waist="フォシャベルト",
        -- right_ear="オドルピアス",
    })
    sets.ws['Exenterator'] = set_combine(sets.ws, {
        -- right_ear="オドルピアス",
        -- body="ムンムジャケット+2",
        legs="メガナダショウス+2",
        feet="ムンムゲマッシュ+2",
        -- waist="グルンフェルロープ",
    })
    sets.ws['Ruthless Stroke'] = set_combine(sets.ws, {
        neck="フォシャゴルゲット",
        waist="フォシャベルト",
		right_ear="イシュヴァラピアス",
		left_ring="エパミノダスリング",
    })
    sets.ws['Rudra\'s Storm'] = set_combine(sets.ws, {
        ammo="パルーグストーン",
        waist="フォシャベルト",
		right_ear="イシュヴァラピアス",
		left_ring="エパミノダスリング",
    })
    sets.ws['Aeolian Edge'] = set_combine(sets.ws, {
        ammo={ name="ガストリタスラム+1", augments={'Path: A',}},
        head="ニャメヘルム",
        body="ニャメメイル",
        hands={ name="ニャメガントレ", augments={'Path: B',}},
        legs="ニャメフランチャ",
        feet="ニャメソルレット",
        neck="シビルスカーフ",
        waist="オルペウスサッシュ",
		right_ear="フリオミシピアス",
        left_ear="胡蝶のイヤリング",
		-- right_ring="ディンジルリング",
		-- back={ name="トゥタティスケープ", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}},
    })
    sets.th = {
        ammo="完璧な幸運の卵",
		head="ヘルクリアヘルム",
		waist="チャークベルト",
    }
    
    sets.ja = {}
    sets.ja.Jig = {
        legs="ＨＯタイツ+3",
    }
    sets.ja['Reverse Flourish'] = {
        hands="ＭＣバングル+2",
        back={ name="トータッパーマント", augments={'"Store TP"+4','"Dual Wield"+3','"Rev. Flourish"+30',}},
    }
    sets.ja['Climactic Flourish'] = {
        head="ＭＣティアラ+3",
    }
    sets.ja['Violent Flourish'] = {
        body="ＨＯカザク+3",
    }
    sets.ja.Waltz = {
		ammo="ヤメラング",
        head="ＨＯティアラ+1",
		body="パションジャケット",
		neck={ name="エトワールゴルゲ+2", augments={'Path: A',}},
        left_ring="ヴァルスールリング",
		back={ name="トータッパーマント", augments={'"Store TP"+4','"Dual Wield"+3','"Rev. Flourish"+30',}},
    }
    sets.ja.Step = {
        head="ＭＸティアラ+2",
        hands="ＭＸバングル+3",
        feet={ name="ＨＯトーシュー+3", augments={'Enhances "Closed Position" effect',}},
    }
    sets.ja['No Foot Rise'] = {
        body="ＨＯカザク+3",
    }
    sets.ja['Saber Dance'] = {
        legs="ＨＯタイツ+3",
    }
    sets.ja['Trance'] = {
        head="ＨＯティアラ+1",
    }
    sets.ja.Samba = {
        head="ＭＸティアラ+2",
    }
    sets.ja.Jump = {
        ammo="コイストボダー",
        head="ＭＣティアラ+3",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        feet="ＭＣトーシュー+3",
        neck={ name="エトワールゴルゲ+2", augments={'Path: A',}},
        waist={ name="ケンタークベルト+1", augments={'Path: A',}},--"ゴウドベルト",
        left_ear="シェリダピアス",
        right_ear="デディションピアス",
        left_ring="シーリチリング+1",
        right_ring="イラブラットリング",
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
    }
    sets.buff = {}
    sets.buff.Phalanx = {
        -- body={ name="ヘルクリアベスト"},
        hands={ name="ヘルクリアグローブ"},
        legs={ name="ヘルクリアトラウザ"},
        feet={ name="ヘルクリアブーツ", augments={'"Dbl.Atk."+1','"Mag.Atk.Bns."+17','Phalanx +5','Mag. Acc.+9 "Mag.Atk.Bns."+9',}},
    }
    
    sets.ra = {
        range="アルビンベーン",
    }
    
    -- Common equipments
    sets.fc = {
		head="ヘルクリアヘルム",
        neck="ボルトサージトルク",
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
    
    sets.HolyWater = {
        neck="ニカンダネックレス",
        -- left_ring="Purity Ring",
    }

    send_command('input /macro book 6; wait 2;input /lockstyleset '..default_style)
	updateText()
	send_command('input //lua r autodnc')
end

function precast(spell)
    local set_equip = nil

    if spell.type == 'Trust' or string.find(spell.type, 'Magic') then
        set_equip = sets.fc
    elseif spell.english == 'Spectral Jig' and windower.ffxi.get_ability_recasts()[218] == 0 then
        windower.ffxi.cancel_buff(71)
    elseif spell.action_type == 'Ranged Attack' then
        set_equip = sets.ra
    elseif spell.type == 'Waltz' then
        if buffactive['剣の舞い'] then
            cast_delay(1.5)
            windower.ffxi.cancel_buff(410)
        end
        -- set_equip = sets.waltz.pre
    -- elseif spell.type == 'Step' then
        -- if windower.ffxi.get_ability_recasts()[236] < 1 then
            -- cancel_spell()
            -- send_command(windower.to_shift_jis('input /ja "プレスト" <me>; wait 1; input /ja "'..spell.name..'" <t>'))
        -- end
    elseif spell.type == 'WeaponSkill' then
        if cflo and not buffactive['C.フラリッシュ'] and windower.ffxi.get_ability_recasts()[226] < 1 and get_FM() > 0 then
            cancel_spell()
            send_command(windower.to_shift_jis('input /ja "C.フラリッシュ" <me>; wait 1; input /ws '..spell.name..' <t>'))
			
        -- elseif backstep and not buffactive['プレスト'] and windower.ffxi.get_ability_recasts()[236] < 1 then
            -- cancel_spell()
            -- send_command(windower.to_shift_jis('input /ws '..spell.name..' <t>; wait 4; input /ja "プレスト" <me>; wait 1; input /ja "ボックスステップ" <t>'))
            
        end
        send_command('input //stw restart')
    end

    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil

    if spell.type=='Jig' then
        set_equip = sets.ja.Jig
    elseif spell.type == 'Waltz' then
        set_equip = sets.ja.Waltz
    elseif spell.type == 'Step' then
        set_equip = sets.ja.Step
    elseif spell.type == 'Samba' then
        set_equip = sets.ja.Samba
    elseif string.find(spell.english, 'Jump') then
        set_equip = sets.ja.Jump
		if th then
			set_equip = set_combine(set_equip, sets.th)
		end
    elseif sets.ja[spell.english] then
        set_equip = sets.ja[spell.english]
    elseif spell.type == 'WeaponSkill' and not buffactive['アムネジア'] then
        if sets.ws[spell.english] then
            set_equip = sets.ws[spell.english]
        else
            set_equip = sets.ws
        end
        if windower.ffxi.get_player().vitals.tp >= 1700 then
            set_equip = set_combine(set_equip, sets.ws.fulltp)
        end
	elseif string.find(spell.english,'Phalanx') then
        set_equip = sets.buff.Phalanx
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

function buff_change(buff,gain,buff_details)
    if buff == '死の宣告' then
        if gain then
            send_command(windower.to_shift_jis('input /p "死の宣告！！！Doom!!!!!!!!!!!!!<call>"'))
        else
            windower.add_to_chat("死の宣告から回復した、Doom gone....")
        end
    end
end

function setIdle()
    set_equip = sets.idle
    
    if windower.ffxi.get_player().status == 0 then
        -- windower.add_to_chat((world.area))
		if not regain then
			set_equip = set_combine(set_equip, sets.walk)
		end
        
        if  mylib.is_in_adoulin(world.area) then
            set_equip = set_combine(set_equip, sets.walk.adoulin)
        end
    elseif windower.ffxi.get_player().status == 1 then
		if not regain then
			set_equip = sets.tp
			if pdt then
				set_equip = set_combine(set_equip, sets.tp.pdt)
			elseif lowhaste then
				set_equip = set_combine(set_equip, sets.tp.lowhaste)
			end
		end
    end

    if set_equip then
        equip(set_combine(sets.mode[mode], set_equip))
    end
end

function get_FM()
    if buffactive['フィニシングムーブ1'] then
        return 1
    elseif buffactive['フィニシングムーブ2'] then
        return 2
    elseif buffactive['フィニシングムーブ3'] then
        return 3
    elseif buffactive['フィニシングムーブ4'] then
        return 4
    elseif buffactive['フィニシングムーブ5'] then
        return 5
    elseif buffactive['フィニシングムーブ(5+)'] then
        return 6
    end
    return 0
end

function lockstyle()
	if mode ~='' and sets.mode[mode] and sets.mode[mode].style then
		send_command('input /lockstyleset '..sets.mode[mode].style)
	else
		send_command('input /lockstyleset '..default_style)
	end
end

function file_unload(file_name)
	send_command('input //lua u autodnc')
end

function self_command(command)
    command = command:lower()
    if command == 'pdt' then
        pdt = not pdt
        windower.add_to_chat('PDT- is: '..tostring(pdt))
		
    elseif command == 'style' or command == 's' then
		lockstyle()

    elseif command == 'cflo' or command == 'cf' then
        cflo = not cflo
        windower.add_to_chat('C.Flour is: '..tostring(cflo))
    elseif command == 'cflo1' then
        cflo = true
        windower.add_to_chat('C.Flour is: '..tostring(cflo))
    elseif command == 'cflo0' then
        cflo = false
        windower.add_to_chat('C.Flour is: '..tostring(cflo))
		
    elseif command == 'lowhaste' then
        lowhaste = not lowhaste
        windower.add_to_chat('Low Haste is: '..tostring(lowhaste))
		
    elseif command == 'regain' then
        regain = not regain
        windower.add_to_chat('Regain: '..tostring(regain))
    elseif command == 'regain1' then
        regain = true
        windower.add_to_chat('Regain: '..tostring(regain))
    elseif command == 'regain0' then
        regain = false
        windower.add_to_chat('Regain: '..tostring(regain))
		
    elseif command == 'pha1' then
        windower.add_to_chat('Phalanx ON')
        local spell = {}
        spell.english = 'Phalanx'
        spell.skill = '強化魔法'
        midcast(spell)
    elseif command == 'pha0' then
        windower.add_to_chat('Phalanx OFF')
        setIdle()

    elseif command == 'th' then
        th = not th
        windower.add_to_chat('TH is: '..tostring(th))

    elseif command == 'free' then
        mode = ''
		lockstyle()
    elseif command == 'aby' then
        mode = 'ABY'
        send_command('input //ws dnc_aby on')
		lockstyle()
    elseif command == 'abyp' then
        mode = 'ABYP'
		lockstyle()
    elseif command == 'amb' then
        mode = 'AMB'
		lockstyle()
    elseif command == 'p' then
        mode = 'P'
		lockstyle()
        send_command('input //ws dnc_p on')
    elseif command == 'paby' then
        mode = 'PABY'
		lockstyle()
        send_command('input //ws dnc_p on')
    elseif command == 'sw' then
        mode = 'SW'
		lockstyle()
    elseif command == 'hh' then
        mode = 'HH'
		lockstyle()
        send_command('input //ws hh on')
    elseif command == 'help' then
        windower.add_to_chat('Mode: '..tostring(mode))
        windower.add_to_chat('Available modes: [aby, amb, acc, p]')
        windower.add_to_chat('PDT: '..tostring(pdt))
        windower.add_to_chat('C.Flour: '..tostring(cflo))
        windower.add_to_chat('Low Haste: '..tostring(lowhaste))
        windower.add_to_chat('TH: '..tostring(th))
    end
    
    if command ~= 'pha1' then
        setIdle()
    end
    updateText()
end