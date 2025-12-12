# MicrosoftCourses.sh

Microsoft Courses.

## update

Projects will be cloned from https://github.com/microsoft/<Lesson For Beginners> at first.

```shell
> bash MicrosoftCourses.sh update 
Calling git_pull, Learning All.

已经是最新的。
git pull ok.
update ML-For-Beginners ok.

正克隆到 'AI-For-Beginners'...
remote: Enumerating objects: 27796, done.
remote: Counting objects: 100% (447/447), done.
remote: Compressing objects: 100% (104/104), done.
remote: Total 27796 (delta 386), reused 343 (delta 343), pack-reused 27349 (from 4)
接收对象中: 100% (27796/27796), 980.60 MiB | 9.32 MiB/s, 完成.
处理 delta 中: 100% (11748/11748), 完成.
正在更新文件: 100% (12606/12606), 完成.
已经是最新的。
git pull ok.
update AI-For-Beginners ok.

正克隆到 'Data-Science-For-Beginners'...
remote: Enumerating objects: 34197, done.
remote: Counting objects: 100% (2199/2199), done.
remote: Compressing objects: 100% (696/696), done.
remote: Total 34197 (delta 1605), reused 1503 (delta 1503), pack-reused 31998 (from 4)
接收对象中: 100% (34197/34197), 1.22 GiB | 9.31 MiB/s, 完成.
处理 delta 中: 100% (11957/11957), 完成.
正在更新文件: 100% (14504/14504), 完成.
已经是最新的。
git pull ok.
update Data-Science-For-Beginners ok.

All learning ok.


```

## start

Install docsify-cli at first.

```shell
> npm i docsify-cli -g
⠇
⠏
npm warn deprecated docsify-server-renderer@4.13.1: docsify-server-renderer 4.x and below is no longer supported while we investigate the future of SSR and SSG for Docsify
⠙
⠸

added 207 packages in 21s

17 packages are looking for funding
  run `npm fund` for details
npm notice
npm notice New minor version of npm available! 11.4.2 -> 11.7.0
npm notice Changelog: https://github.com/npm/cli/releases/tag/v11.7.0
npm notice To update run: npm install -g npm@11.7.0
npm notice

```

Try the Lesson at http://localhost:3000.

```shell
> bash MicrosoftCourses.sh start ML-For-Beginners
Calling docsify_serve, Learning ML-For-Beginners.


Serving /path/to/your/dir/Data/github.com/microsoft/ML-For-Beginners now.
Listening at http://localhost:3000


```

