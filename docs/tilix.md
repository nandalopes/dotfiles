Backup conf:
`dconf dump /com/gexperts/Tilix/ >| current-Tilix.txt`

Restore conf:
`dconf load /com/gexperts/Tilix/  < tracked-Tilix.txt`
