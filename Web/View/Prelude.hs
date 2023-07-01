module Web.View.Prelude
( module IHP.ViewPrelude
, module Web.View.Layout
, module Generated.Types
, module Web.Types
, module Application.Helper.View
, wysiwygField
) where

import IHP.ViewPrelude
import Web.View.Layout
import Generated.Types
import Web.Types
import Web.Routes ()
import Application.Helper.View

wysiwygField :: Text -> Text -> Html
wysiwygField fieldName fieldValue = preEscapedToHtml $
    "<textarea id=\"" <> fieldName <> "\" name=\"" <> fieldName <> "\">" <> fieldValue <> "</textarea>" <>
    "<script>ClassicEditor.create( document.querySelector('#" <> fieldName <> "') );</script>"
