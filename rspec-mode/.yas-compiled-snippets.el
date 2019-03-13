;;; Compiled snippets and support files for `rspec-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'rspec-mode
                     '(("subject" "subject(:${1:name}) { $0 }" "subject(:${1:name} { ... })" nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/subject" nil nil)
                       ("sfgs" "subject(:${1:name}) { `(rspec-snippets-fg-method-call \"build_stubbed\")`(:$1) }\n" "subject(:${1:name} { build_stubbed(:$1) })" nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/sfgs" nil nil)
                       ("sfgc" "subject(:${1:name}) { `(rspec-snippets-fg-method-call \"create\")`(:$1) }\n" "subject(:${1:name} { create(:$1) })" nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/sfgc" nil nil)
                       ("sfgb" "subject(:${1:name}) { `(rspec-snippets-fg-method-call \"build\")`(:$1) }\n" "subject(:${1:name} { build(:$1) })" nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/sfgb" nil nil)
                       ("scn" "scenario \"${1:does something}\" do\n  $0\nend\n" "scenario \"does something\" do ... end" nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/scn" nil nil)
                       ("lfgs" "let(:${1:name}) { `(rspec-snippets-fg-method-call \"build_stubbed\")`(:$1) }\n" "let(:${1:name} { build_stubbed(:$1) })" nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/lfgs" nil nil)
                       ("lfgc" "let(:${1:name}) { `(rspec-snippets-fg-method-call \"create\")`(:$1) }\n" "let(:${1:name} { create(:$1) })" nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/lfgc" nil nil)
                       ("lfgb" "let(:${1:name}) { `(rspec-snippets-fg-method-call \"build\")`(:$1) }\n" "let(:${1:name} { build(:$1) })" nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/lfgb" nil nil)
                       ("let" "let(:${1:var}) { $0 }" "let(:var) { ... }" nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/let" nil nil)
                       ("its" "its(:${1:property}) { $0 }\n" "it \"does something\" do ... end" nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/its" nil nil)
                       ("itiexp" "it { is_expected.to $0 }" "it { is_expected.to ... }" nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/itiexp" nil nil)
                       ("it" "it \"${1:does something}\" do\n  $0\nend" "it \"does something\" do ... end" nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/it" nil nil)
                       ("iexp" "is_expected.to $0" "is_expected.to ..." nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/iexp" nil nil)
                       ("helper" "require File.dirname(__FILE__) + '../spec_helper'\n\n$0" "require File.dirname(__FILE__) + '../spec_helper'" nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/helper" nil nil)
                       ("featurem" "feature \"${1:description}\", \"${2:modifier}\" do\n  $0\nend\n" "feature \"description\", \"modifier\" do ... end" nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/featurem" nil nil)
                       ("feature" "feature \"${1:description}\" do\n  $0\nend\n" "feature \"description\" do ... end" nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/feature" nil nil)
                       ("expect2" "expect { $1 }.to $0" "expect { ... }.to ..." nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/expect2" nil nil)
                       ("expect" "expect($1).to $0" "expect(...).to ..." nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/expect" nil nil)
                       ("describem" "describe ${1:`(rspec-class-from-file-name)`}, \"${2:modifier}\" do\n  $0\nend" "describe Class, \"modifier\" do ... end" nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/describem" nil nil)
                       ("describe" "describe `maybe-quote`${1:`(and top-level (rspec-class-from-file-name))`}`maybe-quote` do\n  $0\nend" "describe Class do ... end" nil nil
                        ((top-level
                          (rspec-top-level-desc-p))
                         (maybe-quote
                          (unless top-level "\"")))
                        "/home/hlissner/.config/doom/snippets/rspec-mode/describe" nil nil)
                       ("defm" "RSpec::Matchers.define :${have_something} do\n  match do |${1:subject}|\n    $0\n  end\n\n  failure_message do\n    ${2:'expected something to happen, but it did not'}\n  end\n\n  description do\n    ${3:'have something going for it'}\n  end\nend\n" "RSpec::Matchers.define" nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/defm" nil nil)
                       ("context" "context \"${1:modifier}\" do\n  $0\nend" "context \"modifier\" do ... end" nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/context" nil nil)
                       ("before" "before$1 do\n  $0\nend" "before do ... end" nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/before" nil nil)
                       ("after" "after$1 do\n  $0\nend" "after do ... end" nil nil nil "/home/hlissner/.config/doom/snippets/rspec-mode/after" nil nil)))


;;; Do not edit! File generated at Wed Mar 13 18:35:13 2019
