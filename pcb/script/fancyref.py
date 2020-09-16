import pcbnew
from kicad_extra import parse_schematic_data

def update_references():
    sch_data = parse_schematic_data("0x42.net", False)[1]
    board = pcbnew.GetBoard()
    for c_ref, fields in sch_data.items():
        if "FancyRef" not in fields:
            continue
        #print(c_ref, fields)
        m = board.FindModuleByReference(c_ref)
        has_fref = False
        # generate FancyRef - f_ref
        c_type = c_ref[:-3]
        row = int(c_ref[-3])
        col = int(c_ref[-2:])
        col_hex = hex(col)[2:].upper()
        f_ref = ''.join([c_type, str(row), col_hex])
#        print(f_ref)
        for gi in m.GraphicalItems():
            if isinstance(gi, pcbnew.TEXTE_MODULE) and gi.GetText() == f_ref:
                # we already have an item with the right text
                has_fref = True
        if has_fref:
            print("- not updated (has f_ref) : ", c_ref)
            continue
        updated_items = []
        if c_ref.startswith('S') or c_ref.startswith('K'):
            # switch
            # only update the %R fields
            for gi in m.GraphicalItems():
                if isinstance(gi, pcbnew.TEXTE_MODULE) and gi.GetText() == "%R":
                    updated_items.append(gi)
                    #gi.SetText(f_ref)
        elif c_ref.startswith('D') or c_ref.startswith('R'):
            # diode or resistor
            updated_items.append(m.Reference())
        else:
            continue # not S, D or R
        for ui in updated_items:
            if ui.IsVisible(): # do not update invisible items
                newRef = pcbnew.TEXTE_MODULE(m)
                newRef.SetText(f_ref)
                newRef.SetPosition(ui.GetPosition())
                newRef.SetHorizJustify(ui.GetHorizJustify())
                newRef.SetTextSize(ui.GetTextSize())
                newRef.SetThickness(ui.GetThickness())
                newRef.SetLayer(ui.GetLayer())
                newRef.SetMirrored(ui.IsMirrored())
                newRef.SetVisible(True)
                m.Add(newRef)
                ui.SetVisible(False)
        print("- updated : ", c_ref)

#    board.Save("0x48_test.kicad_pcb")


