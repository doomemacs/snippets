;;; Compiled snippets and support files for `cpp-omnet-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'cpp-omnet-mode
                     '(("uni" "uniform(${1:0}, ${2:1})" "uniform" nil nil nil "/home/hlissner/.config/doom/snippets/cpp-omnet-mode/uniform" nil nil)
                       ("sched" "scheduleAt(simTime()+${1:1.0}, ${2:event});" "scheduleAt" nil nil nil "/home/hlissner/.config/doom/snippets/cpp-omnet-mode/scheduleAt" nil nil)
                       ("par" "${1:var} = par(\"${2:par}\");" "parameter_omnetpp" nil nil nil "/home/hlissner/.config/doom/snippets/cpp-omnet-mode/parameter_omnetpp" nil nil)
                       ("omnet" "#include <omnetpp.h>" "omnet" nil nil nil "/home/hlissner/.config/doom/snippets/cpp-omnet-mode/omnet" nil nil)
                       ("nan" "isnan(${1:x})" "nan" nil nil nil "/home/hlissner/.config/doom/snippets/cpp-omnet-mode/nan" nil nil)
                       ("math" "#include <cmath>" "math" nil nil nil "/home/hlissner/.config/doom/snippets/cpp-omnet-mode/math" nil nil)
                       ("intuni" "intuniform(${1:0}, ${2:1})" "intuniform" nil nil nil "/home/hlissner/.config/doom/snippets/cpp-omnet-mode/intuniform" nil nil)
                       ("emit" "emit(${1:signal_id}, ${2:long});" "emit_signal" nil nil nil "/home/hlissner/.config/doom/snippets/cpp-omnet-mode/emit_signal" nil nil)
                       ("ev" "EV << \"${1:string}\"$0;" "EV" nil nil nil "/home/hlissner/.config/doom/snippets/cpp-omnet-mode/EV" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:12 2019
