# datecal

![image](image.png)

## 概要
- Gauche で、日時の計算を行うためのモジュールです。


## インストール方法
- datecal.scm を Gauche でロード可能なフォルダにコピーします。  
  (例えば (gauche-site-library-directory) で表示されるフォルダ等)


## 使い方
- 以下を実行します。
  ```
    (use datecal)
  ```
  以後、本モジュールが使用可能になります。

  使用可能な変数を以下に示します。
  - `date-calc-comparator`
    - 日時 (`<date>` クラス) 計算用の比較器です。

  - `time-calc-comparator`
    - 時間 (`<time>` クラス) 計算用の比較器です。

  使用可能な手続きを以下に示します。
  - `(date-diff date1 date2 ...)`
    - 日時 (`<date>` クラス) を減算します。  
      戻り値は、時間 (`<time>` クラス) になります。  
      戻り値の時間のタイプは、time-duration になります。

  - `(date-add-time date1 time1 time2 ...)`
    - 日時 (`<date>` クラス) に 時間 (`<time>` クラス) を加算します。  
      戻り値は、日時 (`<date>` クラス) になります。  
      加算する時間のタイプは、time-duration である必要があります。

  - `(date-sub-time date1 time1 time2 ...)`
    - 日時 (`<date>` クラス) から 時間 (`<time>` クラス) を減算します。  
      戻り値は、日時 (`<date>` クラス) になります。  
      減算する時間のタイプは、time-duration である必要があります。

  - `(time-add time1 time2 ...)`
    - 時間 (`<time>` クラス) を加算します。  
      戻り値は、時間 (`<time>` クラス) になります。  
      time2 以降の加算する時間のタイプは、time-duration である必要があります。

  - `(time-sub time1 time2 ...)`
    - 時間 (`<time>` クラス) を減算します。  
      戻り値は、時間 (`<time>` クラス) になります。  
      time2 以降の減算する時間のタイプは、time-duration である必要があります。


## 使用例
1. [linseg](https://github.com/Hamayama/lineseg) モジュール の
   [サンプルプログラム](https://github.com/Hamayama/lineseg/blob/main/sample-date-time.scm) を、
   参照ください。  
   (日時の範囲を設定して、勤務時間を計算するサンプルです)


## 環境等
- OS
  - Windows 10 (version 21H2) (64bit)
- 言語
  - Gauche v0.9.12

## 履歴
- 2022-9-19  v1.00 (初版)


(2022-9-19)
