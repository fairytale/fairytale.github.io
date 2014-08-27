module Types = struct
  type head_ext_content_fun = [ `Title | Html5_types.head_content_fun ]
end

module M : sig
  val head :
    ?a:Html5_types.head_attrib Html5.M.attrib list ->
    Types.head_ext_content_fun Html5.M.elt Html5.M.list_wrap -> [> Html5_types.head ] Html5.M.elt
end = struct
 let head ?a elts = Html5.M.Unsafe.node ?a "head" elts
end

let h2 txt = Html5.M.(h2 [pcdata txt])
let h3 txt = Html5.M.(h3 [pcdata txt])
let p txt = Html5.M.(p ~a:[a_class ["text"]] [pcdata ("　" ^ txt)])
let q txt = Html5.M.(p ~a:[a_class ["text"; "quote"]] [pcdata ("　" ^ txt)])
let s txt = Html5.M.(p ~a:[a_class ["text"]] [pcdata ("「" ^ txt ^ "」")])
let dager = Html5.M.(div ~a:[a_class ["dager"]] [pcdata "†"])

let pasberth = Html5.M.(a ~a:[a_href "https://twitter.com/pasberth"] [pcdata "pasberth"])
let tyXml = Html5.M.(a ~a:[a_href "http://ocsigen.org/tyxml/"] [pcdata "TyXML"])
let ocaml = Html5.M.(a ~a:[a_href "http://caml.inria.fr/ocaml/"] [pcdata "OCaml"])

let mission =
  Html5.M.
    (p ~a:[a_class ["mission"]]
      [ pcdata "Created by "
      ; pasberth
      ; pcdata " using "
      ; tyXml
      ; pcdata " powered by "
      ; ocaml
      ; pcdata "."])

let make ~title:title_ ~contents ~css_path () =
  let contents = Html5.M.(article ~a:[a_class ["contents"]] contents) in
  let (contents, toc) = Tml.mktoc contents in
  let nav_ = Html5.M.nav ~a:[Html5.M.a_class ["toc"]] [Html5.M.p ~a:[Html5.M.a_class ["toctitle"]] [Html5.M.pcdata "Table of Contents"]; toc] in

  Html5.M.
    (html
      (M.head
        [ meta ~a:[a_charset "UTF-8"] ()
        ; meta ~a:[a_name "viewport"; a_content "width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"] ()
        ; title (pcdata title_)
        ; link ~rel:[`Stylesheet] ~href:css_path ()
        ])
      (body
        [ header [h1 ~a:[a_class ["title"]] [pcdata title_]]
        ; nav_
        ; contents
        ; footer
          [ p ~a:[a_class ["mission"]] [pcdata "You can turn CSS and JavaScript off."]
          ; mission
          ]
        ]))