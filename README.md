## Dartfmt の有効化

エディタの設定で有効化する.

### InteliJ & AndroidStudio

参照: [https://qiita.com/kazuki229/items/bb26e50825cf8a739888](https://qiita.com/kazuki229/items/bb26e50825cf8a739888)

### VScode

参照(未確認): [https://kitoko552.hatenablog.com/entry/20180908/1536334746](https://kitoko552.hatenablog.com/entry/20180908/1536334746)

拡張機能: [Flutter], [Flutter Widget Snippets]

## ファイル構成

```
assets
└──images                                  #画像を置く場所

lib
├── app.dart
├── router.dart                         #ルータ
├── run.dart                            #実行コード
├── theme.dart                          #アプリ全体のテーマ
├── state/                              #ページの状態を管理するモデルを置く場所(StateNotifierのState)
│   ├── states.dart                     #export用
├── pages/                              #ページを置く場所
│   ├── pages.dart                      #export用
├── repositories/                       #APIを叩くコードを置く場所
│   ├── repositories.dart               #export用
├── utils/                              #アプリ全体で使う機能など
│   └── utils.dart                      #export用
└── widgets/                            #アプリ全体で使いまわせるWidget(ボタンなど)を置く場所
    └── widgets.dart                    #export用
```

## 注意点

### State

#### 実装方法など

アプリの状態は StateNotifier の State で注入する方針にしています. 詳しくは実装済みの state を見るとわかりますが(state/stores 以下が参考になるかも),
State クラスで保持する状態のフィールドを定義し, 状態変化は State に対応する Controller クラスのメソッドを通じて行います。
状態が必要なときは context から取ってきてください.

また, State(と一部 entity)作成・変更時にコード生成が必要になります. プロジェクトのルートで以下のコマンドを走らせてください.

```
$ flutter pub pub run build_runner build --delete-conflicting-outputs
```

これによって State(Entity)クラスのフィールドに対応した自動生成ファイルが作成されます.
デフォルトだと Git 管理から外れていると思うので Add して Push してください. CI を動かすのに必要です.

参考: https://qiita.com/karamage/items/4b1aff984b1af7541b73

### theme.dart

アプリ全体で使うテーマを定義しています.　原則アプリで使うテーマは統一されるはずなので必要な際はここのコードを編集してください.
既存テーマの一部を変更して適用したい場合は`copyWith()`メソッドが便利です.

### /widgets

アプリ全体で使いまわせる Widget を定義しています.　ここに定義してある Widget で機能が足りない場合は,　
コンストラクタに optional な引数を追加して拡張してください.

### 命名の注意

クラス名
(先頭大文字・大文字区切り)
`UpperCamelCase`

プロパティ・関数(メソッド)名
(先頭小文字・大文字区切り)
`lowerCamelCase`

ファイル名・ファルダ・ライブラリ・パッケージ
(全て小文字・アンダーバー区切り)
`lowercase_with_underscores`
