# Slack Gist Notifier

Github Enterprise ユーザー向け。新しいgistが投稿されたら通知します。cronを使うと便利。  
For Github Enterprise Users. Post to slack when created new gist. It is convenient to use cron. 

## How to use

### setup

```
cp sample.envrc .envrc
direnv edit .
bin/slack-gist-notifier update
```

### check new gist and notify

```
bin/slack-gist-notifier update --notify
```
