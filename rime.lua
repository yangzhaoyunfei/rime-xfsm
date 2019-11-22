function date_translator(input, seg)
    if (input == "/date") then
       --- Candidate(type, start, end, text, comment)
       yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d日"), "日期"))
    end
    if (input == "/time") then
       --- Candidate(type, start, end, text, comment)
       yield(Candidate("date", seg.start, seg._end, os.date("%H:%M"), "时间"))
    end
 end