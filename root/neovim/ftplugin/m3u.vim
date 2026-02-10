" Vim syntax file
" Language:    m3u multimedia list
" Maintainer:  Fauve <fauve.ordinator@taniere.info>
" Last Change: 2020-04-05
" Version:     0.1
" License:     MIT (see https://opensource.org/licenses/MIT)
" Website:     http://taniere.info


if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Header.
syn match m3uHeader /^#\(EXTM3U\|EXTM3A\)$/

" Comments.
syn match m3uComment /^#EXTREM:.*$/ contains=@Spell

" Group name tag
syn match m3uGroupNameTag "^#EXTGRP:"

" Group name
syn match m3uGroupName "\(^#EXTGRP:\s*\)\@<=.*"

" Links
syn match m3uLink /^[^#].*$/

" Informations
syn match m3uInformationsTag /^#EXTINF:/
syn match m3uInformationsRuntime "\(^#EXTINF:\s*\)\@<=[0-9]*"
syn match m3uInformationsTitle "\(^#EXTINF:\s*[0-9]*,\s*\)\@<=.*"

" Titles
syn match m3uTitles /^#\(PLAYLIST\|EXTALB\|EXTGENRE\):/

" Titles Identifiers
syn match m3uTitlesIdentifiers "\(^#\(PLAYLIST\|EXTALB\|EXTGENRE\):\s*\)\@<=.*"

" Uniq album file
syn match m3uUniqAlbumFile /^#\(EXTBYT\|EXTBIN\|EXTENC\|EXTIMG\):/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

highlight default link m3uComment             Comment
highlight default link m3uHeader              Comment
highlight default link m3uLink                String
highlight default link m3uInformationsRuntime Number
highlight default link m3uInformationsTag     Define
highlight default link m3uInformationsTitle   Identifier
highlight default link m3uTitles              Define
highlight default link m3uTitlesIdentifiers   Identifier
highlight default link m3uUniqAlbumFile       Define
highlight default link m3uGroupNameTag        Keyword
highlight default link m3uGroupName           Identifier

let b:current_syntax = "m3u"
