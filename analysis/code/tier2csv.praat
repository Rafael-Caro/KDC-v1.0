textgrids = numberOfSelected("TextGrid")

writeInfoLine: textgrids

for textgrid to textgrids
    selectObject (textgrid)

    appendInfoLine: "_____________________________"
    appendInfoLine: selected$("TextGrid") + newline$

    name$ = selected$("TextGrid") + ".csv"

    writeFile(name$, "")
    writeFileLine(name$, "label" + tab$ + "start" + tab$ + "end" + tab$ + "notes")

    n = do("Get number of intervals...", 1)
    for i to n
        ann$ = do$("Get label of interval...", 1, i)
        if ann$ != "" and ann$ != " "
            if startsWith (ann$, " ")
                ann$ = replace$(ann$, " ", "", 1)
            endif
            label$ = left$ (ann$, 3)
            if startsWith (label$, "p")
                label$ = replace$(label$, "p", "P", 1)
            endif
            if length (label$) < 3
                label$ = left$ (label$, 1) + "0" + right$ (label$, 1)
            endif
            end = length (ann$)
            note$ = right$ (ann$, length (ann$)-4)
            if startsWith (note$, newline$)
                note$ = replace$(note$, newline$, "", 1)
            endif
            note$ = replace$(note$, newline$, ". ", 0)
            appendInfoLine: label$
            appendInfoLine: "note: " + note$
            start = do("Get start point...", 1, i)
            end = do("Get end point...", 1, i)
            appendFileLine(name$, label$ + tab$ + string$(start) + tab$ + string$(end) + tab$ + note$)
        endif
    endfor
endfor