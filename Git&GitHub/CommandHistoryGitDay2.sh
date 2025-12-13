 506  cd gfg-40-class/
  507  clear
  508  ls
  509  mkdir gitprac3
  510  cd gitprac3
  511  code .
  512  git init
  513  touch a.txt
  514  git add .
  515  git commit -m "first commit a.txt"
  516  git log
  517  git remote -v
  518  git log
  519  git branch dev1
  520  git switch dev1
  521  ls
  522  touch b.txt
  523  git add .
  524  git commit -m "first commit by dev1"
  525  git log --oneline
  526  git switch master
  527  touch c.txt
  528  git add .
  529  git commit -m "added c.txt"
  530  git log --oneline
  531  git log --oneline
  532  git merge dev1
  533  git log --oneline
  534  git log
  535  cd ..
  536  mkdir gitprac4
  537  git init
  538  touch a.txt
  539  git add
  540  git status
  541  cd gitprac4
  542  cd ..
  543  ls -l -a
  544  rm -rf .git/
  545  cd gitprac4
  546  git init
  547  touch a.txt
  548  git add .
  549  git commit -m "base commit"
  550  git branch dev1
  551  git switch dev1
  552  touch b.txt
  553  git add .
  554  git commit -m "first by dev1"
  555  git switch master
  556  touch c.txt
  557  git add .
  558  git commit -m "first by master"
  559  git switch dev1
  560  touch d.txt
  561  git add .
  562  git commit -m "second by dev1"
  563  git switch master
  564  touch e.txt
  565  git add .
  566   git commit -m "second by master"
  567  git log --oneline
  568  git switch dev1
  569  git log --oneline
  570  git switch maste
  571  git switch master
  572  ls
  573  git switch dev1
  574  git log --oneline
  575  git rebase master
  576  ls
  577  git log
  578  git switch master
  579  git log --oneline
  580  git merge dev1
  581  git log --oneline
  582  cd ..
  583  mkdir gitprac5
  584  cd gitprac5
  585  git init
  586  touch a.txt
  587  git add .
  588  git commit -m "base"
  589  vi a.txt
  590  git add .
  591  git commit -m "first line added"
  592  git log
  593  vi a.txt
  594  git add .
  595  git commit -m "second update"
  596  vi a.txt
  597  git add .
  598  touch b.txt
  599  git add .
  600  git commit -m "third commit"
  601  git log
  602  ls
  603  git reset HEAD~1
  604  git log
  605  git status
  606  cat a.txt
  607  git add a.txt
  608  git status
  609  git commit -m "third commit updated"
  610  git log
  611  git status
  612  touch c.txt
  613  git add b.txt
  614  git commit -m "added b.txt"
  615  git log
  616  git status
  617  git reset --soft HEAD~1
  618  git log --oneline
  619  git status
  620  git add c.txt
  621  git commit -m "added c.txt and b.txt"
  622  git log --oneline
  623  ls
  624  cat a.txt
  625  git rest --hard HEAD~2
  626  git reset --hard HEAD~2
  627  git log --oneline
  628  ls
  629  ls
  630  cat a.txt
  631  vi a.txt
  632  git add .
  633  git commit -m "added correct third line"
  634  git log --oneline
  635  git revert HEAD
  636  git log --oneline
  637  cat a.txt
  638  git branch dev1
  639  vi a.txt
  640  git add .
  641  git commit -m "added third by master"
  642  git switch dev1
  643  vi a.txt
  644  git add .
  645   git commit -m "added third line by dev1"
  646  git log --oneline
  647  cat a.txt
  648  git switch master
  649  cat a.txt
  650  git merge dev1
  651  git mergetool
  652  git status
  653  git commit -m "fixed conflict"
  654  git log --oneline
  655  cat a.txt
  656  git branch feature/dev2
  657  git branch bug/dev1
  658  git switch bug/dev1
  659  ls
  660  rm -rf a.txt.orig
  661  ls
  662  git status
  663  vi a.txt
  664  git add .
  665  git commit -m "fixed the first bug"
  666  cat a.txt
  667  git switch feature/dev1
  668  git switch feature/dev2
  669  cat a.txt
  670  touch b.txt
  671  vi a.txt
  672  git status
  673  git switch bug/dev1
  674  cat a.txt
  675  git stash list
  676  git stash save "a.txt feature wip"
  677  git status
  678  ls
  679  cat a.txt
  680  git stash list
  681  git stash show stash@{0}
  682  git switch bug/dev1
  683  ls
  684  touch c.txt
  685  vi c.txt
  686  git add .
  687  git commit -m "fixed all the bugs"
  688  git log --oneline
  689  git switch feature/dev2
  690  git status
  691  cat a.txt
  692  git stash list
  693  git stash pop
  694  cat a.txt
  695  git stash list
  696  git stash save "adding back"
  697  git status
  698  git switch master
  699  git log --oneline
  700  cat a.txt
  701  git switch bug/dev2
  702  git switch bug/dev1
  703  git log
  704  git log --oneline
  705  git rebase -i HEAD~3
  706  git log --oneline
  707  git rebase --abort
  708  git rebase -i HEAD~3
  709  git log --oneline
  710  git status
  711  cat a.txt
  712  code .
  713  git status
  714  git add a.txt
  715  git status
  716  git commit "fixed"
  717  git commit -m "fixed"
  718  git rebase --continue
  719  git status
  720  git log --oneline
  721  cat a.txt
  722  git status
  723  git log
  724  git log --oneline
  725  git rebase -i HEAD~3
  726  git log --oneline
  727  cd ..
  728  git clone https://github.com/Trainersudhanshu/linux.git
  729  git clone https://github.com/Trainersudhanshu/linux.git
  730  git clone git@github.com:Trainersudhanshu/linux.git
  731  git reflog
  732  ls
  733  cd gitprac5
  734  git reflog
  735  git log
  736  history
