local DBEmotes = {
{"^You agree%.$",'Вы соглашаетесь.'},
{"^You agree with (.+)%.$",'Вы соглашаетесь с %s.'},
{"^(.+) agrees%.$",'%s согласно кивает.'},
{"^(.+) agrees with you%.$",'%s соглашается с вами.'},
{"^(.+) agrees with (.+)%.$",'%s соглашается с %s.'},

{"^You are amazed!$",'Вы восхищены!'},
{"^You are amazed by (.+)!$",'Вы восхищены %s!'},
{"^(.+) is amazed!$",'%s в восхищении!'},
{"^(.+) is amazed by you!$",'%s восхищается вами!'},
{"^(.+) is amazed by (.+)!$",'%s восхищается %s!'},

{"^You raise your fist in anger%.$",'Вы в гневе заносите кулак.'},
{"^You raise your fist in anger at (.+)%.$",'Вы в гневе замахиваетесь кулаком на %s.'},
{"^(.+) raises his fist in anger%.$",'%s в гневе заносит кулак.'},
{"^(.+) raises her fist in anger%.$",'%s в гневе заносит кулак.'},
{"^(.+) raises his fist in anger at you%.$",'%s в гневе замахивается на вас кулаком.'},
{"^(.+) raises her fist in anger at you%.$",'%s в гневе замахивается на вас кулаком.'},
{"^(.+) raises his fist in anger at (.+)%.$",'%s в гневе замахивается кулаком на %s.'},
{"^(.+) raises her fist in anger at (.+)%.$",'%s в гневе замахивается на %s.'},

{"^You apologize to everyone%.  Sorry!$",'Вы просите у всех прощения. Извините!'},
{"^You apologize to (.+)%.  Sorry!$",'Вы извиняетесь перед %s. Простите!'},
{"^(.+) apologizes to everyone%.  Sorry!$",'%s просит у всех прощения. Простите!'},
{"^(.+) apologizes to you%.  Sorry!$",'%s извиняется перед вами. Простите!'},
{"^(.+) apologizes to (.+)%.  Sorry!$",'%s извиняется перед %s.'},

{"^You applaud%.  Bravo!$",'Вы аплодируете. Браво!'},
{"^You applaud at (.+)%.  Bravo!$",'Вы рукоплещете %s. Браво!'},
{"^(.+) applauds%.  Bravo!$",'%s хлопает в ладоши. Браво!'},
{"^(.+) applauds at you%.  Bravo!$",'%s рукоплещет вам. Браво!'},
{"^(.+) applauds at (.+)%.  Bravo!$",'%s рукоплещет %s. Браво!'},
}

local hook_ChatFrame_OnEvent = ChatFrame_OnEvent
function ChatFrame_OnEvent(event)
    hook_ChatFrame_OnEvent(event)
    if event == 'CHAT_MSG_TEXT_EMOTE' then
        for i = 1, table.getn(DBEmotes) do
            r = {string.find(arg1, DBEmotes[i][1])}
            if r[1] then
                arg1 = string.format(DBEmotes[i][2], r[3], r[4])
                DEFAULT_CHAT_FRAME:AddMessage(arg1)
                return
            end
        end
    end
end
