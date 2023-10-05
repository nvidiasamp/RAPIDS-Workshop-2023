# NVAITC SAMP JP RAPIDS Workshop
このリポジトリには、NVIDIA AI Technogloy Center(NVAITC)JapanのStudent Ambassador ProgramのRAPIDSワークショップのリソースが含まれています。

## Overview
### ワークショップの目的と目標
#### 目的
  1.GPU, RAPIDSの基本概念および初歩的な使い方に関する知識の共有 \
  2.滋賀大学の共有サーバ「KAMONOHASHI」の利用方法の共有 \
  3.デモンストレーションを通じたRAPIDSに関する具体的な理解と，参加者の実務および研究に役立つようなインスピレーションの促進
#### 目標
  1.GPU, RAPIDS, KAMONOHASHIの基本的な知識を提供し，GPUを活用したデータサイエンス技術に関する知識を増やす \
  2.RAPIDSを活用した，データ処理のスピードとスケーラビリティ向上スキルの習得

### 本ワークショップで取り扱うRAPIDSのツール
<img width="752" alt="image" src="https://github.com/nvidiasamp/RAPIDS-Workshop/assets/54016969/6dcbe120-0e50-4a4a-a645-c04da0cc952b">

上の図の番号が，アジェンダの番号に対応しています。 

5. Dask-cuDFを活用したスケーラブルなデータ処理の実践（上野）: cuDF, Dask, Pandas 
6. Plotly-Dash+RAPIDSによる人口推移の可視化（上野）: cuxfilter, Dash, cuDF 
7. cuMLのご紹介 \
  7.1. cuMLを利用したクラスタリングとRFM分析によるカスタマーセグメンテーション（上野）: Scikit-learn, cuML \
  7.2. XGBoostを用いた住宅価格の予測（嘉悦）: Scikit-learn, cuML 

## Workshop Agenda
アジェンダ（開催日時：2023/10/6）
- [ ] 1. オープニング
- [ ] 2. 決め手はAI!? NVIDIA Omniverse が実現する産業メタバースの世界（基調講演，NVIDIA 梅澤）
- [ ] 3. 猫でもわかるGPU（嘉悦）
- [ ] 4. 初めてのRAPIDS活用（嘉悦）

～休憩～

- [ ] 5. Dask-cuDFを活用したスケーラブルなデータ処理の実践（上野）
- [ ] 6. Plotly-Dash+RAPIDSによる人口推移の可視化（上野）
  - デモで使用するリポジトリ:[Ueno ver. - plotly-dash-rapids-census-demo](https://github.com/uenotakato/plotly-dash-rapids-census-demo/tree/main)
- [ ] 7. cuMLのご紹介
- [ ] 7.1. cuMLを利用したクラスタリングとRFM分析によるカスタマーセグメンテーション（上野）
- [ ] 7.2. XGBoostを用いた住宅価格の予測（嘉悦）
- [ ] 8. クロージング

## インストールとセットアップのガイド
### ソフトウェアの要件 
プログラミング言語：Python \
フレームワークおよびライブラリ: 
  -  Python: 3.8
  -  LINUX_VERSION: ubuntu18.04
  -  CUDA_VERSION: 11.0
  -  RAPIDS: 22.08
  -  ベースイメージ: [rapidsai/rapidsai](https://catalog.ngc.nvidia.com/orgs/nvidia/teams/rapidsai/containers/rapidsai)
  -  依存性
  ```environment_for_docker.yml
    - cuxfilter=22.08.00
    - dash=2.5.1
    - dash-html-components=2.0.0
    - dash-core-components=2.0.0
    - dash-daq=0.5.0
    - dash-bootstrap-components=1.2.0
  ```
そのほかの情報については，Dockerfile，environtemnt_for_docker.ymlを参照してください。

### ハードウェアの要件
- CUDA: 11.0
- NVIDIA driver: 450.236.01

### セットアップガイド
#### Docker
```
docker build -t rapids_workshop .
docker run --gpus all rapids_workshop
```

## Collaborators
- 上野孝⽃(Shiga Universtiy)
- 嘉悦里奈子(Shiga Universtiy)
- Vincent Gong(NVIDIA)

## License
- Apache 2.0 (same as RAPIDS)
