# ベースイメージ
FROM continuumio/anaconda3:2024.10-1

# 作業ディレクトリ
WORKDIR /app

# パッケージインストール
RUN conda install -y numpy pandas matplotlib seaborn scipy scikit-learn jupyterlab && \
    conda clean -afy

# ポート公開
EXPOSE 8888

# 起動時コマンド
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--no-browser", "--allow-root"]