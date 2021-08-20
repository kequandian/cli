#!/bin/bash
usage(){
	cat <<- EOF
	
	Usage: dev-cli -h

 scripts tools:
      remote        -- git tool
      standalone    -- run standalone.jar
      pdf-page      -- handle pdf files
      db-excel      -- export table to excel file
      db-crudless   -- generate crudless.yml from table
      db-diff       -- check database diff
	EOF
	exit
}

usage