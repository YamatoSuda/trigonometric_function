include("tri_functions.jl")

win = GtkWindow("Trigonometric Funcion Plot Program", 1000, 800) 
#======================================================================================#
#winは多くの引数を持つオブジェクト．引数のことを，"property"と呼ぶ． 
#set_gtk_property!(win, :title, "New title") のように書くことで，propertyの変更が可能．
# example) win = GtkWindow("winの名前", 横サイズ, 縦サイズ)
#======================================================================================#

#=
#= Code1 =#
hbox    = GtkBox(:h)  # :h makes a horizontal layout, :v a vertical layout
push!(win, hbox)
cancel  = GtkButton("Cancel")
ok      = GtkButton("OK")
push!(hbox, cancel)
push!(hbox, ok)
showall(win)
=#
#=========================================================================================#
#Gtkでの構成は，"オブジェクトの作成" -> "winへのpush" という流れでおこなう．
#上記の例では，GtkBox(:h)で横方向の箱を用意し，winにpush,
#cansel,okのボタンを GtkButton("~")で用意し，hboxの中へpush
#というステップをふんでいる．
#=========================================================================================#

#= Code2 =#
hbox   = GtkButtonBox(:h)
ok     = GtkButton("OK")
cancel = GtkButton("Cancel")
push!(win, hbox)
push!(hbox, cancel)
push!(hbox, ok)
showall(win)
#=========================================================================================#
#Code1の例では，okとcancelの箱の大きさがあまりキレイじゃない．
#そこで，GtkButtonBoxが用意されている．これは，文字列の長さに応じて箱の大きさを変えてくれる関数となっている．
#まず，hbox=GtkButtonBox(:h) [:vは垂直方向のbox]で箱を用意し，winにpushする．
#次に，ボタンを用意し，用意したhboxにボタンをpushする．
#=========================================================================================#