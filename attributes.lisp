;; See http://www.graphviz.org/doc/info/attrs.html

(in-package cl-dot)

(defparameter *graph-attributes*
  '((:compound boolean)
    (:label label-text)
    (:size text)
    (:page text)
    (:ratio (:fill :compress :auto)) ;; Could actually be a float number too
    (:margin float)
    (:nodesep float)
    (:node attribute)
    (:edge attribute)
    (:ranksep float)
    (:ordering (:out))
    (:rankdir ("LR" "RL" "BT" "TB"))
    (:dir ("forward" "none"))
    (:pagedir text)
    (:layout text) ;; neato, twopi, etc.
    (:rank (:same :min :max))
    (:rotate integer)
    (:center integer)
    (:nslimit float)
    (:mclimit float)
    (:layers text)
    (:fontsize integer)
    (:fontname text)
    (:color text)
    (:bgcolor text)
    (:url text)
    (:target text)
    (:stylesheet text)
    (:splines text)))

(defparameter *node-shapes*
  '(:box :polygon :ellipse :oval
    :circle :point :egg :triangle
    :plaintext :plain :diamond :trapezium
    :parallelogram :house :pentagon :hexagon
    :septagon :octagon :doublecircle :doubleoctagon
    :tripleoctagon :invtriangle :invtrapezium :infhouse
    :Mdiamond :Msquare :Mcircle :rect
    :rectangle :square :star :none
    :underline :cylinder :note :tab
    :folder :box3d :component :promoter
    :cds :terminator :utr :primersite
    :restrictionsite :fivepoverhang :threepoverhang :noverhang
    :assembly :signature :insulator :ribosite
    :rnastab :proteasesite :proteinstab :rpromoter
    :rarrow :larrow :lpromoter :record))

(defparameter *node-attributes*
  `((:height float)
    (:width float)
    (:fixed-size boolean)
    (:label label-text)
    (:shape ,*node-shapes*)
    (:fontsize integer)
    (:fontname text)
    (:color text)
    (:fillcolor text)
    (:style (:filled :solid :dashed :dotted :bold :invis))
    (:layer text)
    (:url text)
    (:target text)
    (:tooltip text)
    (:id text)))

(defparameter *predefined-arrow-shapes*
  '(:normal :inv :dot :invdot :odot :invodot :none :tee :empty
    :invempty :diamond :odiamond :ediamond :crow :box :obox :open
    :halfopen :vee :circle)
  "See http://www.graphviz.org/doc/info/attrs.html#k:arrowType.")

(defparameter *edge-attributes*
  `((:minlen integer)
    (:weight integer)
    (:label label-text)
    (:fontsize integer)
    (:fontname text)
    (:fontcolor text)
    (:style (:solid :dashed :dotted :bold :invis))
    (:color text)
    (:dir (:forward :back :both :none))
    (:tailclip boolean)
    (:headclip boolean)
    (:arrowhead ,*predefined-arrow-shapes*)
    (:arrowtail ,*predefined-arrow-shapes*)
    (:headlabel label-text)
    (:taillabel label-text)
    (:ltail text)
    (:lhead text)
    (:labelfontsize integer)
    (:labelfontname text)
    (:labelfontcolor text)
    (:labeldistance integer)
    (:port-label-distance integer)
    (:decorate boolean)
    (:samehead boolean)
    (:sametail boolean)
    (:constraint boolean)
    (:layer text)
    (:url text)
    (:target text)
    (:tooltip text)))
