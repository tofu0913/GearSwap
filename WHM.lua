

function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.ws = {}
    sets.midcast = {}
    sets.aftercast = {}

    pdt = false
    
    sets.idle = {
        main="アバブリニ+1",
        -- sub="クラシオグリップ",
		ammo="昏黄の礫",
        head="ニャメヘルム",
        body="ＥＢブリオー+1",
        hands="ニャメガントレ",
        legs="ニャメフランチャ",
        feet="ニャメソルレット",
        neck="バーシチョーカー+1",
        waist="プラチナモグベルト",
        left_ear="インフューズピアス",
		right_ear={ name="エーベルピアス+1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','Damage taken-4%',}},
        left_ring="守りの指輪",
        right_ring="シュネデックリング",
        back={ name="アラウナスケープ", augments={'"Fast Cast"+10','Phys. dmg. taken-10%',}},
    }
    sets.pdt = {
        head="ニャメヘルム",
        body="ニャメメイル",
        hands="ニャメガントレ",
        -- legs="ニャメフランチャ",
        feet="ニャメソルレット",
    }
    
    sets.ma = {
		neck="インカンタートルク",
	}
    sets.ma.EnhancingDuration = {}
    sets.ma.Stoneskin = set_combine(sets.ma.EnhancingDuration,{
        waist="ジーゲルサッシュ"
    })
    sets.ma.Cure = set_combine(sets.ma,{
        head="ＴＥキャップ+1",
        body="ＥＢブリオー+1",
        legs="ＥＢパンタロン+1",
        feet={ name="ヴァニヤクロッグ", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
		waist="オステリベルト+1",
        neck="ノデンズゴルゲット",
        left_ear="メンデカントピアス",
		right_ear="ナーリシュピアス+1",
        left_ring="ナジの包帯",
        right_ring="レベッチェリング",
    })

    -- Common equipments
    sets.fc = {
		-- main={ name="ガーダ", augments={'"Fast Cast"+6','Mag. Acc.+13','DMG:+5',}},
        ammo="インカントストーン",
        body="インヤガジュバ+2",
		hands={ name="ＧＥゲージ+1", augments={'Phys. dmg. taken -4%','Magic dmg. taken -3%','Song spellcasting time -5%',}},
		legs="アヤモコッシャレ+2",
		neck="ボルトサージトルク",
        waist="エンブラサッシュ",
        left_ear="マリグナスピアス",
        right_ear="ロケイシャスピアス",
        right_ring="プロリクスリング",
        left_ring="キシャールリング",
    }
    sets.fc.Cure = set_combine(sets.fc, {
        head="ＴＥキャップ+1",
        legs="ＥＢパンタロン+1",
        feet={ name="ヴァニヤクロッグ", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
        neck="アケソチョーカー+1",
		waist="アサビクサッシュ+1",
		left_ear="メンデカントピアス",
		right_ear="ナーリシュピアス+1",
	})
    sets.buff = {
		head={ name="テルキネキャップ", augments={'Mag. Evasion+25','"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		-- body="ＰＤガウン+3",
        -- hands="ＡＢブレーサー+3",
		hands={ name="テルキネグローブ", augments={'"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		legs={ name="テルキネブラコーニ", augments={'Mag. Evasion+25','"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
		feet={ name="テルキネピガッシュ", augments={'"Conserve MP"+5','Enh. Mag. eff. dur. +10',}},
        neck="インカンタートルク",
        waist="エンブラサッシュ",
        left_ear="ミミルピアス",
		right_ear="アンドアーピアス",
		-- back="フィフォレケープ+1",
    }
	sets.debuff = {
		main={ name="ブンジロッド", augments={'Path: A',}},
		-- sub="カルミナス",
        head="ニャメヘルム",
        body="ニャメメイル",
        hands="ニャメガントレ",
        legs="ニャメフランチャ",
        feet="ニャメソルレット",
		-- head="ＡＣボード+3",
        -- body="ＡＢガウン+3",--ＡＣガウン+3
        -- hands="ＡＢブレーサー+3",
        -- legs="ＡＢパンツ+3",
        -- feet="ＡＢローファー+3",--ＡＣローファー+3
		waist="無の腰当",
        neck="無の喉輪",
		left_ear="王将の耳飾り",
		right_ear="マリグナスピアス",
        right_ring={ name="メタモルリング+1", augments={'Path: A',}},
        left_ring="キシャールリング",
		back="無の外装",
	}
    sets.walk = {}
    sets.walk.adoulin = set_combine(sets.walk, {
        body="カウンセラーガーブ",
    })

    send_command('input /macro book 10; wait 2;input /lockstyleset 6')
end

function precast(spell)
    local set_equip = nil

    if spell.type == 'Trust' or string.find(spell.type, 'Magic') then
        set_equip = sets.fc
	elseif string.find(spell.english,'Cur') and spell.name ~= 'Cursna' then
		set_equip = sets.fc.Cure
    end

    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil

	
    if spell.skill=='強化魔法' then
		set_equip = sets.buff
		if string.find(spell.name, 'ストンスキン') then
			set_equip = set_combine(set_equip, sets.ma.Stoneskin)
        end
	
	elseif spell.skill=='弱体魔法' then
		set_equip = sets.debuff

	elseif string.find(spell.english,'Cur') and spell.name ~= 'Cursna' then
		set_equip = sets.ma.Cure
    end

    if set_equip then
        equip(set_equip)
    end
end

local engaged = false
function status_change(new,old)
    engaged = (new == 'Engaged')
    setIdle()
end

function setIdle()
    set_equip = nil
    
    if pdt then
        set_equip = sets.pdt
    else
        set_equip = sets.idle
    end
    if not engaged then
        -- set_equip = set_combine(set_equip, sets.walk)
        if  world.area:endswith('アドゥリン') then
            set_equip = set_combine(set_equip, sets.walk.adoulin)
        end
    end

    if set_equip then
        equip(set_equip)
    end
end

function aftercast(spell)
    
    setIdle()
end

function self_command(command)
    if command == 'pdt' then
        pdt = not pdt
        windower.add_to_chat('PDT- is: '..tostring(pdt))
    else
        windower.add_to_chat('==============================')
        windower.add_to_chat('PDT- is: '..tostring(pdt))
    end
    
    setIdle()
end