
/authors: Dmytro Shytyi
//email: dmytro@shytyi.net
//website: http://shytyi.net
//website: http://dmytro.shytyi.net
//license: BSD
//Please feel free to use and modify this, but keep the above information. Thanks!

//this script solicits data from from google calendar and gives output to console. The output is compatible with conky.
//this script is executed from conky config file presented in this repo.

  1 #!/bin/bash
  2 gcalcli --conky --color --color_date=green --color_owner=white --color_reader=white --color_writer=white --color_now_marker=white --monday  \
  3         --calendar "birthdays"#red      \
  4         --calendar "myAgenda"#white     \
  5         agenda                          |
  6 
  7 sed     -e 's/^[(0\x71^[(B/─/g' \
  8         -e 's/^[(0\x78^[(B/│/g' \
  9         -e 's/^[(0\x6A^[(B/┘/g' \
 10         -e 's/^[(0\x6B^[(B/┐/g' \
 11         -e 's/^[(0\x6C^[(B/┌/g' \
 12         -e 's/^[(0\x6D^[(B/└/g' \
 13         -e 's/^[(0\x6E^[(B/┼/g' \
 14         -e 's/^[(0\x74^[(B/├/g' \
 15         -e 's/^[(0\x75^[(B/┤/g' \
 16         -e 's/^[(0\x76^[(B/┴/g' \
 17         -e 's/^[(0\x77^[(B/┬/g'
