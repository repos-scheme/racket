#lang scribble/doc

@(require (for-label framework scheme/gui))
@(require scribble/manual)

@title{@bold{Framework}: PLT GUI Application Framework}
@(defmodule framework)

@author["Robert Bruce Findler" "Matthew Flatt"]

The framework provides a number of mixins, classes and
functions designed to help you build a complete application
program on top of the @scheme[scheme/gui] library.

@itemize[
@item{@bold{Entire Framework}

@itemize[

@item{@scheme[(require @#,schememodname[framework])]

  This library provides all of the definitions and syntax
  described in this manual.
}
@item{@scheme[(require framework/framework-sig)]
  
  This library provides the signature definitions:
  @scheme[framework^], and
  @scheme[framework-class^].
  The @scheme[framework^] signature contains all of the 
  names of the procedures described in this manual, except
  those that begin with @scheme[test:] and
  @scheme[gui-utils:]. The @scheme[framework-class^]
  signature contains all of the classes defined in this
  manual.
}
@item{@scheme[(require framework/framework-unit)]

  This library provides one
  @scheme[unit/sig]: @scheme[framework@]. It exports the signature
  @scheme[framework^]. It imports the @scheme[mred^] signature.

}
]}
@item{
 @bold{Test Suite Engine}

@scheme[(require @#,schememodname[framework/test])]

This library provides all of the definitions beginning with
@scheme[test:] described in this manual.
}
@item{ @bold{GUI Utilities}
@scheme[(require @#,schememodname[framework/gui-utils])]
    
    This libraries provides all of the definitions beginning
    with @scheme[gui-utils:] described in this manual.
}
@item{ @bold{Preferences}
@scheme[(require @#,schememodname[framework/preferences])]
    
  This library provides a subset of the names of the
  @tt{framework.ss} library, namely those for
  manipulating preference settings and is designed to be
  used from mzscheme.

The precise set of exported names is:
@scheme[preferences:snapshot?],
@scheme[preferences:restore-prefs-snapshot],
@scheme[preferences:get-prefs-snapshot],
@scheme[exn:make-unknown-preference],
@scheme[exn:unknown-preference?],
@scheme[preferences:low-level-put-preferences],
@scheme[preferences:get],
@scheme[preferences:set],
@scheme[preferences:add-callback],
@scheme[preferences:set-default],
@scheme[preferences:set-un/marshall], and
@scheme[preferences:restore-defaults].
}
@item{@bold{Decorated Editor Snip}
@scheme[(require framework/decorated-editor-snip)]

This library is here for backwards compatibility. The
functionality in it has moved into the framework proper, in
the @secref["editor-snip"] section.
}
]

@bold{Thanks}

Thanks to Shriram Krishnamurthi, Cormac Flanagan, Matthias
Felleisen, Ian Barland, Gann Bierner, Richard Cobbe, Dan
Grossman, Stephanie Weirich, Paul Steckler, Sebastian Good,
Johnathan Franklin, Mark Krentel, Corky Cartwright, Michael
Ernst, Kennis Koldewyn, Bruce Duba, and many others for
their feedback and help.

@include-section["application.scrbl"]
@include-section["autosave.scrbl"]
@include-section["canvas.scrbl"]
@include-section["color-model.scrbl"]
@include-section["color-prefs.scrbl"]
@include-section["color.scrbl"]
@include-section["comment-box.scrbl"]
@include-section["editor-snip.scrbl"]
@include-section["editor.scrbl"]
@include-section["exit.scrbl"]
@include-section["finder.scrbl"]
@include-section["frame.scrbl"]
@include-section["group.scrbl"]
@include-section["gui-utils.scrbl"]
@include-section["handler.scrbl"]
@include-section["icon.scrbl"]
@include-section["keymap.scrbl"]
@include-section["menu.scrbl"]
@include-section["mode.scrbl"]
@include-section["number-snip.scrbl"]
@include-section["panel.scrbl"]
@include-section["pasteboard.scrbl"]
@include-section["path-utils.scrbl"]
@include-section["preferences.scrbl"]
@include-section["preferences-text.scrbl"]
@include-section["scheme.scrbl"]
@include-section["text.scrbl"]
@include-section["test.scrbl"]
@include-section["version.scrbl"]

@index-section[]
