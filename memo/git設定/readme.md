
.DS_Storeを全部消す  

```
find . -name .DS_Store -print0 | xargs -0 git rm
git commit -m "remove all .DS_Store"
git push origin master
```


無視ファイルリスト  

```
.gitignore を追加  
対象のファイルを記述する。  

再起的に有効になる。配下のディレクトリに.gitignoreがあれば、
そちらが優先。

```


