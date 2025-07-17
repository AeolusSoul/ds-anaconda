FROM continuumio/anaconda3:2024.10-1

WORKDIR /workspace

COPY environment.yml /workspace/

RUN conda env create -f environment.yml && conda clean -afy

ENV PATH /opt/conda/envs/ds-anaconda/bin:$PATH

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
