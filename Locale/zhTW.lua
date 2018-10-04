local AddOnName, _ = ...
local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local L = AceLocale:NewLocale(AddOnName, "zhTW")
if not L then return end
-- zhTW
L["Wind Dungeon Helper"] = "Wind 地城助手"
L["Author"] = "作者"
L["Description"] = "簡介"
L["Wind Dungeon Helper is a combat helper works with several modules.\nIf you want to share the module you write, just pull request on addon github page."] = "Wind 地城助手是一个由模組驱动的戰鬥助手。\n如果你想分享自己所寫的模組可以在 Github 上提交合併請求。"
L["Modules"] = "模組"
L["Enable"] = "開啟"
L["Enables / disables Wind Dungeon Helper"] = "開啟/關閉 Wind 地城助手"
L["Enables / disables the module"] = "開啟/關閉該模組"
L["Wind Dungeon Helper on Github"]= "Wind 地城助手的 Github 頁面"
-- Avoidable Damage
L["Avoidable Damage"] = "可規避傷害"
L["Notifications"] = "提醒"
L["Damage notifications"] = "傷害提醒"
L["Enables / disables damage notifications"] = "開啟/關閉傷害提醒"
L["Messeage Output"] = "信息輸出"
L["Define output channel"] = "設定信息輸出頻道"
L["Chat Frame"] = "聊天框"
L["Party"] = "隊伍"
L["Raid"] = "團隊"
L["Smart"] = "智能"
L["Be compatible with ElitismHelper"] = "兼容使用 ElitismHelper 的玩家"
L["Use 'ElitismHelper' as addon message prefix."] = "使用 ElitismHelper 的唯一通報者判定。"
L["Ranking"] = "排行榜"
L["Enables / disables ranking after dungeon completed."] = "開啟/關閉副本完成後的排行榜。"
L["The worst player"] = "失誤最多玩家"
L["Enables / disables show the worst player in ranking."] = "啟用/關閉排行榜中的失誤最多玩家顯示。"
L["Tips"] = "提示"
L["Player Name"] = "玩家姓名"
L["Spell Link"] = "法術鏈接"
L["Aura Stacks"] = "光環層數"
L["Damage"] = "傷害數值"
L["Percent"] = "百分比"
L["Warning message text"] = "警示文字"
L["Stack message text"] = "層數警示文字"
L["Spell message text"] = "法術警示文字"
L["%name% got hit by %spell%."] = "%name% 被 %spell% 擊中。"
L["%name% got hit by %spell%. %stack% Stacks."] = "%name% 被 %spell% 擊中，層數為 %stack%。"
L["%name% got hit by %spell% for %damage% (%percent%)."] = "%name% 被 %spell% 擊中，傷害為 %damage% (%percent%)。"
L["No failure damage was taken this run."] = "恭喜，本次地城大家都零失誤！"
L["Amount of failure damage:"] = "該躲不躲的傷害排行："
L["Customization"] = "自定義"
L["Defaults"] = "默認"
L["Example"] = "範例"
L["Need improve"] = "需要自我提升"
L["Damage threshold"] = "傷害閾值"
L["If the sum of damage over threshold, WDH will notify you."] = "如果傷害和超過這個閾值，Wind 地城助手將會提醒你。"
L["[WDH] Avoidable damage notifation enabled, glhf!"] = "[Wind 地城助手] 失誤記錄已啟動，祝好運與盡興！"
L["The worst player text"] = "失誤最多文字"
L["Active announcer"] = "當前通告者"
L["General"] = "一般"
L["Minimap icon"] = "小地圖圖標"