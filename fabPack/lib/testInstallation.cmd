:Main
  Cls
  Echo.
  Echo ----------------------------------------------------------
  Echo  fabPack - (1) Check installation    
  Echo ----------------------------------------------------------
  Echo  Computer?
  Echo ----------------------------------------------------------
  Echo Path:      %Path%
  Echo.
  Echo ----------------------------------------------------------
  Echo PathExt:   %PATHEXT%
  Echo.
  Echo ----------------------------------------------------------
  Echo  Git?
  Echo ----------------------------------------------------------
  git --version
  Echo.
  Echo ----------------------------------------------------------
  Echo  Ant?
  Echo ----------------------------------------------------------
  Call ant -version
  Echo.
  Echo Ant_Home:  %Ant_Home%
  Echo.
  Echo ----------------------------------------------------------
  Echo  Java?
  Echo ----------------------------------------------------------
  java -version
  Echo.
  Echo ----------------------------------------------------------
  Echo.

  Rem End of function
  Pause

