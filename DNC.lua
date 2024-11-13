
mylib = require('mylib')
packets = require('packets')
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
    if pdt then
        flags = flags..'PDT '
    end
    if step then
        flags = flags..'Step '
    end
    if cflo then
        flags = flags..'C '
    end
    if bflo then
        flags = flags..'B '
    end
    if rflo then
        flags = flags..'R '
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
    cflo = true
    bflo = true
    rflo = false
    step = true
    mode = ''
    updateText()
        
    sets.mode['ABY'] = {
        main={ name="トゥワシュトラ", augments={'Path: A',}},
        sub={ name="フセット+2", augments={'TP Bonus +1000',}},
    }
    sets.mode['AMB'] = {
        main="トーレット",
        sub={ name="フセット+2", augments={'TP Bonus +1000',}},
    }
    sets.mode['ACC'] = {
        main={ name="トゥワシュトラ", augments={'Path: A',}},
        sub="ンプガンドリング",
    }
    sets.mode['P'] = {
        main="ンプガンドリング",
        sub={ name="フセット+2", augments={'TP Bonus +1000',}},
    }
    sets.mode['SW'] = {
        main="デマサルデーゲン+1",
        sub="トーレット",
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
        -- legs="メガナダショウス+2",
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
        right_ring="ペトロフリング",
        -- back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
    }
    sets.tp.lowhaste={
        head="ＭＸティアラ+2",
        right_ring="王将の指輪",
    }
    sets.ws={
        ammo="カリスフェザー",
        head="ＭＣティアラ+3",
        hands="ＭＸバングル+3",
        body="メガナダクウィリ+2",
        -- body={ name="ヘルクリアベスト", augments={'Attack+20','Weapon skill damage +5%','Accuracy+6',}},
        legs="ＨＯタイツ+3",
        -- feet={ name="ヘルクリアブーツ", augments={'Attack+14','Weapon skill damage +4%','DEX+10',}},
        feet={ name="ニャメソルレット", augments={'Path: B',}},
        waist="ケンタークベルト+1",
        left_ear="胡蝶のイヤリング",
        right_ear={ name="マクレレピアス+1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+11','Mag. Acc.+11','"Store TP"+3',}},
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
    })
    sets.ws['Exenterator'] = set_combine(sets.ws, {
        -- right_ear="オドルピアス",
        -- body="ムンムジャケット+2",
        legs="メガナダショウス+2",
        feet="ムンムゲマッシュ+2",
        -- waist="グルンフェルロープ",
    })
    sets.th = {
        ammo="完璧な幸運の卵",
        -- legs={ name="オディシアクウィス", augments={'"Dbl.Atk."+3','Pet: Haste+3','"Treasure Hunter"+1','Accuracy+9 Attack+9',}},
    }
    
    sets.ja = {}
    sets.ja.Jig = {
        legs="ＨＯタイツ+3",
    }
    sets.ja['Reverse Flourish'] = {
        hands="ＭＣバングル+1",
        back={ name="トータッパーマント", augments={'"Store TP"+4','"Dual Wield"+3','"Rev. Flourish"+30',}},
    }
    sets.ja['Climactic Flourish'] = {
        hands="ＭＣティアラ+3",
    }
    sets.ja['Violent Flourish'] = {
        body="ＨＯカザク+3",
    }
    sets.ja.Waltz = {
        left_ring="ヴァルスールリング",
        head="ＨＯティアラ+1",
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
        waist={ name="ケンタークベルト+1", augments={'Path: A',}},
        left_ear="シェリダピアス",
        right_ear="テロスピアス",
        left_ring="シーリチリング+1",
        right_ring="イラブラットリング",
        back={ name="セヌーナマント", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}},
    }
    
    sets.ra = {
        range="アルビンベーン",
    }
    
    sets.pdt = {
        -- head="ニャメヘルム",
        -- body="ニャメメイル",
        -- hands="ニャメガントレ",
        -- legs="ニャメフランチャ",
        -- feet="ニャメソルレット",
        
        head="マリグナスシャポー",
        body="マリグナスタバード",
        hands="マリグナスグローブ",
        legs="マリグナスタイツ",
        -- feet="マリグナスブーツ",
        
        feet="ＭＣトーシュー+3",
    }

    -- Common equipments
    sets.fc = {
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

    send_command('input /macro book 6; ')
    send_command('wait 2;input /lockstyleset 5')
end

function pretarget(spell,action)
     
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
    elseif spell.type == 'Step' then
        if windower.ffxi.get_ability_recasts()[236] < 1 then
            cancel_spell()
            send_command(windower.to_shift_jis('input /ja "プレスト" <me>; wait 1; input /ja "'..spell.name..'" <t>'))
        end
    elseif spell.type == 'WeaponSkill' then
        if cflo and not buffactive['C.フラリッシュ'] and windower.ffxi.get_ability_recasts()[226] < 1 and get_FM() > 0 then
            cancel_spell()
            send_command(windower.to_shift_jis('input /ja "C.フラリッシュ" <me>; wait 1; input /ws '..spell.name..' <t>'))
        
        -- elseif backstep and not buffactive['プレスト'] and windower.ffxi.get_ability_recasts()[236] < 1 then
            -- cancel_spell()
            -- send_command(windower.to_shift_jis('input /ws '..spell.name..' <t>; wait 4; input /ja "プレスト" <me>; wait 1; input /ja "ボックスステップ" <t>'))
            
        end
        send_command('input //sw restart')
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
    elseif sets.ja[spell.english] then
        set_equip = sets.ja[spell.english]
    elseif spell.type == 'WeaponSkill' and not buffactive['アムネジア'] then
        if sets.ws[spell.english] then
            set_equip = sets.ws[spell.english]
        else
            set_equip = sets.ws
        end
        if windower.ffxi.get_player().vitals.tp == 3000 then
            set_equip = set_combine(set_equip, sets.ws.fulltp)
        end
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
    set_equip = nil
    
    if pdt then
        set_equip = set_combine(sets.tp, sets.pdt)
    else
        -- if acc then
            -- set_equip = sets.acc
        -- else
            set_equip = sets.tp
        -- end
        if lowhaste then
            set_equip = set_combine(set_equip, sets.tp.lowhaste)
        end
    end
    if windower.ffxi.get_player().status == 0 then
        -- windower.add_to_chat((world.area))
        set_equip = set_combine(set_equip, sets.walk)
        
        if  mylib.is_in_adoulin(world.area) then
            set_equip = set_combine(set_equip, sets.walk.adoulin)
        end
    end
    if th then
        set_equip = set_combine(set_equip, sets.th)
    end

    if set_equip then
        equip(set_combine(sets.mode[mode], set_equip))
    end
end

local lastStepCheck = os.clock()
local lastBfloCheck = os.clock()
res = require('resources')
local steploop = 1
STEPS = {
    "ボックスステップ",
    "フェザーステップ",
}

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

windower.register_event('outgoing chunk',function(id,data)
	if id == 0x037 then
		local packet = packets.parse('outgoing', data)
        item_used = res.items[windower.ffxi.get_items(packet.Bag, packet.Slot).id].en
        if item_used == 'Holy Water' then  
          if player.equipment.left_ring == "Purity Ring" and player.equipment.neck == "Nicander's Necklace" then
            -- nothing
          else
            -- windower.add_to_chat(2,"Equipping gear and adding delay")
            windower.send_command("gs equip sets.HolyWater")
            send_command(windower.to_shift_jis('@wait 0.5; input /item "聖水" <me>'))
            return true
          end
        end
	end
end)

windower.register_event('prerender',function ()
    if not step and not bflo and not rflo then return end
    
    local player = windower.ffxi.get_player()
    if player and player.status ~= 1 then
        return
    end
    
    if buffactive['睡眠'] or buffactive['石化'] or buffactive['スタン'] or buffactive['魅了'] or buffactive['アムネジア'] or buffactive['テラー'] or buffactive['ララバイ'] or buffactive['インペア'] then
        return
    end
    
    local recast = windower.ffxi.get_ability_recasts()
    local mob = windower.ffxi.get_mob_by_target('t')
    if os.clock() - lastStepCheck > 3 then
        if step and recast[220] == 0 and recast[236] == 0 and player.vitals.tp >= 100 and mob and mob.distance<13 then
            if steploop+1 > #STEPS then
                steploop = 1
            else
                steploop = steploop + 1
            end
            send_command(windower.to_shift_jis('input /ja "'..STEPS[steploop]..'" <t>'))
        end
        lastStepCheck = os.clock()
    end
    if os.clock() - lastBfloCheck > 1 then
        if bflo and recast[222] == 0 and get_FM() > 0 then
            if not buffactive['B.フラリッシュ'] then
                send_command(windower.to_shift_jis('input /ja "B.フラリッシュ" <me>'))
            elseif player.vitals.tp < 499 then--Already have bflo, use rflo
                send_command(windower.to_shift_jis('input /ja "R.フラリッシュ" <me>'))
            end
        elseif rflo and recast[222] == 0 and get_FM() > 0 and player.vitals.tp < 499 then
            send_command(windower.to_shift_jis('input /ja "R.フラリッシュ" <me>'))
        end
        lastBfloCheck = os.clock()
    end
end)

function switchAuto(on)
    step = on
    bflo = step
    -- rflo = step
    cflo = step
    windower.add_to_chat('C.Flour is: '..tostring(cflo))
    windower.add_to_chat('B.Flour is: '..tostring(bflo))
    -- windower.add_to_chat('R.Flour is: '..tostring(rflo))
    windower.add_to_chat('Step is: '..tostring(step))
end

function self_command(command)
    command = command:lower()
    if command == 'pdt' then
        pdt = not pdt
        windower.add_to_chat('PDT- is: '..tostring(pdt))
    elseif command == 'cflo' then
        cflo = not cflo
        windower.add_to_chat('C.Flour is: '..tostring(cflo))
    elseif command == 'bflo' then
        bflo = not bflo
        windower.add_to_chat('B.Flour is: '..tostring(bflo))
    elseif command == 'rflo' then
        rflo = not rflo
        if rflo then
            bflo = false
        end
        windower.add_to_chat('R.Flour is: '..tostring(rflo))
    elseif command == 'step' then
        step = not step
        windower.add_to_chat('Step is: '..tostring(step))
    elseif command == 'lowhaste' then
        lowhaste = not lowhaste
        windower.add_to_chat('Low Haste is: '..tostring(lowhaste))
        
    elseif command == 'all' then
        switchAuto(not step)
    elseif command == 'all1' then
        switchAuto(true)
    elseif command == 'all0' then
        switchAuto(false)
        
    -- elseif command == 'ann' then
        -- announce = not announce
        -- windower.add_to_chat('Announce is: '..tostring(announce))
    elseif command == 'th' then
        th = not th
        windower.add_to_chat('TH is: '..tostring(th))
    elseif command == 'free' then
        mode = ''
    elseif command == 'aby' then
        mode = 'ABY'
        send_command('input //ws dnc_aby')
    elseif command == 'amb' then
        mode = 'AMB'
    elseif command == 'acc' then
        mode = 'ACC'
    elseif command == 'p' then
        mode = 'P'
        send_command('input //ws dnc_p')
    elseif command == 'sw' then
        mode = 'SW'
    else
        windower.add_to_chat('==============================')
        windower.add_to_chat('Mode: '..tostring(mode))
        windower.add_to_chat('Available modes: [aby, amb, acc, p]')
        windower.add_to_chat('PDT: '..tostring(pdt))
        windower.add_to_chat('Step: '..tostring(step))
        windower.add_to_chat('C.Flour: '..tostring(cflo))
        windower.add_to_chat('B.Flour: '..tostring(bflo))
        windower.add_to_chat('R.Flour: '..tostring(rflo))
        windower.add_to_chat('Low Haste: '..tostring(lowhaste))
        windower.add_to_chat('TH: '..tostring(th))
        -- windower.add_to_chat('Announce is: '..tostring(announce))
    end
    
    setIdle()
    updateText()
end