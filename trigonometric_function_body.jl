#= https://juliagraphics.github.io/Gtk.jl/latest/manual/signals/ =#
using Gtk
include("tri_functions.jl")

win = GtkWindow("Trigonometric funcion plot Program", 1000, 800)

#b = GtkButton("Click Me")
#push!(win,b)
hbox = GtkBox(:h)  # :h makes a horizontal layout, :v a vertical layout
push!(win, hbox)
cancel = GtkButton("Cancel")
ok = GtkButton("OK")
push!(hbox, cancel)
push!(hbox, ok)
showall(win)
#signal_connect(on_button_clicked, b, "clicked");
#showall(win);
length(hbox)
get_gtk_property(hbox[1], :label, String)
get_gtk_property(hbox[2], :label, String)

set_gtk_property!(hbox,:expand,ok,true)
set_gtk_property!(hbox,:spacing,10)










