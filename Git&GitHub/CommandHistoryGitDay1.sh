506  mkdir gfg-40-class
  507  cd gfg-40-class/
  508  clear
  509  ls
  510  pwd
  511  mkdir gitday1
  512  cd gitday1/
  513  ls
  514  pwd
  515  git init
  516  ls
  517  ls -a
  518  git status
  519  touch a.py
  520  ls
  521  git status
  522  git add a.py
  523  git status
  524  git commit -m "added new file a.py" .
  525  git status
  526  ls
  527  git log
  528  vi a.py
  529  git status
  530  git add a.py
  531  git status
  532  touch b.py
  533  vi b.py
  534  git status
  535  git add b.py
  536  git status
  537  git commit -m "added b.py and updated the logic in a.py" .
  538  git status
  539  git log
  540  code .
  541  git status
  542  git add b.py
  543  git status
  544  git status
  545  git commit -m "added new logic to b.py" b.py
  546  git log
  547  git status
  548  git status
  549  git log
  550  touch a.py
  551  ls
  552  vi a.py
  553  git status
  554  git add a.py
  555  git status
  556  git status
  557  git status
  558  git add .
  559  git commit -m "updated a.py"
  560  git status
  561  clear
  562  git branch feature/123-reel
  563  git branch
  564  git switch feature/123-reel
  565  git branch
  566  ls
  567  touch reel.py
  568  vi reel.py
  569  git status
  570  git add reel.py
  571  git status
  572  git commit -m "reel feature added"
  573  git log
  574  git log --oneline
  575  git switch master
  576  git log --oneline
  577  ls
  578  git switch feature/123-reel
  579  ls
  580  git log --oneline
  581  vi reel.py
  582  git add .
  583  git commit -m "added new logic in reel.py"
  584  git log --oneline
  585  git switch master
  586  ls
  587  git log --oneline
  588  git merge feature/123-reel
  589  ls
  590  cat reel.py
  591  git log --oneline
  592  cd ..
  593  ls
  594  mkdir gitprac2
  595  cd gitprac2/
  596  git init
  597  touch a.py
  598  git add .
  599  git commit -m "new file a.py"
  600  git log
  601  git branch feature/reel
  602  git branch
  603  git switch feature/reel
  604  ls
  605  git log
  606  vi a.py
  607  git add .
  608  git commit -m "updated a"
  609  git log
  610  git switch master
  611  git log
  612  cat a.py
  613  touch b.py
  614  git add .
  615  git commit -m "added b"
  616  git log
  617  git switch feature/reel
  618  git log
  619  touch c.py
  620  git add .
  621  git commit -m "added c"
  622  git log
  623  git switch master
  624  touch d.txt
  625  git add .
  626  git commit -m "added d"
  627  git log --oneline
  628  git switch feature/reel
  629  git log --oneline
  630  git branch master
  631  git switch master
  632  git merge featur/reel
  633  git merge feature/reel
  634  ls
  635  git log --oneline
  636  git log
  637  git branch
  638  git branch dev1
  639  git branch dev2
  640  git branch
  641  git switch dev1
  642  gils
  643  ls
  644  touch e.txt
  645  git add e.txt
  646  git commit -m "added by dev1 branch"
  647  git log
  648  ls
  649  git switch dev2
  650  ls
  651  touch f.txt
  652  git add .
  653  git commit -m "made by dev2"
  654  git log --oneline
  655  git switch master
  656  git merge -s octopus dev1 dev2
  657  ls
  658  git log -neline
  659  git log -oneline
  660  git log --oneline
  661  history
  662  git branch dev3
  663  git switch dev3
  664  vi b.py
  665  git add b.py
  666  git commit -m "updated"
  667  vi b.py
  668  git add .
  669  git commit -m "new commit"
  670  vi b.py
  671  git add .
  672   git commit -m "new commit 123"
  673  git log --oneline
  674  cat b.py
  675  git switch master
  676  cat b.py
  677  git merge --squash dev3
  678  git commit -m "fixed the bug"
  679  cat b.py
  680  git log --oneline
  681  git branch
  682  git branch dev4
  683  touch l.txt
  684  git add .
  685   git commit -m "added new file"
  686  git log --oneline
  687  git switch dev4
  688  git log --oneline
  689  git switch master
  690  touch kkk.txt
  691  git add .
  692  git commit -m "added kkk.txt"
  693  git log --oneline
  694  git switch dev4
  695  git log --oneline
  696  git cherry-pick 26a9130
  697  ls
  698  git log --oneline
  699  git remote -v
  700  clear
  701  git remote add origin git@github.com:Trainersudhanshu/gfg40testrepo1.git
  702  git remote -v
  703  git switch master
  704  git log
  705  git config -l
  706  git config user.name
  707  clear
  708  git config user.name
  709  git config user.email
  710  git config user.name "sp"
  711  git config user.name
  712  git config user.name "Trainersudhanshu"
  713  git config user.name
  714  git log --oneline
  715  git push
  716  git remote -v
  717  git push -u origin master
  718  git switch dev3
  719  git push -u origin dev3
  720  git switch master
  721  git branch feature/story
  722  git switch feature/story
  723  touch monkey.txt
  724  vi monkey.txt
  725  git add .
  726  git commit -m "added monkey"
  727  git push -u origin feature/story
  728  git remote -v
  729  git switch master
  730  git log --oneline
  731  ls
  732  git pull
  733  git log --oneline
  734  ls
  735  git log --oneline
  736  git fetch
  737  git log --oneline
  738  git status
  739  git merge
  740  git log --oneline
  741  ls -a
  742  history
