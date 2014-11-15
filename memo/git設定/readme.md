
.DS_Storeを全部消す  

```
find . -name .DS_Store -print0 | xargs -0 git rm
git commit -m "remove all .DS_Store"
git push origin master
```


