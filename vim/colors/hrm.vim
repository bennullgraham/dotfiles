highlight clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = ''

hi Normal             ctermfg=254 ctermbg=0    cterm=none
hi SignColumn         ctermfg=NONE ctermbg=0    cterm=NONE
hi SpecialKey         term=bold ctermfg=4
hi NonText            term=bold ctermfg=230 ctermbg=NONE
hi Directory          term=bold ctermfg=64
hi ErrorMsg           term=standout ctermfg=16 ctermbg=9
hi IncSearch          term=reverse ctermfg=255 ctermbg=25
hi Search             term=reverse ctermbg=11
hi MoreMsg            term=bold ctermfg=230
hi ModeMsg            term=bold ctermfg=230
hi LineNr             term=underline cterm=bold ctermfg=8 ctermbg=235
hi CursorLineNr       term=bold ctermfg=3
hi Question           term=standout ctermfg=194
hi StatusLine         term=bold,reverse cterm=bold ctermfg=15 ctermbg=8
hi StatusLineNC       term=reverse ctermfg=7 ctermbg=0
hi VertSplit          term=reverse ctermfg=7 ctermbg=0
hi Title              term=bold cterm=bold ctermfg=255 ctermbg=60
hi Visual             term=reverse ctermbg=236
hi WarningMsg         term=standout ctermfg=16 ctermbg=9
hi WildMenu           term=standout ctermfg=0 ctermbg=11
hi Folded             term=standout ctermfg=4 ctermbg=7
hi FoldColumn         term=standout ctermfg=4 ctermbg=7
hi DiffAdd            term=reverse cterm=bold ctermfg=16 ctermbg=10
hi DiffChange         term=reverse cterm=bold ctermfg=16 ctermbg=12
hi DiffDelete         term=reverse cterm=bold ctermfg=16 ctermbg=9
hi DiffText           term=reverse cterm=bold ctermfg=16 ctermbg=7
hi SignColumn         term=standout ctermfg=4 ctermbg=7
hi Conceal            ctermfg=7 ctermbg=8
hi SpellBad           term=reverse ctermfg=16 ctermbg=160
hi SpellCap           term=reverse ctermbg=12
hi SpellRare          term=reverse ctermbg=13
hi SpellLocal         term=underline ctermbg=14
hi Pmenu              ctermfg=0 ctermbg=13
hi PmenuSel           ctermfg=16 ctermbg=156
hi PmenuSbar          ctermbg=7
hi PmenuThumb         ctermbg=0
hi TabLine            term=underline cterm=underline ctermfg=0 ctermbg=7
hi TabLineSel         term=bold cterm=bold
hi TabLineFill        term=reverse cterm=reverse
hi CursorColumn       term=reverse ctermbg=7
hi CursorLine         term=underline cterm=underline ctermbg=234
hi ColorColumn        term=reverse ctermbg=9
hi MatchParen         term=reverse ctermbg=14
hi Comment            term=bold ctermfg=8
hi Constant           term=underline cterm=bold ctermfg=255
hi Special            term=bold cterm=bold ctermfg=153
hi Identifier         term=underline ctermfg=223
hi Statement          term=bold cterm=bold ctermfg=230
hi PreProc            term=underline cterm=bold ctermfg=222
hi Type               term=underline cterm=bold ctermfg=193
hi Underlined         term=underline cterm=underline ctermfg=5
hi Ignore             ctermfg=196 ctermbg=60
hi Error              term=reverse ctermfg=16 ctermbg=9
hi Todo               term=standout ctermfg=0 ctermbg=11
hi String             ctermfg=230
hi Character          cterm=bold ctermfg=230
hi Number             cterm=bold ctermfg=153
hi Boolean            ctermfg=207
hi Float              cterm=bold ctermfg=153
hi Function           ctermfg=11
hi Conditional        cterm=bold ctermfg=149
hi Repeat             cterm=bold ctermfg=208
hi Label              cterm=bold ctermfg=225
hi Operator           ctermfg=12
hi Keyword            cterm=bold ctermfg=86
hi Exception          cterm=bold ctermfg=86
hi Include            cterm=bold ctermfg=114
hi Define             cterm=bold ctermfg=68
hi Macro              cterm=bold ctermfg=114
hi PreCondit          cterm=bold ctermfg=114
hi StorageClass       cterm=bold ctermfg=78
hi Structure          cterm=bold ctermfg=114
hi Typedef            cterm=bold ctermfg=114
hi Tag                cterm=bold ctermfg=153
hi SpecialChar        cterm=bold ctermfg=153
hi Delimiter          cterm=bold ctermfg=255
hi SpecialComment     cterm=bold ctermfg=253 ctermbg=24
hi Debug              ctermfg=210
hi Normal             ctermfg=255 ctermbg=233
hi link pythonParameters     Identifier
hi link pythonClassParameters     InheritUnderlined
hi link pythonClass        Normal
hi link pythonInclude      Operator
hi link pythonStatement     Structure
hi link pythonConditional     Conditional
hi link pythonException     Exception
hi link pythonNumber       Number
hi link GPGWarning         WarningMsg
hi link GPGError           ErrorMsg
hi link GPGHighlightUnknownRecipient     ErrorMsg
hi link SyntasticStyleErrorSign     SyntasticErrorSign
hi link SyntasticStyleWarningSign     SyntasticWarningSign
hi link SyntasticStyleErrorLine     SyntasticErrorLine
hi link SyntasticStyleWarningLine     SyntasticWarningLine
hi link SyntasticError     SpellBad
hi link SyntasticWarning     SpellCap
hi link uniteQuickMatchTrigger     Special
hi link uniteCandidateSourceName     Type
hi link uniteCandidateAbbr     Normal
hi link uniteInputCommand     Statement
hi link uniteError         Error
hi link uniteMarkedLine     Statement
hi link uniteCandidateMarker     Special
hi link uniteCandidateInputKeyword     Function
hi link uniteChooseKey     SpecialKey
hi link uniteChoosePrompt     uniteSourcePrompt
hi link uniteChooseSource     uniteSourceNames
hi link uniteInputPrompt     Identifier
hi link uniteInputPromptError     Error
hi link pythonConstant     Constant
hi link pythonFunction     Function
hi link pythonRepeat       Repeat
hi link pythonExtraOperator     Operator
hi link pythonExtraPseudoOperator     Operator
hi link pythonDecorator     Define
hi link pythonParam        Normal
hi link pythonBrackets     Normal
hi link pythonBuiltin      Builtin
hi link pythonString       String
hi link pythonTodo         Todo
hi link pythonComment      Comment
hi link pythonEscape       Special
hi pythonSpaceError     ctermbg=9
hi link pythonDoctest      Special
hi link pythonRawString     String
hi link pythonExceptions     Structure
hi link pythonDoctestValue     Define
hi GitGutterAddDefault     ctermfg=2
hi GitGutterChangeDefault     ctermfg=3
hi GitGutterDeleteDefault     ctermfg=1
hi link GitGutterChangeDeleteDefault     GitGutterChangeDefault
hi link GitGutterChangeDelete     GitGutterChangeDeleteDefault
hi link GitGutterAddLine     DiffAdd
hi link GitGutterChangeLine     DiffChange
hi link GitGutterDeleteLine     DiffDelete
hi link GitGutterChangeDeleteLine     GitGutterChangeLineDefault
hi Cursor             cterm=bold ctermfg=255 ctermbg=167
hi link phpFunctions       Function
hi link phpSuperglobal     Identifier
hi link phpQuoteSingle     StringDelimiter
hi link phpQuoteDouble     StringDelimiter
hi link phpBoolean         Constant
hi link phpNull            Constant
hi link phpArrayPair       Operator
hi link rubySharpBang      Comment
hi link rubyFunction       Function
hi link rubyInstanceVariable     Number
hi link rubyGlobalVariable     rubyInstanceVariable
hi link rubyModule         rubyClass
hi link rubyString         String
hi link rubyRegexpDelimiter     rubyRegexp
hi link javaScriptValue     Constant
hi link javaScriptRegexpString     Regexp
hi link coffeeRegExp       javaScriptRegexpString
hi link luaOperator        Conditional
hi link cOperator          Constant
hi link objcClass          Type
hi link cocoaClass         objcClass
hi link objcSubclass       objcClass
hi link objcSuperclass     objcClass
hi link objcDirective      rubyClass
hi link objcStatement      Constant
hi link cocoaFunction      Function
hi link objcMethodName     Identifier
hi link objcMethodArg      Normal
hi link objcMessageName     Identifier
hi link TagListFileName     Directory
hi link rubyLocalVariableOrMethod     Identifier
hi link htmlTagName        htmlStatement
hi link htmlTag            Function
hi link htmlArg            Type
hi htmlH1             cterm=bold ctermfg=255
hi htmlBold           term=bold cterm=bold
hi htmlItalic         term=italic cterm=italic
hi htmlUnderline      term=underline cterm=underline
hi htmlBoldItalic     term=bold,italic cterm=bold,italic
hi htmlBoldUnderline     term=bold,underline cterm=bold,underline
hi htmlUnderlineItalic     term=underline,italic cterm=underline,italic
hi htmlBoldUnderlineItalic     term=bold,underline,italic cterm=bold,underline,italic
hi link htmlLink           Underlined
hi link xmlString          xmlTagName
hi link xmlAttrib          xmlTag
hi link xmlEndTag          xmlTag
hi link xmlEqual           xmlTag
hi link phpVarSelector     phpIdentifier
hi link phpHereDoc         String
hi link phpDefine          Statement
hi link markdownHeadingRule     NonText
hi link markdownLinkDelimiter     Delimiter
hi link markdownURLDelimiter     Delimiter
hi link markdownCodeDelimiter     NonText
hi link markdownLinkTextDelimiter     markdownLinkDelimiter
hi link markdownUrl        markdownLinkText
hi link markdownAutomaticLink     markdownLinkText
hi link rubyDefine         Keyword
hi link gitCommitFile      Directory
hi link gitCommitUntrackedFile     gitCommitUnmergedFile
hi link gitCommitDiscardedType     gitCommitUnmergedType
hi link gitCommitDiscardedFile     gitCommitUnmergedFile
hi link vimSetSep          Delimiter
hi link vimContinue        Delimiter
hi link vimHiAttrib        Constant
hi link lessVariableValue     Normal
hi link NERDTreeHelp       Comment
hi link VimwikiHeaderChar     markdownHeadingDelimiter
hi link VimwikiList        markdownListMarker
hi link VimwikiCode        markdownCode
hi link VimwikiCodeChar     markdownCodeDelimiter
hi link helpExample        String
hi link helpHeadline       Title
hi link helpSectionDelim     Comment
hi link helpHyperTextEntry     Statement
hi link helpHyperTextJump     Underlined
hi link helpURL            Underlined
hi link CtrlPMatch         String
hi link CtrlPLinePre       Comment
hi link shDerefVar         shDerefSimple
hi cursorim           cterm=bold ctermfg=255 ctermbg=167
hi link railsMethod        PreProc
hi link rubyAccess         rubyMethod
hi link rubyEval           rubyMethod
hi link rubyException      rubyMethod
hi link rubyInclude        rubyMethod
hi link javascriptNull     Constant
hi link projectDescription     projectText
hi link projectWhiteError     projectError
hi link projectDescriptionDir     projectText
hi link projectDirectory     projectText
hi link projectScriptinout     projectText
hi link projectComment     projectText
hi link projectCD          projectText
hi link projectFilterError     projectError
hi link projectFilter      projectText
hi link projectFilterRegexp     projectText
hi link projectFilterEntry     projectText
hi link projectFlags       projectText
hi link projectFlagsEntry     projectText
hi link projectFlagsValues     projectText
hi link projectFlagsError     projectError
hi link NERDTreeUp         NERDTree
hi link NERDTreeClosable     NERDTree
hi link NERDTreeOpenable     NERDTree
hi link NERDTreePart       NERDTree
hi link NERDTreePartFile     NERDTree
hi link NERDTreeHelpKey     NERDTree
hi link NERDTreeHelpTitle     Type
hi link NERDTreeHelpCommand     String
hi link NERDTreeFile       Normal
hi link NERDTreeCWD        Constant
hi link bufExplorerSortBy     Comment
hi link bufExplorerMapping     String
hi link bufExplorerTitle     String
hi link bufExplorerSortType     bufExplorerSortBy
hi link bufExplorerToggleSplit     bufExplorerSplit
hi link bufExplorerSplit     NonText
hi link bufExplorerToggleOpen     bufExplorerOpenIn
hi link bufExplorerOpenIn     Normal
hi link bufExplorerHelp     Comment
hi link bufExplorerBufNbr     Number
hi link bufExplorerModBuf     Exception
hi link bufExplorerLockedBuf     Special
hi link bufExplorerHidBuf     Constant
hi link bufExplorerActBuf     Identifier
hi link bufExplorerCurBuf     Type
hi link bufExplorerAltBuf     String
hi link bufExplorerUnlBuf     Comment
hi link cssBraces          Function
hi link cssClassName       Function
hi link cssColor           Constant
hi link htmlStatement      Statement
hi Linear             ctermfg=248
hi htmlH2             cterm=bold ctermfg=253
hi htmlH3             cterm=bold ctermfg=251
hi htmlH4             cterm=bold ctermfg=249
hi htmlH5             cterm=bold ctermfg=247
hi htmlH6             cterm=bold ctermfg=245
hi link htmlError          Error
hi link htmlSpecialChar     Special
hi link javaScriptExpression     javaScript
hi link htmlString         String
hi link htmlValue          String
hi link htmlTagError       htmlError
hi link htmlEvent          javaScript
hi link htmlCssDefinition     Special
hi link htmlSpecialTagName     Exception
hi link htmlCommentPart     Comment
hi link htmlCommentError     htmlError
hi link htmlComment        Comment
hi link htmlPreStmt        PreProc
hi link htmlPreError       Error
hi link htmlPreAttr        String
hi link htmlPreProc        PreProc
hi link htmlPreProcAttrError     Error
hi link htmlPreProcAttrName     PreProc
hi link htmlBoldItalicUnderline     htmlBoldUnderlineItalic
hi link htmlUnderlineBold     htmlBoldUnderline
hi link htmlUnderlineBoldItalic     htmlBoldUnderlineItalic
hi link htmlUnderlineItalicBold     htmlBoldUnderlineItalic
hi link htmlItalicBold     htmlBoldItalic
hi link htmlItalicUnderline     htmlUnderlineItalic
hi link htmlItalicBoldUnderline     htmlBoldUnderlineItalic
hi link htmlItalicUnderlineBold     htmlBoldUnderlineItalic
hi link htmlLeadingSpace     NONE
hi link htmlTitle          Title
hi link htmlHead           PreProc
hi link jsNoise            Noise
hi link jsStorageClass     StorageClass
hi link jsOperator         Operator
hi link jsBooleanTrue      Boolean
hi link jsBooleanFalse     Boolean
hi link jsCommentTodo      Todo
hi link jsLineComment      Comment
hi link jsEnvComment       PreProc
hi link jsCvsTag           Function
hi link jsComment          Comment
hi link jsDocTags          Special
hi link jsDocComment       Comment
hi link jsDocParam         Label
hi link jsDocType          Type
hi link jsDocTypeNoParam     Type
hi link jsDocSeeTag        Function
hi link jsSpecial          Special
hi link jsStringD          String
hi link jsStringS          String
hi link jsRegexpCharClass     Character
hi link jsRegexpBoundary     SpecialChar
hi link jsRegexpBackRef     SpecialChar
hi link jsRegexpQuantifier     SpecialChar
hi link jsRegexpOr         Conditional
hi link jsRegexpMod        SpecialChar
hi link jsRegexpGroup      jsRegexpString
hi link jsRegexpString     String
hi link jsNumber           Number
hi link jsFloat            Float
hi link jsPrototype        Special
hi link jsNull             Type
hi link jsThis             Special
hi link jsReturn           Statement
hi link jsUndefined        Type
hi link jsNan              Number
hi link jsStatement        Statement
hi link jsConditional      Conditional
hi link jsRepeat           Repeat
hi link jsLabel            Label
hi link jsKeyword          Keyword
hi link jsException        Exception
hi link jsGlobalObjects     Special
hi link jsExceptions       Special
hi link jsBuiltins         Special
hi link jsFutureKeys       Special
hi link jsDomErrNo         Constant
hi link jsDomNodeConsts     Constant
hi link jsHtmlEvents       Special
hi link jsCssStyles        Label
hi link jsDomElemAttrs     Label
hi link jsDomElemFuncs     PreProc
hi link jsHtmlElemAttrs     Label
hi link jsHtmlElemFuncs     PreProc
hi link jsFunction         Type
hi link jsBrackets         Noise
hi link jsParensErrB       Error
hi link jsParensErrC       Error
hi link jsParens           Noise
hi link jsParensErrA       Error
hi link jsBraces           Noise
hi link jsFuncBraces       Noise
hi link jsTernaryIfOperator     Conditional
hi link jsParensError      Error
hi link jsFuncName         Function
hi link jsFuncParens       Noise
hi link jsArgsObj          Special
hi link jsCharacter        Character
hi link jsBranch           Conditional
hi link jsError            Error
hi link htmlCssStyleComment     Comment
hi link htmlScriptTag      htmlTag
hi link htmlEventSQ        htmlEvent
hi link htmlEventDQ        htmlEvent
hi link vbConditional      Conditional
hi link vbOperator         Operator
hi link vbBoolean          Boolean
hi link vbConst            Constant
hi link vbRepeat           Repeat
hi link vbEvents           Special
hi link vbFunction         Identifier
hi link vbMethods          PreProc
hi link vbStatement        Statement
hi link vbKeyword          Statement
hi link vbTodo             Todo
hi link vbTypes            Type
hi link vbDefine           Constant
hi link vbNumber           Number
hi link vbFloat            Float
hi link vbString           String
hi link vbComment          Comment
hi link vbLineNumber       Comment
hi link vbTypeSpecifier     Type
hi link vbError            Error
hi link vbIdentifier       Identifier
hi link cssTagName         Statement
hi link cssDeprecated      Error
hi link cssSelectorOp      Special
hi link cssSelectorOp2     Special
hi link cssUnicodeEscape     Special
hi link cssStringQ         String
hi link cssStringQQ        String
hi link cssIdentifier      Function
hi link cssMediaType       Special
hi link cssMedia           Special
hi link cssMediaComma      Normal
hi link cssError           Error
hi link cssComment         Comment
hi link cssURL             String
hi link cssValueInteger     Number
hi link cssValueNumber     Number
hi link cssValueLength     Number
hi link cssValueAngle      Number
hi link cssValueTime       Number
hi link cssValueFrequency     Number
hi link cssFontDescriptor     Special
hi link cssFontProp        StorageClass
hi link cssFontAttr        Type
hi link cssCommonAttr      Type
hi link cssFontDescriptorProp     StorageClass
hi link cssFontDescriptorFunction     Constant
hi link cssUnicodeRange     Constant
hi link cssFontDescriptorAttr     Type
hi link cssFunctionName     Function
hi link cssImportant       Special
hi link cssFunction        Constant
hi link cssAnimationProp     StorageClass
hi link cssAnimationAttr     Type
hi link cssBackgroundProp     StorageClass
hi link cssBackgroundAttr     Type
hi link cssBorderOutlineProp     StorageClass
hi link cssBorderOutlineAttr     Type
hi link cssBoxProp         StorageClass
hi link cssBoxAttr         Type
hi link cssColorProp       StorageClass
hi link cssDimensionProp     StorageClass
hi link cssFlexibleBoxProp     StorageClass
hi link cssFlexibleBoxAttr     Type
hi link cssGeneratedContentProp     StorageClass
hi link cssGeneratedContentAttr     Type
hi link cssGridProp        StorageClass
hi link cssHyerlinkProp     StorageClass
hi link cssListProp        StorageClass
hi link cssListAttr        Type
hi link cssMarginProp      StorageClass
hi link cssMultiColumnProp     StorageClass
hi link cssPaddingProp     StorageClass
hi link cssPositioningProp     StorageClass
hi link cssPositioningAttr     Type
hi link cssPrintProp       StorageClass
hi link cssPrintAttr       Type
hi link cssTableProp       StorageClass
hi link cssTableAttr       Type
hi link cssTextProp        StorageClass
hi link cssTextAttr        Type
hi link cssTransformProp     StorageClass
hi link cssTransitionProp     StorageClass
hi link cssUIProp          StorageClass
hi link cssUIAttr          Type
hi link cssAuralProp       StorageClass
hi link cssAuralAttr       Type
hi link cssRenderAttr      Type
hi link cssRenderProp      StorageClass
hi link cssInclude         Include
hi link cssVendor          Comment
hi link cssBraceError      Error
hi link cssPseudoClassId     PreProc
hi link cssContentForPagedMediaProp     StorageClass
hi link cssLineboxProp     StorageClass
hi link cssMarqueeProp     StorageClass
hi link cssPagedMediaProp     StorageClass
hi link cssRubyProp        StorageClass
hi link cssSpeechProp      StorageClass
hi link cssColorAttr       Type
hi link cssContentForPagedMediaAttr     Type
hi link cssDimensionAttr     Type
hi link cssGridAttr        Type
hi link cssHyerlinkAttr     Type
hi link cssLineboxAttr     Type
hi link cssMarginAttr      Type
hi link cssMarqueeAttr     Type
hi link cssMultiColumnAttr     Type
hi link cssPaddingAttr     Type
hi link cssPagedMediaAttr     Type
hi link cssRubyAttr        Type
hi link cssSpeechAttr      Type
hi link cssTransformAttr     Type
hi link cssTransitionAttr     Type
hi link cssPseudoClassLang     Constant
hi link htmlStyleArg       htmlString
hi link htmlSpecial        Special