{-# LANGUAGE TemplateHaskell #-}

module Application.Assets where

import Data.FileEmbed (embedFile, embedDir)
import qualified Data.ByteString as BS


semanticJs :: BS.ByteString
semanticJs = $(embedFile "bower_components/semantic/dist/semantic.min.js")

semanticCss :: BS.ByteString
semanticCss = $(embedFile "bower_components/semantic/dist/semantic.min.css")

semanticIcons :: [(FilePath, BS.ByteString)]
semanticIcons = $(embedDir "bower_components/semantic/dist/themes/default/assets/fonts/")

jquery :: BS.ByteString
jquery = $(embedFile "bower_components/jquery/dist/jquery.min.js")

app :: BS.ByteString
app = $(embedFile "monerodo-frontend/dist/Main.min.js")
